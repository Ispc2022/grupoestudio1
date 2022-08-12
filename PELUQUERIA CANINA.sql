CREATE DATABASE PELUQUERIA
Show databases;
USE PELUQUERIA;
create table DUEÑO ( 
DNI int NOT NULL,
NOMBRE varchar(25) NOT NULL,
APELLIDO varchar(25) NOT NULL,
TELEFONO int,
DIRECCION varchar(25),
PRIMARY key (DNI)
);
create table PERRO (
DNI_DUEÑO int not null,
ID_PERRO INT NOT NULL auto_increment,
NOMBRE varchar (25) NOT NULL,
FECHA_DE_NACIMIENTO Date,
SEXO char NOT NULL,
PRIMARY KEY (ID_PERRO),
foreign key (DNI_DUEÑO) REFERENCES Dueño (DNI)
);
create table HISTORIAL (
ID_HISTORIAL int not null,
ID_PERRO int,
FECHA Date,
DESCRIPCION varchar (255),
MONTO int,
primary key (ID_HISTORIAL),
FOREIGN KEY (ID_PERRO) REFERENCES perro (ID_PERRO) 
);

insert into dueño (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION) 
VALUES ('39971787','EMANUEL','GUEVARA','3','DEL CARMEN');

insert into PERRO (DNI_DUEÑO,ID_PERRO,NOMBRE,FECHA_DE_NACIMIENTO,SEXO)
VALUES ('39971787','1','LUCI','1996-12-22','M');

 insert into dueño (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION) 
VALUES ('20000000','TITO','GUEVARA','4','PASAJE 453');

insert into PERRO (DNI_DUEÑO,ID_PERRO,NOMBRE,FECHA_DE_NACIMIENTO,SEXO)
VALUES ('20000000','2','GATO','1996-12-23','M');

DELETE from PERRO WHERE ID =2; 

insert into HISTORIAL (ID_HISTORIAL,FECHA,DESCRIPCION,MONTO) 
VALUES ('10','1996-12-23','GUEVARA','400');


