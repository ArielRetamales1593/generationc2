

-- crear tabla
CREATE TABLE generationc2.mascotas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	tipo varchar(100) NOT null,
	edad INT not null,
	peso INT not null
);

-- agregar datos
insert into mascotas  (id,nombre,tipo,edad,peso) 
values (1,"ema","perro",5, 7.2) ;
 insert into mascotas  (id,nombre,tipo,edad,peso) 
values (2,"negra","perro",4, 10.2) ;
 insert into mascotas  (id,nombre,tipo,edad,peso) 
values (3,"bjork","gato",5, 4.2) ;
 insert into mascotas  (id,nombre,tipo,edad,peso) 
values (4,"mila","loro",2, 1.2) ;



-- modificar espacio 
update mascotas set nombre ="camila" where id = 4 ;

update mascotas set peso =3.2 where id = 3;
 -- consultar
select *
from mascotas 
where id= 4 ; 


-- mostrar columnas especificas
select nombre,id, peso,edad
from mascotas ;




