<?php
$anio=2018; $mes=5;
  $s = db_select('periodo_siana','p');
  $s->fields('p');
  $s->condition('p.fecha',"$anio-$mes-01",'<');
  $s->orderBy('fecha','desc');
  $s->range(0, 1);
  $r = $s->execute()->fetch();
print_r($r);  
  //Si hay periodos anteriores consultamos que líneas telefonicas no estaban en ese periodo de las que si tenemos ahora.
  if($r) {
    
    //Consultamos todas las lineas del periodo anterior.
    $tpa = db_select('inventario_periodo','p');
    $tpa->fields('p');
    $tpa->condition('p.anio',$r->anio);
    $tpa->condition('p.mes',$r->mes);
    $atpa = $tpa->execute()->fetchAllAssoc('tel');
    $aktpa = array_keys($atpa);
print_r($aktpa);
    if(count($aktpa)) {
      //Consultamos todas las lineas que no existian en el periodo anterior que si existen en el actual
      $tpa = db_select('inventario_periodo','p');
      $tpa->fields('p');
      $tpa->condition('p.anio',$anio);
      $tpa->condition('p.mes',$mes);
      $tpa->condition('p.tel',$aktpa,'NOT IN');
      $atpan = $tpa->execute()->fetchAllAssoc('tel');
      $aktpan = array_keys($atpan);
print_r($aktpan);
    }
  }
