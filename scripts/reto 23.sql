-- Tabla de usuarios
CREATE TABLE usuario (
    cedula CHAR(5) PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    tipo_cuenta VARCHAR(20),
    limite_credito DECIMAL(10, 5)
);

alter table usuario
add column cuenta_numero_cuenta char(5) not null

alter table usuario
add constraint  usuario_cuenta_fk
foreign key(cuenta_numero_cuenta)
references cuentas(numero_cuenta)


delete from usuario
select * from usuario
alter table usuario
add column cedula_propietario char(5) not null

CREATE TABLE cuentas (
    numero_cuenta CHAR(5) PRIMARY KEY,
    cedula_propietario CHAR(5),
    fecha_creacion DATE,
    saldo MONEY
)

select * from cuentas
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito,cuenta_numero_cuenta)
VALUES
('00001', 'Juan', 'Perez', 'Ahorros', 500.00, 'C001'),
('00002', 'Maria', 'Lopez', 'Corriente', 300.00, 'C004'),
('00003', 'Carlos', 'Garcia', 'Ahorros', 400.00, 'C001'),
('00004', 'Ana', 'Martinez', 'Corriente', 200.00, 'C006'),
('00005', 'Luis', 'Torres', 'Ahorros', 450.00, 'C003');


INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES
('C001', '00001', '2022-08-21', '150'),
('C002', '00002', '2022-09-10', '300'),
('C003', '00003', '2022-12-05', '400'),
('C004', '00004', '2023-01-15', '200'),
('C005', '00005', '2023-02-22', '1000'),
('C006', '00001', '2023-03-30', '120'),
('C007', '00002', '2023-05-19', '650'),
('C008', '00003', '2023-06-22', '500'),
('C009', '00004', '2023-08-05', '850'),
('C010', '00005', '2023-09-15', '300');

create table clientes(
    cedula char(10),
    nombre varchar(50) not null,
    apellido varchar(50) not null,
	constraint clientes_pk primary key(cedula)
)

create table compras(
    id_compra int,
    cedula char(10) not null,
    fecha_compra date not null,
	monto decimal(10,2)not null,
	constraint compras_pk primary key(id_compra)
)

alter table clientes
add column comprae_id_compra int not null

alter table clientes
add constraint  clientes_compras_fk
foreign key(comprae_id_compra)
references compras(id_compra)

INSERT INTO clientes (cedula,nombre,apellido,comprae_id_compra )
VALUES 
('1724463425', 'Jhon', 'Guaman','0123'),
('0584733625', 'Maria','Lopez','0124'),
('1827336453', 'Jessica', 'Hunda','0123'),
('9867756473', 'Monica', 'Paez','0123'),
('0609487776', 'Diego', 'Salas','0123'),
('1724463527', 'Maylin', 'Pazos','0124'),
('0602749998', 'Humberto', 'Aguilas','0125'),
('1734463523', 'Dolores', 'Sarmiento','0123'),
('0603948374', 'Juana', 'Diaz','0126')

select * from clientes
INSERT INTO compras (id_compra,cedula,fecha_compra,monto)
VALUES 
('0123', '0602706665', '2024-09-24','10.4'),
('0124', '1724453627', '2024-09-22','15.5'),
('0125', '1725564735', '2024-09-22','12.6'),
('0126', '1724463425', '2024-09-24','20.4')


create table ventas(
    id_venta int,
    codigo_producto int not null,
    fecha_venta date not null,
	cantidad int not null,
	constraint ventas_pk primary key(id_venta)
)

alter table ventas
add constraint  ventas_productos_fk
foreign key(codigo_producto)
references productos(codigo)

select * from productos
select * from ventas

INSERT INTO ventas (id_venta,codigo_producto,fecha_venta,cantidad)
VALUES 
('0987', '123', '2024-09-12',5),
('23434', '121', '2024-09-10',7),
('2345', '122', '2024-09-10',15),
('3654', '123', '2024-09-11',3)

create table plataformas(
    id_plataforma int,
    nombre_plataforma varchar(50) not null,
    codigo_videojuego int not null,
	constraint plataformas_pk primary key(id_plataforma)
)

alter table plataformas
add constraint  plataformas_videojuegos_fk
foreign key(codigo_videojuego)
references videojuegos(codigo)

select * from videojuegos

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values 
('140','Candy','Romper caramelos','8')
select * from estudiantes
delete from estudiantes
alter table estudiantes
add column codigo_profesor int not null

create table profesores(
    codigo int,
    nombre varchar(50) not null,

	constraint profesores_pk primary key(codigo)
)

insert into profesores(codigo,nombre)
values
('125', 'Jose')


insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values
('0603526375', 'Milton', 'Torres','mt@gmial.com','1993-03-28','125')

create table empleado(
    codigo_empleado int not null,
    nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)
delete from registros_entrada
alter table registros_entrada
add column codigo_empleado int not null

alter table registros_entrada
add constraint registros_entrada_empleado
foreign key (codigo_empleado)
references empleado(codigo_empleado)

select * from registros_entrada

insert into empleado(codigo_empleado,nombre,fecha,hora)
values('2203','Milton','2023-10-15','09:30')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values
('12347','0602703354','2023-08-16','08:15','2203'),
('12348','1725546352','2023-08-16','09:25','2202'),
('12349','1725342634','2023-09-17','10:35','2203'),
('12350','1726473643','2023-10-14','11:15','2202'),
('12351','0603645345','2023-11-13','12:14','2201'),
('12352','0602635467','2023-12-10','09:45','2202'),
('12353','1725364756','2023-08-09','12:20','2203'),
('12354','0604536473','2023-09-25','11:15','2201');

create table persona(
	cedula char(10) not null,
    nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_nacimienot time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key(cedula)
)

create table prestamo(
cedula char(10),
monto money,
fecha_prestamo date,
hora_prestamo time,
garante varchar(40),
constraint prestamo_pk primary key(cedula)
)
alter table prestamo
add constraint prestamo_persona
foreign key (cedula)
references persona(cedula)

select * from persona

INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimienot, cantidad_ahorrada, numero_hijos)
VALUES
('1734463523', 'Luis', 'Torres', 1.75, '1985-12-14', '10:00', 24000, 4),
('1724463527', 'Ana', 'Martinez', 1.68, '1992-11-25', '11:45', 12000, 2),
('0609487776', 'Carlos', 'Ramirez', 1.82, '1987-01-30', '09:15', 19000, 1),
('0602749998', 'Sofia', 'Jimenez', 1.60, '1995-03-22', '07:30', 13000, 0),
('1725364756', 'Hector', 'Vargas', 1.78, '1990-08-18', '16:00', 17000, 3),
('0604536473', 'Monica', 'Gomez', 1.65, '1983-10-12', '14:30', 20000, 2),
('0602635463', 'Dolores', 'Sarmiento', 1.72, '1978-07-06', '12:45', 26000, 5);

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES
('1724435243', 500, '2024-01-15', '09:00', 'Garente1'),
('1827364521', 750, '2024-02-10', '10:30', 'Garente2'),
('0603948374', 300, '2024-03-05', '11:45', 'Gearente3'),
('1734463523', 600, '2024-04-20', '08:15', 'Garente4'),
('1724463527', 450, '2024-05-25', '14:30', 'Garente5'),
('0609487776', 950, '2024-06-18', '13:00', 'Garente6'),
('0602749998', 700, '2024-07-14', '16:45', 'Garente7'),
('1725364756', 850, '2024-08-08', '12:00', 'Garente8'),
('0604536473', 650, '2024-09-02', '15:15', 'Garente9'),
('0602635463', 400, '2024-10-10', '10:00', 'Garente10');

create table banco(
codigo_banco int,
codigo_transaccion int,
detale varchar(100),
constraint banco_pk primary key(codigo_banco)
)

alter table banco
add constraint banco_transacciones
foreign key (codigo_transaccion)
references transacciones(codigo)

select * from transacciones





