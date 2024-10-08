drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10)not null,
	fecha date,
	hora time,
	constraint registros_entrada_pk primary key(codigo_registro)
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7654,'0602706665','2024-09-24','09:30')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7655,'0602706345','2024-09-24','10:30')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7656,'0602456665','2024-09-24','10:35')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7657,'1722706665','2024-09-24','10:40')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7658,'0602706574','2024-09-24','10:45')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7659,'0617206665','2024-09-24','11:10')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7660,'0602717365','2024-09-24','11:20')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7661,'0602706345','2024-09-24','11:30')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7662,'0602706665','2024-09-24','11:40')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (7663,'0602706987','2024-09-24','11:50')

select cedula_empleado, fecha, hora  from registros_entrada

select * from registros_entrada
where hora
between '7:00' and '14:00'

select * from registros_entrada
where hora > '8:00'

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (7664, '0602706987', '2024-08-15', '10:30');

update registros_entrada set cedula_empleado = '082345679'
where extract (month from fecha) = 8

delete from registros_entrada
where extract (month from fecha) = 7

select * from registros_entrada
where extract(month from fecha)=9 or cedula_empleado like '17%'

select * from registros_entrada
where extract(month from fecha)=8
and cedula_empleado like '1%'
and hora between '08:00' and '12:00'

select * from registros_entrada
where (extract(month from fecha)=8 and cedula_empleado like '17%' and hora between '08:00' and '12:00')
or (extract(month from fecha)= 9 and cedula_empleado like '08%' and hora between '09:00' and '13:00')

