drop schema if exists pablo_schilling_videoclub cascade;

create schema pablo_schilling_videoclub;

set schema 'pablo_schilling_videoclub';

create table socio(
	id_socio serial PRIMARY KEY,
	
	dni varchar (50) UNIQUE NOT NULL,
	nombre varchar(30) NOT NULL,
	apellido_1 varchar(50) NOT NULL,
	apellido_2 varchar(50),
	telefono varchar (30) NOT NULL,
	fecha_nacimiento DATE NOT NULL
);

create table direccion(
	id_direccion serial PRIMARY KEY,
	
	codigo_postal varchar(10) NOT NULL,
	calle varchar(100) NOT NULL,
	num_calle varchar(10) NOT NULL,
	num_piso varchar(10) NOT NULL
);

CREATE TABLE socio_direccion (
    id_socio INT REFERENCES socio(id_socio) ON DELETE CASCADE,
    id_direccion INT REFERENCES direccion(id_direccion) ON DELETE CASCADE,
    PRIMARY KEY (id_socio, id_direccion)
);

/*
create table direccion(
	id_direccion serial PRIMARY KEY,
	id_socio int NOT null,
	
	codigo_postal varchar(10) NOT NULL,
	calle varchar(100) NOT NULL,
	num_calle varchar(10) NOT NULL,
	num_Piso varchar(10) NOT null
	
	constraint id_socio_fk foreign key (id_socio) REFERENCES socio (id_socio) ON DELETE CASCADE,
);
*/

CREATE TABLE pelicula (
    id_pelicula serial PRIMARY KEY,
    
    titulo VARCHAR(250) NOT NULL,
    --genero VARCHAR(100) NOT NULL,
    --director VARCHAR(100) NOT NULL,
    sinopsis TEXT NOT NULL
);

CREATE TABLE genero (
    id_genero serial PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE pelicula_genero (
    id_pelicula INT REFERENCES pelicula(id_pelicula) ON DELETE CASCADE,
    id_genero INT REFERENCES genero(id_genero) ON DELETE CASCADE,
    PRIMARY KEY (id_pelicula, id_genero)
);

CREATE TABLE director (
    id_director serial PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE pelicula_director (
    id_pelicula INT REFERENCES pelicula(id_pelicula) ON DELETE CASCADE,
    id_director INT REFERENCES director(id_director) ON DELETE CASCADE,
    PRIMARY KEY (id_pelicula, id_director)
);

CREATE TABLE copia_pelicula (
    id_copia serial PRIMARY KEY,
    id_pelicula INT REFERENCES pelicula(id_pelicula) ON DELETE CASCADE,
    
    estado VARCHAR(20) CHECK (estado IN ('disponible', 'prestada')) DEFAULT 'disponible' NOT NULL
);

CREATE TABLE prestamo (
    id_prestamo SERIAL PRIMARY KEY,
    id_socio INT REFERENCES socio(id_socio) ON DELETE CASCADE,
    id_copia INT REFERENCES copia_pelicula(id_copia) ON DELETE CASCADE,
    
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE
);

---------------------------------------------------------------------------------------------------------

INSERT INTO socio (dni, nombre, apellido_1, apellido_2, fecha_nacimiento, telefono) 
VALUES 
('12345678A', 'Juan', 'Pérez', 'García', '1985-04-15', '612345678'),
('23456789B', 'María', 'García', 'Lopez', '1990-07-22', '623456789'),
('34567890C', 'Luis', 'Martínez', 'Sánchez', '1982-12-10', '634567890');

INSERT INTO direccion (codigo_postal, calle, num_calle, num_piso)
VALUES 
('28001', 'Calle Falsa', '123', '2A'),
('08001', 'Carrer de Mallorca', '45', '3B'),
('41001', 'Avenida de la Constitución', '67', '1C');

INSERT INTO socio_direccion (id_socio, id_direccion)
VALUES 
(1, 1),
(1, 2),
(2, 1),
(3, 3);

INSERT INTO pelicula (titulo, sinopsis) 
VALUES 
('La Aventura', 'Una película de acción y aventura sobre exploradores en la selva.'),
('El Drama', 'Un intenso drama familiar sobre relaciones rotas y secretos guardados.'),
('La Comedia', 'Una película cómica sobre una serie de malentendidos entre amigos.');

INSERT INTO genero (nombre) 
VALUES 
('Acción'),
('Drama'),
('Comedia');

INSERT INTO pelicula_genero (id_pelicula, id_genero)
VALUES 
(1, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3);

INSERT INTO director (nombre) 
VALUES 
('Pedro Almodóvar'),
('Steven Spielberg'),
('Woody Allen');

INSERT INTO pelicula_director (id_pelicula, id_director)
VALUES 
(1, 1),
(1, 2),
(2, 1),
(3, 3);

INSERT INTO copia_pelicula (id_pelicula, estado) 
VALUES 
(1, 'disponible'),
(1, 'disponible'),
(2, 'disponible'),
(2, 'prestada'),
(3, 'prestada'),
(3, 'prestada');

INSERT INTO prestamo (id_socio, id_copia, fecha_prestamo, fecha_devolucion)
VALUES 
(1, 1, '2025-03-01', '2025-03-04'),
(2, 2, '2025-03-02', '2025-03-07'),
(3, 3, '2025-03-05', '2025-03-08'),
(1, 4, '2025-03-10', NULL),
(2, 5, '2025-03-11', NULL),
(3, 6, '2025-03-12', NULL);

---------------------------------------------------------------------------------------------------------

SELECT 
    p.titulo, 
    COUNT(cp.id_copia) AS copias_disponibles
FROM 
    pelicula p
JOIN 
    copia_pelicula cp ON p.id_pelicula = cp.id_pelicula
LEFT JOIN 
    prestamo pr ON cp.id_copia = pr.id_copia AND pr.fecha_devolucion IS NULL
WHERE 
    cp.estado = 'disponible' 
    AND pr.id_prestamo IS NULL
GROUP BY 
    p.id_pelicula;