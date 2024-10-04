drop table productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)
insert into productos(codigo,nombre,descripcion,precio,stock)
values (0120,'ponds','crema para la cara',4.5,6)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (0121,'savital','shampoo para el cabello',5.5,8)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (0122,'protex','javon de baño',2.5,10)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (0124,'ego','gel para el cabello',1.5,6)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (0125,'gillete','crema para afetira',7.5,5)

insert into productos(codigo,nombre,precio,stock)
values (0126,'labial',1.75,7)

insert into productos(codigo,nombre,precio,stock)
values (0127,'tinte',3.75,9)

select * from productos

select * from productos
where nombre like 'Q'

select * from productos
where descripcion is null

select * from productos
where precio
between '2' and '3'

update productos set stock=0
where descripcion is null

delete from productos
where descripcion is null



