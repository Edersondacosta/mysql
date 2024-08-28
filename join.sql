create database cadastro;

use cadastro;

create table pessoa (
id int primary key auto_increment,
nome varchar(50) not null,
id_estado int,
id_cidade int,
foreign key pk_cidade (id_cidade) references cidade (id_cidade),
foreign key pk_cidade (id_cidade) references cidade (id_cidade)
);

create table cidade (
id_cidade int primary key auto_increment,
nome varchar(50) not null
);

create table estado (
id_estado int primary key auto_increment,
nome varchar(50) not null
);

truncate table estado;

insert into cidade values 
(null, "Campo Grande"),
(null, "Terenos"),
(null, "Dourados"),
(null, "Três Lagoas"),
(null, "Corumbá");

insert into estado values 
(null, "Mato Grosso do Sul"),
(null, "Mato Grosso"),
(null, "Goias"),
(null, "Rio Grande do Sul"),
(null, "Paraná");

insert into pessoa values 
(null, "Ederson da Costa", 1, 1),
(null, "Maria Aparecida", 1, 3),
(null, "Miguel Antunes", 4, 3),
(null, "Pedro Barbosa", 2, 5),
(null, "Milene Lopes",2, 5);

select * from pessoa;


SELECT * FROM pessoa JOIN cidade ON pessoa.id_cidade = cidade.id_cidade join estado on pessoa.id_estado = estado.id_estado; -- sem alias
SELECT * FROM pessoa p JOIN cidade c ON p.id_cidade = c.id_cidade join estado e on p.id_estado = e.id_estado; -- alias
SELECT * FROM pessoa LEFT JOIN cidade ON pessoa.id_cidade = cidade.id_cidade;
SELECT * FROM pessoa RIGHT JOIN cidade ON pessoa.id_cidade = cidade.id_cidade;
SELECT * FROM pessoa CROSS JOIN cidade;


select * from  pessoa p 
left JOIN cidade c 
on p.id_cidade = c.id_cidade
Union
select * from  pessoa p 
right JOIN estado e 
on p.id_estado = e.id_estado; 


select * from  cidade 
Union select * from estado; 

