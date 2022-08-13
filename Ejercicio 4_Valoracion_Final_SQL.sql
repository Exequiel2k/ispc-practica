create database peluqueria_canina;

use peluqueria_canina;

create table dueno (
DNI int not null,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
telefono bigint not null,
direccion varchar(125),
primary key (DNI));

-- Ejercicio 1: Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

create table perro (
id_perro int not null auto_increment,
nombre varchar(50) not null,
fecha_nac date not null,
sexo varchar(10) not null,
dni_dueno int not null,
primary key (id_perro),
foreign key (dni_dueno) references dueno (DNI)
);

create table historial (
id_historial int not null,
fecha date not null,
perro int not null,
descripcion varchar(125),
monto float,
primary key (id_historial),
foreign key (perro) references perro (id_perro)

);



insert into dueno values (335522555,'Soledad','baigorria',3517855555,'Los angeles 754');

insert into dueno values (335522545,'Pablo','Perez',35177778,'Peru 564');

insert into dueno values (335524345,'Ivan','Perez',115445555,'Arrollito 150');

-- Ejercicio 2: Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

insert into perro values (1,'chocolate','2022-10-10','Macho',335522545);

insert into perro values (2,'firulais','2020-05-10','Macho',335522555);

insert into perro values (3,'mancha','2021-07-20','Hembra',335524345);



-- Ejercicio 4: Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

update perro set fecha_nac = '2021-02-10' where id_perro = 3;





