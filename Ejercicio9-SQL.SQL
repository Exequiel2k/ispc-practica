create database peluqueriaCanina;

use peluqueriaCanina;

CREATE TABLE DUENO (
DNI int not null,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
telefono bigint not null,
direccion varchar(80),
primary key (DNI));

-- Ejercicio 1:

CREATE TABLE PERRO (
id_perro int not null auto_increment,
nombre varchar(25) not null,
fecha_nac date not null,
sexo varchar(25) not null,
dni_dueno int not null,
primary key (id_perro),
foreign key (dni_dueno) references dueno (DNI)
);

CREATE TABLE HISTORIAL (
id_historial int not null,
fecha date not null,
perro int not null,
descripcion varchar(150),
monto float,
primary key (id_historial),
foreign key (perro) references perro (id_perro)

);

INSERT INTO DUENO VALUES (33552854,'Marcia','Perez',1133909772,'El Ceibo 2423');
INSERT INTO DUENO VALUES (31692789,'Lucas','Juarez',2215114939,'El Cardenal 538');
INSERT INTO DUENO VALUES (56572759,'Julian','Juarez Perez',21060259,'El Ceibo 2423');


-- Ejercicio 2: Se insertan algunos perros

INSERT INTO DUENO VALUES (1,'Negro','2013-02-10','Macho',31692789);
INSERT INTO DUENO VALUES (2,'Morella','2020-11-11','Hembra',33552854);
INSERT INTO DUENO VALUES (3,'Itatí','2022-01-02','Hembra',56572759);


-- Ejercicio 9: Se actualiza la dirección de Lucas Juárez

UPDATE DUENO SET DIRECCION = 'Libertad 123' where DNI = 31692789;