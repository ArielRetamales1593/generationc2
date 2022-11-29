-- creacion tabla tipo 

create table tipo(
id int primary key auto_increment not null,
tipo varchar(100) not null,
origen varchar (100));
 -- agregar 4  tipos de producto 
INSERT INTO tipo (tipo,origen)
	VALUES ('verduras o frutas', "alimentos"),
			('congelados','alimentos'),
			('articulos aseo', 'higiene personal') 
										;

INSERT INTO tipo (tipo,origen)
	VALUES ('bebidas', "alimentos");
			
-- crear tabla proveedores
create table proveedores(
id int primary key auto_increment not null,
nombre varchar (100) not null,
contacto_id int  not null,
foreign key (contacto_id) references contacto(id));
;
-- agregar proveedores
INSERT INTO proveedores (nombre,contacto_id)
	VALUES ('juan molina',2);

	INSERT INTO proveedores (nombre,contacto_id)
	VALUES ('ronnie riquelme',3);
INSERT INTO proveedores (nombre,contacto_id)
	VALUES ('jesus ramirez',4);


-- crear tabla productos
create table producto(
id int primary key auto_increment not null,
nombre varchar (100) not null,
descripcion varchar (100) not null,
precio float not null,
tipo_id int not null,
FOREIGN KEY (tipo_id) REFERENCES tipo(id),
prov_id int not null,
FOREIGN KEY (prov_id) REFERENCES proveedores(id),
valor_id int not null ,
foreign key (valor_id) references valor(id)


);

-- agregar productos
INSERT INTO producto (nombre,descripcion,precio,tipo_id,prov_id,valor_id)
	VALUES ('manzana','roja',250,6,34,1);
			
INSERT INTO producto (nombre,descripcion,precio,tipo_id,prov_id,valor_id)
	VALUES ('choclo','250 gramos',1800,7,35,1);
			

INSERT INTO producto (nombre,descripcion,precio,tipo_id,prov_id,valor_id)
	VALUES ('zanahoria','pcto nacional',150,6,34,1);
			

INSERT INTO producto (nombre,descripcion,precio,tipo_id,prov_id,valor_id)
	VALUES ('filete pollo','250 gramos',2500,7,36,1);
			

INSERT INTO producto (nombre,descripcion,precio,tipo_id,prov_id,valor_id)
	VALUES ('pasta dientes','colgate',2000,8,35,1);
	
INSERT INTO producto (nombre,descripcion,precio,tipo_id,prov_id,valor_id)
	VALUES ('papel','confort',1800,8,35,4);

INSERT INTO producto (nombre,descripcion,precio,tipo_id,prov_id,valor_id)
	VALUES ('coca-cola','3 lt',2500,12,34,2);
 -- crear tabla contacto
create table contacto(
id int primary key auto_increment not null,
nombre varchar (100) not null,
email varchar (100) not null,
telefono bigint not null);

-- agregar contacto


INSERT INTO contacto(nombre,email,telefono)
	VALUES ('jose ramos','jotara@gmail.com',568628237),
	 ('daniel riquelme','daniri@gmail.com',9876573),
	 ('josefa manriquez','jomanri@gmail.com',887766554);

-- crear tabla valor

create table valor(
id int primary key auto_increment not null,
cantidad int not null  
);

-- ingresar valores a cantidad

INSERT INTO valor (cantidad)
	VALUES (1);
INSERT INTO valor (cantidad)
	VALUES (2);
INSERT INTO valor (cantidad)
	VALUES (3);
INSERT INTO valor (cantidad)
	VALUES (4);
INSERT INTO valor (cantidad)
	VALUES (5);




-- consultas o filtros 
-- por fruta o verdura
select * from tipo t  
inner join producto p  
on t.id  = p.tipo_id 
where tipo_id = 6
;


-- por congelados
select * from tipo t  
inner join producto p  
on t.id  = p.tipo_id 
where tipo_id = 7
;

-- por precio 

select * from producto p2  
where precio>1000
;

-- por proveedores 
select * from contacto c2  
inner join proveedores p  
on c2.id = p.contacto_id 
where contacto_id = 2
;

-- por cantidad 
select * from valor v  
inner join  producto p 
on v.id  = p.valor_id 
where valor_id >1
;



