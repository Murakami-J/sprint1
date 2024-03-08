create database sprint1;

use sprint1;

create table login (
idUsuario int primary key auto_increment,
email varchar(50),
senha varchar(20),
nomeDaEmpresa varchar(50));

create table monitoramento (
idMonitoramento int primary key auto_increment,
umidade int,
temperatura int,
horaDia datetime);

create table vacina (
idVacina int primary key auto_increment,
nomeVacina varchar(50),
dataFabricacao date,
dataValidade date);

insert into login values 
(default,'ryan@hotmail.com', 'abacaxi123', 'apple'),
(default,'joao@hotmail.com', 'amorai123', 'google'),
(default,'juliana@hotmail.com', 'maça123', 'amazon'),
(default,'victor@hotmail.com', 'banana123i123', 'itau');

select * from login;

insert into monitoramento values
(default,'10', '25', '2024-06-18 12:53:21'),
(default,'9', '32', '2024-03-23 17:45:12'),
(default,'5', '23', '2024-02-09 23:59:59'),
(default,'-2', '24', '2024-05-02 00:15:21');

select * from monitoramento;

insert into vacina values 
(default,'pfizer', '2024-06-18', '2025-06-18'),
(default,'sarampo', '2024-06-18', '2025-06-18'),
(default,'febre amarela', '2024-06-18', '2025-06-18'),
(default,'HPV', '2024-06-18', '2025-06-18');

select * from vacina;