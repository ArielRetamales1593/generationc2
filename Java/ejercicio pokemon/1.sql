CREATE TABLE generationc2.persona (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) not null ,
	apellido varchar(100) not null,
	correo varchar(100) not null );

CREATE TABLE generationc2.adress (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	calle varchar(100) NOT NULL,
	numero int not null,
	ciudad varchar(100) not null );

INSERT INTO generationc2.persona  (nombre,apellido,correo)
 	VALUES ('juan', 'lopez','juan@gmail.com'),
 			('dani', 'riquelme','dani@gmail.com'); 
 			
 		INSERT INTO generationc2.adress  (calle,numero,ciudad)
 	VALUES ('los hualtatas', 1234,'santiago'),
 			('peatones', 543,'valdivia'); 
 			
 		
 		
 	CREATE TABLE generationc2.personas_adress (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	persona_id int not null,
	adress_id int not null,
	foreign key (persona_id) references persona(id),
	foreign key (adress_id) references adress(id));
 		
 		
 		
 		 		INSERT INTO personas_adress  (persona_id, adress_id)
 	VALUES (1,1),(1,2),(2,1),(2,2) ;
 		
 
 

 