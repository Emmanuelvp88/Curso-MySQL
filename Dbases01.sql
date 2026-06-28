
					-----------------   CREAD    -------------------
                
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


						-----------------  READ  -------------------

-- Muestra o consulta todo lo que contiene la tabla "animales"
SELECT * FROM animales;

-- "SELECT" significa la columna, "FROM" la tabla, "WHERE" el dato en espesifico que queremos consultar
SELECT estado, nombre 
 FROM animales
  WHERE  id = 3;
  
  -- Buscar todas las "clumnas" de la tabla "animales" con el estado "feliz" 
SELECT * FROM animales
 WHERE estado = 'feliz';


  

						----------------  UPDATE   -------------------
                            
SELECT * FROM mascotas;
                            
-- Insercion de datos en tablas
INSERT INTO  animales ( nombre, tipo, estado)
 VALUES ( 'Miklo','gato', 'feliz');
 
INSERT INTO animales (nombre, tipo, estado)
 VALUES ('Whalter','Perro','Mongolo');
 
INSERT INTO animales (nombre, tipo, estado) 
 VALUES ('chikis', 'Perro','Muy feliz');

INSERT INTO animales (nombre, tipo, estado)
 VALUES ('la peque', 'Perro','enojona');

INSERT INTO animales (nombre, tipo, estado)
 VALUES('canelita', 'Perro', 'tranquila');


INSERT INTO mascotas(nombre, tipo, estado)
VALUES ('Miklo', 'gato', 'feliz tonto');

INSERT INTO mascotas (nombre, tipo, estado)
 VALUES ('Walter', 'perro', 'mongolo');

-- Se renombra una tabla
RENAME TABLE animales 
 TO mascotas;

-- Actualizacion de numero de id en una tabla
UPDATE animales -- actualizar animales
 SET id =  3  -- establecer id 3
  WHERE id = 4; -- donde id sea 4

-- Agregar nuevas columnas a una tabla existente
ALTER TABLE animales
 ADD COLUMN nombre varchar (50)
  FIRST;

-- Ahora veremos como modificamos la tabla creada y seleccionamos el parametro que queremos que sea Autoincrementable en este caso 'id' .
-- Antes de cualquier insercion de datos en una tabla, necesitamos indicar como se hara el conteo de cada insercion, haciendo autoincrementable "id" que es la llave primaria.
ALTER TABLE animales 
 MODIFY COLUMN id int auto_increment PRIMARY KEY;



					----------------  DELETE  -----------------
  SELECT * FROM mascotas;
  
  
-- Eliminacion de columnas de una tabla
ALTER TABLE animales
 DROP COLUMN nombre;

-- Para eliminar un resgistro Mediante el id, con limite de 1
DELETE FROM animales
WHERE id IS NULL
LIMIT 1;

-- Eliminacion del registro con id = 2, esta es la manera correcta de borar un registro
DELETE FROM animales 
 WHERE id = 2;

-- Esta consulta envia un error, el 1175 donde dice que no se puede borrrar registros mediante
-- otra columna que no se la de "id" Primary Key, "safe mode" de SQL
DELETE FROM animales
 WHERE nombre = 'Whalter';

-- Con esta consulta Eliminamos absolutamente todos los registros de una tabla
TRUNCATE TABLE mascotas;

-- Eliminacion de una tabla por completo
DROP TABLE mascotas;














-- Te mustra el ejemplo de como se debe crear una tabla correctamente
SHOW CREATE TABLE animales;

-- Y este es el ejemplo que te arroja el comando anterior, desde un principio con el parametro 'id' autoincrementable, lo puedes copiar y pegar par la creacion de una tabla nueva
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




