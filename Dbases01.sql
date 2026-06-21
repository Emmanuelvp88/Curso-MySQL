create database Dbase01;
show databases;
use Dbase01; 
CREATE TABLE animales(
id int,
tipo varchar(255),
estado varchar(255),

PRIMARY KEY (id) -- Tenemos que indicar que parametro seria nuestra llave primaria, en este caso colocamos "id" como llave primaria.
);

-- Antes de cualquier incercion de datos en una tabla, necesitamos indicar como se va hacer el conteo de cada insercion, haciendo autoincrementable la llave primaria "id"
-- modificando l atabla de la base de datos y seleccionando el parametro que queremos que sea 'Autoincrementable'.
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

-- Insercion de datos en tablas
INSERT INTO  animales (tipo, estado) VALUES ('Miklo', 'feliz');


