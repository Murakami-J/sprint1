create database BD_Monitoramento_Vacinas;
use BD_Monitoramento_Vacinas;

create table Usuario (
	id_usuario int primary key auto_increment, 
    nome varchar(50) not null,
    senha varchar(20) not null,
    email varchar(50) not null
);

create table Sensor (
	id_sensor int primary key auto_increment,
    nome varchar(10) not null,
    tipo varchar(30) not null,
    statusSensor varchar(30) not null,
    temperatura decimal(5,2) not null,
    umidade decimal (5,2) not null,
    constraint chkTipo check (tipo in('Temperatura', 'Umidade')),
    constraint chkStatusSensor check (statusSensor in('Ativo', 'Inativo'))
 
);


create table Instituicao (
	id_instituicao int primary key auto_increment,
    nome varchar(50) not null,
    endereco varchar(50) not null,
    email varchar(50) not null,
    telefone varchar(9),
    qtdSensor int
);

insert into Usuario values 
(default, 'Alexandre', 'asdaiji2131', 'alexandre@sptech.school'),
(default, 'Cauã', '123asdas', 'caua@sptech.school'),
(default, 'Juliana', '123wquepsa', 'juliana@sptech.school'),
(default, 'Lais', '12asd8q2w3', 'lais@sptech.school'),
(default, 'Ryan', '1usagdadk23', 'ryan@sptech.school'),
(default, 'Samuel', '128euwdo3', 'samuel@sptech.school'),
(default, 'Victor', '13787sbjdas', 'victor@sptech.school');

insert into Sensor values
( default, 'DHT11A', 'Temperatura', 'Ativo', 10.0, 10.0), 
( default, 'DHT11B', 'Umidade', 'Ativo', -5.0, 50.0), 
( default, 'DHT11C', 'Temperatura', 'Inativo', 2.0, 5.0); 


insert into Instituicao values
(default, 'UPA', 'Mooca', 'responsavel1@gmail.com', '914310298', 2),
(default, 'CliniVAC', 'Jacana', 'responsavel3@gmail.com', '914320298', 3),
(default, 'Posto 1', 'Mooca', 'responsavel3@gmail.com', '914311298', 5);

select * from Sensor;
select nome, email from Usuario;
select * from Instituicao where endereco = 'Mooca';



