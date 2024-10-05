drop table videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (0123,'God of War','juego de guerra',9)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (0124,'La leyenda de Zelda','Derrotar a Ganon y restaurar la paz',8)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (0125,'Contra','guerra militar',9)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (0126,'Final Fantasy','DUn juego de rol con un sistema de combate en tiempo real',9)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (0127,'Dios de la guerra','Sigues a Kratos, el dios de la guerra, y su hijo Atreus en una emocionante aventura',9)

insert into videojuegos(codigo,nombre,valoracion)
values (0128,'Solitario',9)

insert into videojuegos(codigo,nombre,valoracion)
values (0129,'PinBall',8)

insert into videojuegos(codigo,nombre,valoracion)
values (0130,'PacMan',10)

select * from videojuegos

select * from videojuegos
where nombre like 'C%'

select  valoracion, nombre from videojuegos
where valoracion
between '9' and '10'

select * from videojuegos
where descripcion is null

update videojuegos set descripcion='Mejor puntuado'
where valoracion > '9'

delete from videojuegos
where valoracion < '7'

select * from videojuegos 
where nombre like '%C%' or valoracion = '7'

select * from videojuegos
where codigo between '3' and '7' or valoracion = '7'

select * from videojuegos
where (descripcion like '%guerra%' and valoracion > '8' and nombre like 'C%')
or(valoracion > '8' and nombre like 'D%')

