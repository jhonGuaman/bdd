SELECT cu.numero_cuenta, us.nombre 
FROM cuentas cu
INNER JOIN usuario us ON cu.numero_cuenta = us.cuenta_numero_cuenta
WHERE cu.saldo > '100'::money 
AND cu.saldo < '1000'::money;



SELECT *
FROM cuentas cu
INNER JOIN usuario us ON cu.numero_cuenta = us.cuenta_numero_cuenta
WHERE cu.fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21';

select nombre,apellido
from clientes
where cedula like '%7%'

SELECT nombre, apellido, cedula
FROM clientes
WHERE cedula = (SELECT cedula FROM clientes WHERE nombre = 'Monica');

select pro.codigo, es.nombre,es.apellido
From profesores pro, estudiantes es
where pro.codigo=es.codigo_profesor
and es.apellido like '%n%'

select * From 
estudiantes es,profesores pro
where pro.codigo=es.codigo_profesor
and pro.codigo=123

select pro.nombre, pro.stock,ven.cantidad from
productos pro,ventas ven
where pro.codigo=ven.codigo_producto
and (pro.nombre like '%m%'or pro.descripcion =null)

select pro.nombre, pro.stock from
productos pro,ventas ven
where pro.codigo=ven.codigo_producto
and ven.cantidad = 5

SELECT v.nombre AS nombre_videojuego, 
       v.descripcion AS descripcion_videojuego, 
       v.valoracion, 
       v.nombre AS nombre_plataforma
FROM videojuegos v, plataformas p
where v.codigo= p.codigo_videojuego
and (v.descripcion LIKE '%Guerra%' AND v.valoracion > 7)
   OR (v.nombre LIKE 'C%' AND v.valoracion > 8 AND v.nombre LIKE 'D%');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values
('12345','Max',125)

select p.id_plataforma,p.nombre_plataforma,p.codigo_videojuego from plataformas p, videojuegos v
where v.codigo= p.codigo_videojuego
and v.codigo=123

SELECT em.codigo_empleado, re.fecha, re.hora
FROM registros_entrada re
INNER JOIN empleado em ON re.codigo_empleado = em.codigo_empleado
WHERE (
    -- Primera condición
    (re.fecha BETWEEN '2023-08-31' AND '2023-09-01')
    OR (CAST(em.codigo_empleado AS TEXT) LIKE '%17%' AND re.hora BETWEEN '08:00' AND '11:20')
)
AND (
    -- Segunda condición
    (re.fecha BETWEEN '2023-10-06' AND '2023-10-20')
    AND CAST(em.codigo_empleado AS TEXT) LIKE '08%'
    AND re.hora BETWEEN '09:00' AND '13:00'
);

select re.codigo_registro,em.nombre
from empleado em,registros_entrada re
where em.codigo_empleado=re.codigo_empleado
and re.codigo_empleado='2201'


select * from registros_entrada
select * from empleado