select * from estudiantes
select * from profesores
select AVG(cast(saldo as numeric))
from cuentas;

select sum(cast(saldo as numeric))
from cuentas;


select cli.cedula, sum(monto)
from compras co,clientes cli
where co.id_compra = cli.comprae_id_compra
group by(cli.comprae_id_compra,cli.cedula)

select count(fecha_compra) from compras
where fecha_compra='2023-10-11'

select es.codigo_profesor, count(*) from estudiantes es,profesores pro
group by (codigo_profesor)

SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio
FROM estudiantes;

select * from productos

select max(precio)
from productos

select sum(precio)
from productos

select * from plataformas
select * from videojuegos

select p.codigo_videojuego,count(*)from plataformas p, videojuegos v
where p.id_plataforma=v.codigo
group by (p.codigo_videojuego)

select ROUND(AVG(valoracion),2)as numeric
from videojuegos

select * from registros_entrada
select * from empleado

select em.codigo_empleado,count(*)from registros_entrada re ,empleado em
where em.codigo_empleado= re.codigo_empleado
group by em.codigo_empleado


select min(fecha), max(fecha) 
from registros_entrada






