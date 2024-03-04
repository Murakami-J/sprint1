create database vacinatemperatura;

use vacinatemperatura;

create table vacina (
idvacina int primary key auto_increment,
nome varchar(50),
email varchar(50),
senha char(8),
telefone char(14),
endereco varchar(60),
cnpj char(14));

describe vacina;

insert into vacina values
(null,'jose', 'josealvaro@gmail.com', '1446128J', '11933528153', 'Rua quadrada 144', '22315272409236'),
(null,'claudio', 'claudioantunes@gmail.com', '1448128J', '11955528153', 'Rua Fejiao 23', '22315272982336'),
(null,'roberta', 'roberta1985@gmail.com', '14461ROB', '11933172153', 'Rua Aluno Fabio 14', '20185672409236');

select * from  vacina;

create table ratreio (
idrastreio int primary key auto_increment,
statusid varchar(50),
entregador varchar(50));

insert into ratreio values
(null, 'entregue', 'sedex'),
(null, 'envio para distribuidora', 'correio'),
(null, 'Em rota', 'correio');

select * from ratreio;

create table amarzem (
idamarzem int primary key auto_increment,
capacidade varchar(90),
temperatura varchar(70),
vacinaentrada varchar(80),
vacinasaida varchar(90),
perdadevacina varchar(90));

insert into amarzem values
(null, '1000', '-3', '900', '245', '100'),
(null, '1500', '-2', '100', '1000', '30'),
(null, '2500', '-8', '1900', '1810', '90'),
(null, '1050', '-1', '950', '245', '120');

select * from amarzem; 
