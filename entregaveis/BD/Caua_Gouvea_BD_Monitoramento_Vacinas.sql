create database monitVacina;
use monitVacina;

create table usuario(
idusuario int primary key auto_increment,
login varchar(50),
senha varchar(50),
email varchar(80),
telefone char(10),
cnpj char (14));

desc usuario;

insert into usuario values 
(null,'empresa1', 'senha123', 'alexandre@sptech.school', '8434872137','99447232000150'),
(null,'empresa2', 'senha213', 'samuel@sptech.school', '8337491596','79917523000157'),
(null,'empresa3', 'senha321', 'victor@sptech.school', '9727093213', '44967421000161');

select * from usuario;

create table armazemVacina (
idarmazem int auto_increment primary key,
qntdVacina int,
temperatura int,
loc varchar (200),
hora time);

insert into armazemVacina values
(null, 300, -2, 'Rua dos Bangos', '2024-05-02'), 
(null, 280, 6, 'Rua dos Bagos', '2024-02-02'),
(null, 120, 8, 'Rua Avenida Rua', '2023-04-02');

select * from armazemVacinas;

create table rastreamento (
    idRastreamento int auto_increment primary key,
    transportadora varchar(50), 
    qntdVacina int,
    locDestino varchar(100),
    dataSaida date
);

insert into rastreamento values
(null, 'Transportadora A', 200, 'Avenida A', '2020-08-02'),
(null, 'Transportadora B', 250, 'Rua B', '2022-08-02');

select* from rastreamento;