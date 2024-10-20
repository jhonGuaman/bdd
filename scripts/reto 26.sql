create table usuarios(
	id_usuarios int,
	nombre varchar(25)not null,
	apellido varchar(25)not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key(id_usuarios)
)

create table grupo(
	id_grupo int,
	nombre varchar(25)not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key(id_grupo)
)
create table usuarios_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuarios_fk foreign key(us_id)references usuarios(id_usuarios),
	constraint grupo_fk foreign key(gr_id)references grupo(id_grupo),
	constraint usuarios_grupo_pk primary key(us_id,gr_id)
)
create table habitaciones(
	habitacion_numero int,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key(habitacion_numero)
)
create table huespedes(
	id_huspedes int,
	nombre varchar(45)not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key(id_huspedes)
)
create table reservas(
	inicio_fecha date,
	fin_fecha date,
	inf_habita varchar(50),
	inf_huesp varchar(50),
	habitacion int not null,
	huespedes_id int not null,
	constraint habitaciones_fk foreign key(habitacion)references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key(huespedes_id)references huespedes(id_huspedes),
	constraint reservas_pk primary key(habitacion,huespedes_id)
)

CREATE TABLE ciudad (
    id INT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL
)

CREATE TABLE municipio (
    id INT PRIMARY KEY,
    nombre VARCHAR(45),
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(id)
)
CREATE TABLE proyecto (
    id INT PRIMARY KEY,
    proyecto VARCHAR(50) NOT NULL,
    monto MONEY NOT NULL,
    fecha_inicio DATE,
    fecha_entrega DATE
)
CREATE TABLE proyecto_municipio (
    municipio_id INT NOT NULL,
    proyecto_id INT NOT NULL,
    PRIMARY KEY (municipio_id, proyecto_id),
    FOREIGN KEY (municipio_id) REFERENCES municipio(id),
    FOREIGN KEY (proyecto_id) REFERENCES proyecto(id)
)
SELECT usuarios.nombre AS usuario_nombre, grupo.nombre AS grupo_nombre
FROM usuarios
JOIN usuarios_grupo ON id_usuarios = usuarios_grupo.us_id
JOIN grupo ON id_grupo = usuarios_grupo.gr_id;

SELECT usuarios.nombre
FROM usuarios
JOIN usuarios_grupo ON id_usuarios = usuarios_grupo.us_id
WHERE usuarios_grupo.gr_id = 1;

SELECT grupo.nombre AS grupo_nombre, COUNT(usuarios_grupo.us_id) AS cantidad_usuarios
FROM grupo
JOIN usuarios_grupo ON id_grupo = usuarios_grupo.gr_id
GROUP BY grupo.nombre;

SELECT usuarios.nombre AS usuario_nombre, grupo.nombre AS grupo_nombre
FROM usuarios
JOIN usuarios_grupo ON id_usuarios = usuarios_grupo.us_id
JOIN grupo ON id_grupo = usuarios_grupo.gr_id
WHERE grupo.nombre LIKE '%intensivo%';

SELECT nombre FROM usuarios
WHERE id_usuarios IN (
    SELECT us_id 
    FROM usuarios_grupo 
    WHERE gr_id = 2
);

SELECT g.nombre, MAX(ug.us_id) AS max_us_id, MIN(ug.us_id) AS min_us_id
FROM grupo g
INNER JOIN usuarios_grupo ug ON g.id_grupo = ug.gr_id
GROUP BY g.nombre;

SELECT h.habitacion_numero, hu.nombre, hu.apellidos
FROM habitaciones h
INNER JOIN reservas r ON h.habitacion_numero = r.habitacion
INNER JOIN huespedes hu ON id_huspedes = r.huespedes_id;

SELECT h.habitacion_numero, COUNT(r.huespedes_id) AS cantidad_huespedes
FROM habitaciones h
INNER JOIN reservas r ON h.habitacion_numero = r.habitacion
GROUP BY h.habitacion_numero;

SELECT h.habitacion_numero, SUM(h.precio_por_noche) AS total_recaudado
FROM habitaciones h
INNER JOIN reservas r ON h.habitacion_numero = r.habitacion
GROUP BY h.habitacion_numero;

SELECT 
    municipio.nombre AS nombre_municipio,
    proyecto.proyecto AS nombre_proyecto
FROM 
    municipio
JOIN 
    proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
JOIN 
    proyecto ON proyecto.id = proyecto_municipio.proyecto_id;

SELECT 
    proyecto.proyecto
FROM 
    proyecto
WHERE 
    id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 1);

SELECT 
    municipio.nombre AS nombre_municipio,
    COUNT(proyecto_municipio.proyecto_id) AS cantidad_proyectos
FROM 
    municipio
LEFT JOIN 
    proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
GROUP BY 
    municipio.nombre;

SELECT 
    municipio.nombre AS nombre_municipio,
    proyecto.proyecto AS nombre_proyecto
FROM 
    municipio
JOIN 
    proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
JOIN 
    proyecto ON proyecto.id = proyecto_municipio.proyecto_id
WHERE 
    municipio.nombre LIKE '%GAD%';

SELECT municipio.nombre, MIN(proyecto_municipio.proyecto_id) AS min_proyecto_id
FROM municipio
JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;

SELECT municipio.nombre AS municipio_nombre, ciudad.nombre AS ciudad_nombre
FROM municipio
JOIN ciudad ON municipio.ciudad_id = ciudad.id;

SELECT * 
FROM proyecto
WHERE id IN (
    SELECT proyecto_id 
    FROM proyecto_municipio 
    WHERE municipio_id = 3
);

SELECT municipio.nombre, MAX(proyecto_municipio.proyecto_id) AS max_proyecto_id
FROM municipio
JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;




select 
select * from usuarios