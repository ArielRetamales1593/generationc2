alter table generationc2.mis_pokemones 
add id int primary key auto_increment not null ; 

alter table mis_pokemones 
add foreign key (pokedex) references pokemoneskanto(pokedex);



-- select * from id,nombre
-- from mis_pokemones mp 
-- inner join pokemoneskanto p 
-- on mp.pokedex= p.pokedex 
-- where p.tipo1 ="fuego"; 

select  id,nombre
from mis_pokemones mp
inner join pokemoneskanto p 
on mp.pokedex =p.pokedex 
where p.tipo1= "veneno" ;



select id, nombre
from mis_pokemones mp 
inner join pokemoneskanto p 
on mp.pokedex =p.pokedex 
where mp.lugar ='Estacion Central' 


select id,nombre
from mis_pokemones mp 
inner join pokemoneskanto p 
on mp.pokedex =p.pokedex 
where p.tipo2 = ""

