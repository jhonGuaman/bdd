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

select * from registros_entrada