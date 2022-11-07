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