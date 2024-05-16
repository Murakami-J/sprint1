create database cidadeEncantada;
use cidadeEncantada;


create table vestes(
idvestes int primary key auto_increment,
estilo varchar(45),
cor varchar (45)
);

create table cidade(
idCidade int primary key auto_increment,
nome varchar(45),
pais varchar(45),
qtdHabitantes int
);

create table ajudante(
idAjudante int primary key auto_increment,
especie varchar (45),
especialidade varchar(45),
fkVestes int,
foreign key (fkVestes) references vestes(idVestes)
);

create table cozinheiro(
idCozinheiro int primary key auto_increment,
nome varchar(45),
dtNasc date,
especialidade varchar(45),
fkAjudante int,
fkVestes int,
fkCidade int,
foreign key (fkAjudante) references ajudante(idAjudante),
foreign key (fkVestes) references vestes(idVestes),
foreign key (fkCidade) references cidade(idCidade)
);

create table ingredientes(
idIngredientes int primary key auto_increment,
nome varchar(45),
tipo varchar(45),
validade date
);

create table setor(
idSetor int primary key auto_increment,
nome varchar(45),
descricao varchar(45));

create table pratos(
idPrato int,
pkCozinheiro int,
pkSetor int,
nome varchar(45),
tempoPreparo time,
fase varchar(45),
descricao varchar(45),
foreign key (pkCozinheiro) references cozinheiro(idCozinheiro),
foreign key (pkSetor) references setor(idSetor),
primary key (pkSetor,pkCozinheiro,idPrato)
);

create index idx_Pratos on pratos(idPrato);

create table preparo(
idPreparo int, 
pkPrato int,
pkIngrediente int,
foreign key(pkIngrediente) references ingredientes(idIngredientes),
foreign key (pkPrato) references pratos(idPrato),
primary key (pkIngrediente,pkPrato,idPreparo)
);

create table criaturas(
idCriaturas int,
nome varchar(45),
especie varchar(45),
descricao varchar(100),
pkCozinheiro int,
fkSetor int,
foreign key (fkSetor) references setor(idSetor),
foreign key (pkCozinheiro) references cozinheiro(idCozinheiro),
primary key(idCriaturas, pkCozinheiro)
);
