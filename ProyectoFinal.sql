CREATE DATABASE VeterinariaHocicos;

USE VeterinariaHocicos;

CREATE TABLE dueno (
DNI int NOT NULL,
NOMBRE varchar(30) NOT NULL,
APELLIDO varchar(30) NOT NULL,
TELEFONO int NOT NULL,
DIRECCION varchar (30),
PRIMARY KEY (DNI)
);

CREATE TABLE perro (
ID_PERRO int auto_increment NOT NULL,
NOMBRE varchar(30) NOT NULL,
FECHA_NAM date,
SEXO char(1),
DNI_DUENO int NOT NULL,
PRIMARY KEY (ID_PERRO),
FOREIGN KEY (DNI_DUENO) REFERENCES dueno (DNI)
);

CREATE TABLE historial (
ID_HISTORIAL int auto_increment NOT NULL,
FECHA date NOT NULL,
PERRO int NOT NULL,
DESCRIPCION varchar(100),
MONTO float,
PRIMARY KEY (ID_HISTORIAL),
FOREIGN KEY (PERRO) REFERENCES perro (ID_PERRO)
);

INSERT INTO dueno (dni,nombre,apellido,telefono,direccion) values (27894568,"Marine","Simonelli",3516746471,"Nazaret 3551");
INSERT INTO perro(id_perro,nombre,fecha_nam,sexo,dni_dueno) values (001,"Owen",'03-05-21',"m",27894568);

SELECT P.NOMBRE FROM perro P JOIN dueno D ON P.DNI = D.DNI_DUENO

