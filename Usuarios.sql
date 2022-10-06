-- Primero creamos una base de datos con el siguiente comando.
create database usuarios;
-- Con este comando miramos todas las bases de datos existentes en esta instancio o conexion.
show databases;
-- Con este comando le indicamos que vamos a utilizar la base de datos "Usuarios"
use usuarios;
-- Despues creamos una tabla dentro de la base de datos "Usuarios" con las siguinetes columnas
-- ID autoincrementable, nombre de tipo 'caracter', edad de tipo 'entero', email de tipo 'caracter'.
create table user(
	id int not null auto_increment,
    name varchar(50) not null,
    lastname varchar (30) not null,
    edad int not null,
    email varchar (100) not null,
    primary key(id)
);

							-- INSERCION DE DATOS --
-- con estas lineas de comandos insertamos datos en las columnas de la tabla.
insert into user (name, edad, email) values ( 'carlos', 34, 'carlos@gmail.com');
insert into user (name, edad, email) values ('emmanuel', 34,  'Emmanuel@gmail.com');
insert into user (name, edad, email)values('el piber',  14, 'Piber@gmail.com');
insert into user(name, edad, email) values('el gordo',  12, 'Gordo@gmail.com');
insert into user(name, edad, email) values('Emmnuel', 34, 'flaktronik@hotmail.com');
insert into user(name, edad, email)values ('Emi', 6, 'emmi@outlook.es');

							-- BUSQUEDA Y MUESTREO DE DATOS --
-- con la siguinete linea miramos todo el contenido de la tabla "user".
select * from user;
-- con este comando mostramos un dato espesifico poniendo un valor que exista dentro de alguana columna de la tabla.
select * from user where edad = 34;
-- tambien podemos hacer una busqueda mediante operadores logicos "AND", "OR", "NOT", "XOR".
select * from user where edad = 98 and name =  'el piber';-- te mostrara el dato que cumpla con ambas 'edad' y 'name'
select * from user where name = 'Emmanuel' or edad = 34;-- te mostrara el dato que cumpal con cualquiera de las dos 'name' o 'edad'.
select * from user where  not name = 'antonio';-- muentra todos lso datos menos el que le indicamos.
-- Con la siguiente linea ponemos limite en la busqueda de datos.
select * from user limit 3;
-- y con estos comandos buscamos mediante operadores de comparacion, logicos y condicionales.
select * from user where edad < 12; -- mostrar todos los que sean menor a 12.
select * from user where edad >= 12; -- mostrar todos los que sean mayor o igual a 12.
select * from user where edad > 13 and  email = 'emmanuel@gmail.com'; -- mostrar todos los que sean mayor a 13 y que tengan el email mencionado.
select * from user where edad < 34 or email = 'josa@ooutlook.es'; -- mostrar todos los que sean menor que 34 o que tengan el email mencionado.
select * from user where email != 'emmanuel@gmail.com'; -- mostrar todos, menos el que tenga el email mencionado.
select * from user where  edad between 4 and 30;
					-- ELIMINACION Y MODIFICACION DE DATOS --
--  con el siguiente comando  eliminamos un dato de la tabla y esta es la manera de eliminar un dato, solo por "id".
delete from user where id = 3;
-- Este comando es para modificar un dato, este comando tambien solo se modifica mediante el "id" primary key.
update user set edad = '98' where id = 4;
update user set name = 'Antonio' where id = 1;
