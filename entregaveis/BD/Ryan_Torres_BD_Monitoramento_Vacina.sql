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
﻿