create database Dbase01;
show databases;
use Dbase01; 
CREATE TABLE animales(
id int,
tipo varchar(255),
estado varchar(255),

PRIMARY KEY (id) -- Tenemos que indicar que parametro seria nuestra llave primaria, en este caso colocamos "id" como llave primaria.
);

-- Antes de cualquier insercion de datos en una tabla, necesitamos indicar como se va hacer el conteo de cada insercion, haciendo autoincrementable la llave primaria "id"
-- con la siguiente linea modificamos la tabla 'animales' y seleccionamos el parametro que queremos que sea Autoincrementable en este caso 'id' .
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

-- Insercion de datos en tablas
INSERT INTO  animales (tipo, estado) VALUES ('Miklo', 'feliz');

-- Te mustra la manera en la que una tabla debe crearse de la manera corrcta
SHOW CREATE TABLE animales;

-- Ejemplo de tabla creada desde un principio de la manera correcta con el parametro 'id' autoincrementable.
'CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'

-- Creacion correcta de una tabla nueva, con 'id' autoincrementable desde un principio 
CREATE TABLE `mascotas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

