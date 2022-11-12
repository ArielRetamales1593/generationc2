CREATE TABLE generationc2.direccion (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	numero int NOT null,
	ciudad varchar (100)
);

INSERT INTO generationc2.direccion  (nombre,numero,ciudad)
	VALUES ('los alelies',3454,'Santiago');
	

INSERT INTO generationc2.direccion  (nombre,numero,ciudad)
	VALUES ('peatonesd',3412,'Talca');
	

alter table estudiante
add DirId int ;

alter table estudiante
add foreign key (DirId) references direccion(id) ;



INSERT INTO generationc2.estudiante  (nombre,apellido,DirId)
	VALUES ('jhon',"doe",1),
	("juan", "farias", 2)
	;




alter table administrativos 
add DirId int ;

alter table administrativos 
add foreign key (DirId) references direccion(id) ;

INSERT INTO generationc2.administrativos  (nombre,apellido,DirId)
	VALUES ('daniel',"segovia",3),
	("dinamarca", "gonzales", 4)
	;




alter table profesores 
add DirId int ;

alter table profesores 
add foreign key (DirId) references direccion(id) ;

INSERT INTO generationc2.profesores  (nombre,apellido,DirId)
	VALUES ('diana',"henriquez",5),
	("julia", "ortiz", 6)
	;


INSERT INTO generationc2.direccion  (nombre,numero,ciudad)
	VALUES ('los cerezos',2276,'concepcion'),
			("los barquitos",7762,"santiago"),
			("trinidad", 5653, "santiago"),
			("calle 3", 7782,"antogafasta"),
			("castillo urizar", 8921,"santiago");
			
			
insert into generation

