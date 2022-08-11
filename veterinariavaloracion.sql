create database peluqueriacanina
use peluqueriacanina
-- creacion tabla dueno
create table dueno (
dni int,
nombre varchar(20),
apellido varchar (20),
telefono bigint,
direccion varchar (50),
constraint pk_due primary key (dni))

-- asociar dueño
insert into dueno values (18445224, "pedro", "gonzalez", 4557785,"9 de julio 787")
select * from dueno


-- creacion tabla perro
create table perro (
id_perro int,
nombre varchar (20),
fecha_nac date,
sexo varchar (10),
dni_dueno int,
constraint pk_idpe primary key (id_perro),
constraint fk_dnid foreign key (dni_dueno) references dueno (dni))

-- asociar nuevo animal
insert into perro values (123,"peppi",12/02/2014,"femenino",18445224)
select * from perro


-- creacion tabla historial 
create table historial(
id_historial int,
fecha date, 
perro int,
descripcion varchar (200),
monto float,
constraint pk_idhis primary key (id_historial),
constraint fk_perr foreign key (perro) references perro (id_perro))

select * from historial

-- consultar asistencias en 2022 (punto 6 )
select perro from historial where fecha between  01/01/2022 and 31/12/2022
