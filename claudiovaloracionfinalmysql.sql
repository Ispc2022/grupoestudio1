create database veterinaria;
use veterinaria;
CREATE TABLE perro (
  `id_perro` int NOT NULL,
  `idDueno` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_nac` datetime DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_perro`),
  KEY `idDueno` (`idDueno`),
  CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`idDueno`) REFERENCES `dueno` (`id_dueno`)
) ;
CREATE TABLE historial (
  `id_historial` int NOT NULL,
  `idPerro` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `monto` int DEFAULT NULL,
  KEY `idPerro` (`idPerro`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`idPerro`) REFERENCES `perro` (`id_perro`)
);
CREATE TABLE dueno (
  `id_dueno` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_dueno`)
);
use veterinaria;
select * from perro;
insert into dueno(id_dueno,nombre,apellido,telefono,direccion) values (32222154,'claudio','fernandez',4292088,'santa fe 332');
insert into perro(id_perro,idDueno,nombre,fecha_nac,genero) values (001,32222154,'pancho','30-08-19','m');

UPDATE dueno SET direccion = 'libertad 123' WHERE id_dueno = '32222154';

