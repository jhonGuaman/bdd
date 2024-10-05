drop table estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1723726372','Jhon','Guaman','fhjs@gmail.com','1993-03-28')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1723346372','Juan','Lima','juus@gmail.com','1993-04-29')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1343346372','Maria','Duque','maria@gmail.com','1987-05-23')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1723345772','Diego','Ruiz','diego@gmail.com','1993-05-16')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1723346092','Ruth','Cajas','ruth@gmail.com','2000-11-15')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('0623346372','Carolina','Torres','carolina@gmail.com','1900-08-24')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1733063723','Juan','Pilco','juan@gmail.com','1993-11-25')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1723116372','Adrian','Lopez','adrian@gmail.com','1992-05-10')

select * from estudiantes

select nombre, cedula from estudiantes

select nombre,cedula from estudiantes
where cedula like '17%'

select nombre from estudiantes
where nombre like 'A%'

update estudiantes set apellido='Hernandez'
where cedula like '17%'

delete from estudiantes
where cedula like '%05'

select nombre, apellido from estudiantes
where nombre like 'M%' or apellido like '%Z'

select nombre from estudiantes
where cedula like '%32%' and cedula like '18%'

select nombre, apellido from estudiantes
where cedula like '%06' or cedula like '17%'



