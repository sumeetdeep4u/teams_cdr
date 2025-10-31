delete from users where uid > 7;
delete from users_roles where uid not in (select uid from users);
delete from persona where uid not in (select uid from users);
delete from persona_periodo;
delete from calendario;
delete from claves;
delete from concepto;
delete from conmutador;
delete from consolidado_conceptos_facturados;
delete from destino_permitido;
delete from detalle_tarifa;
delete from edificio;
delete from envio;
delete from periodo;
delete from presupuesto;
delete from proveedor;
delete from periodo_siana;
delete from edificio;
delete from extension;
delete from horario;
delete from inventario;
delete from inventario_periodo;
delete from facturacion_dia_ccosto;
delete from facturacion_dia_usuario;
delete from facturacion_marcados_mes;
delete from facturacion_mes_ccosto;
delete from facturacion_mes_ccosto_nodo;
delete from facturacion_mes_ccosto;
delete from facturacion_mes_ccosto_nodo;
delete from facturacion_mes_usuario;
delete from llamadas;
delete from llamadas_log;
delete from llamadas_siana;
delete from llamadas_siana_cc;
delete from llamadas_siana_dia;
delete from llamadas_siana_nodo;
delete from llamadas_siana_periodo;
delete from llamadas_siana_rubro;
delete from llamadas_siana_rubro_cc;
delete from llamadas_siana_rubro_nodo;
delete from llamadas_siana_rubro_periodo;
delete from mensajes;

delete from rubros_dia_ccosto;
delete from rubros_dia_usuario;
delete from rubros_mes_ccosto;
delete from rubros_mes_usuario;
delete from rubro_siana;
delete from rubro_siana_permitido;
delete from resumen_siana;
delete from resumen_siana_cc;


delete from tarifa where tarifa_id > 1;
delete from tarifa_rubro;
delete from tarifa_rubro_base where tarifa_id > 1;
delete from troncal;
delete from troncal_tarifa;
delete from usuario_ccosto_periodo;

--Deletes relaciones drupal

