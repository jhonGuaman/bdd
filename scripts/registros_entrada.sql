drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10)not null,
	fecha date,
	hora time,
	constraint registros_entrada_pk primary key(codigo_registro)
)