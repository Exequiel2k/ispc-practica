create database peluqueriaCanina;
use peluqueriaCanina;
CREATE TABLE dueno (
DNI int NOT NULL,
 nombre varchar(50) NOT NULL,
 apellido varchar (50) NOT NULL,
 telefono varchar (15),
 direccion varchar(70) NOT NULL,
 PRIMARY KEY (DNI) 
 );
 
 
CREATE TABLE Perro (
 ID_perro int not null unique,
 Nombre varchar(40) NOT NULL,
 Fecha_nac DATE,
 Sexo varchar(10) NOT NULL,
 DNI_dueno int NOT NULL,
 PRIMARY KEY (ID_perro),
 FOREIGN KEY (DNI_dueno) REFERENCES dueno(dni)
);
 
 CREATE TABLE Historial (
 ID_perro int not null,
 ID_Historial int not null,
 fecha date,
 Perro varchar(40),
 Descripcion varchar(50) not null,
 Monto int,
 PRIMARY KEY(ID_Historial),
 FOREIGN KEY (ID_perro) references perro(ID_perro)
 );
 
 
Insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
 Value (41032488, "Agustin","Rios", 3513969744, "San Jeronimo 3000");
 
INSERT INTO Perro ( DNI_dueno, nombre, Fecha_nac, Sexo, ID_perro) 
values ( 41032488, "Lena", "2019-10-20", "Hembra", 1);
 
 Insert into Historial (ID_Perro, fecha, descripcion, monto, ID_Historial)
 value (1, "2022-04-25", "Vacuna", 2000, 1);
 
 Insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
 Value (25894658, "Jorge","Gonzales", 3516785945, "Obispo Trejo 500");
 
INSERT INTO Perro ( DNI_dueno, nombre, Fecha_nac, Sexo, ID_perro) 
values ( 25894658, "Titi", "2021-05-17", "Macho", 2);
 
 Insert into Historial (ID_Perro, fecha, descripcion, monto, ID_Historial)
 value (2, "2021-06-22", "Bano", 1000, 2);
  Insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
 Value (35689565, "Josefina","Perez", 3514895515, "Av. O Higgins 3216");
 
INSERT INTO Perro ( DNI_dueno, nombre, Fecha_nac, Sexo, ID_perro) 
values ( 35689565, "Negro", "2016-01-22", "Macho", 3);
 
 Insert into Historial (ID_Perro, fecha, descripcion, monto, ID_Historial)
 value (3, "2022-07-10", "Control", 1500, 3);
 
 



SELECT * FROM perro WHERE Sexo="Macho" AND Fecha_nac BETWEEN "2020-01-01" AND "2022-12-31"
