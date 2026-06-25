create database Dbase01; -- Creacion de la Base de Datos
show databases; -- Muestra todas las BDD que tenemops en existencia
use Dbase01; -- Se ejecuta antes de todo para que sepamos que vamos a trabajar sobre esa BDD

-- Creacion de la BDD
CREATE TABLE animales(
id int,
tipo varchar(255),
estado varchar(255),
PRIMARY KEY (id) -- Tenemos que indicar que parametro seria nuestra llave primaria, en este caso colocamos "id" como llave primaria.
);

-- Antes de cualquier insercion de datos en una tabla, necesitamos indicar como se va hacer el conteo de cada insercion, haciendo autoincrementable la llave primaria "id"
-- con la siguiente linea modificamos la tabla 'animales' y seleccionamos el parametro que queremos que sea Autoincrementable en este caso 'id' .
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

-- Agregar nuevas columnas a una tabla existente
ALTER TABLE animales
ADD COLUMN id varchar (50)
FIRST;

-- Con esto eliminamos columnas de una tabla
ALTER TABLE animales
DROP COLUMN nombre;

-- Muestra todo lo que contiene la tabla "animales"
SELECT * FROM animales;

-- Para eliminar un resgistro nediante el id
DELETE FROM animales
WHERE id = null;

-- Insercion de datos en tablas
INSERT INTO  animales (nombre, tipo, estado) VALUES ( 'Miklo','gato', 'feliz');

-- Te mustra el ejemplo de como se debe crear una tabla correctamente
SHOW CREATE TABLE animales;

-- te arroja este ejemplo, desde un principio con el parametro 'id' autoincrementable, lo puedes copiar y pegar par la creacion de una tabla nueva
-- solo quitar las comillas del principio y fin, y poner nuevo nombre a la tabla.
'CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'

-- Creacion correcta de una tabla nueva, con 'id' autoincrementable desde un principio 
CREATE TABLE `mascotas` (
  id_mascota int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(25) DEFAULT NULL, -- tratar de utilizar los caracteres necesarios para optimizar
  `estado` varchar(25) DEFAULT NULL, -- DEFAULT NULL significa que este campo no puede estar vacio en una tabla, forzozamente debe contener un dato
  PRIMARY KEY (`id`)
);




