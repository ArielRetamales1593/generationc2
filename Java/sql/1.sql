--  query para inserccionAuto-generated SQL script #202211041514
INSERT INTO generationc2.estudiante (nombre,id,apellido)
	VALUES ('lore',6,'cancino');
INSERT INTO generationc2.estudiante (nombre,id,apellido)
	VALUES ('jimena',6,'tapia');
INSERT INTO generationc2.estudiante (nombre,id,apellido)
	VALUES ('jimena',6,'tapia');
--   query para borrar datos Auto-generated SQL script #202211041533
DELETE FROM generationc2.estudiante
	WHERE nombre='lore' AND id=6 AND apellido='cancino';


CREATE TABLE generationc2.administrativos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL
);

ALTER TABLE generationc2.profesores MODIFY COLUMN id INT primary key auto_increment NOT NULL;

describe profesores ;

select * from administrativos ;


CREATE TABLE generationc2.cursos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	cantidadAlumnos int NOT null,
	especialidad varchar (100)
);

INSERT INTO generationc2.cursos (nombre,cantidadAlumnos,especialidad)
	VALUES ('cohorte1',34,'java');
	INSERT INTO generationc2.cursos (nombre,cantidadAlumnos,especialidad)
	VALUES ('cohorte2',35,'javaScript');
INSERT INTO generationc2.cursos (nombre,cantidadAlumnos,especialidad)
	VALUES ('cohorte3',35,'mysql');
select * from cursos;

-- agregar fk a estudiantes forein key
-- creacion columnas 


alter table estudiante
add cursoId int ;

-- relacion de las tablas -- 

alter table estudiante
add foreign key (cursoId) references cursos(id) ;

INSERT INTO generationc2.estudiante  (nombre,apellido,cursoId)
	VALUES ('jhon',"doe",1),
	("juan", "farias", 2),
	("daniel", "molina",3);



insert into generationc2.





























