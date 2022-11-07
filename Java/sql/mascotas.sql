--mascotas


CREATE TABLE generationc2.mascotas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	tipo varchar(100) NOT null,
	edad INT not null,
	peso INT not null
);


insert into mascotas  (id,nombre,tipo,edad,peso) 
values (1,"ema","perro",5, 7.2) ;
 insert into mascotas  (id,nombre,tipo,edad,peso) 
values (2,"negra","perro",4, 10.2) ;
 insert into mascotas  (id,nombre,tipo,edad,peso) 
values (3,"bjork","gato",5, 4.2) ;
 insert into mascotas  (id,nombre,tipo,edad,peso) 
values (4,"mila","loro",2, 1.2) ;



select *
from mascotas m 
where id= 4 ; 
