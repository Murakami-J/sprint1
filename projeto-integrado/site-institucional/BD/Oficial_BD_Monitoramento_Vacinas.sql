CREATE DATABASE BD_MONITORAMENTO_VACINAS;
USE BD_MONITORAMENTO_VACINAS;

CREATE TABLE Usuario (
	id_Usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    email varchar(255) NOT NULL,
    senha varchar(30) NOT NULL,
    telefone char(11)
);

CREATE TABLE Empresa (
	id_Empresa INT PRIMARY KEY AUTO_INCREMENT,
    CNPJ CHAR(14) NOT NULL,
    nome varchar(50) NOT NULL,
    endereco varchar(50) NOT NULL,
    qtdSensor int
);

CREATE TABLE Sensor (
	id_Sensor INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(30),
    temperatura decimal(4,2),
    umidade decimal(5,2),
	statusSensor varchar(30) NOT NULL,
    
    constraint chkStatusSensor check (statusSensor in('Ativo', 'Inativo'))
);

CREATE TABLE Vacina (
	id_Vacina INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50),
    qtdVacina int,
    validade date,
    fabricacao date
);

CREATE TABLE Alarmes (
    idAlarme INT AUTO_INCREMENT PRIMARY KEY,
    tipoAlarme VARCHAR(255), 
    descricaoAlarme VARCHAR(255),
    dataHoraAlarme DATETIME,
    
    constraint chkAlarme check (tipoAlarme in ('Temperatura alta', 'Temperatura baixa', 'Umidade alta', 'Umidade baixa'))
);

INSERT INTO Usuario VALUES
(DEFAULT,'Samuel','samuel.lima@sptech.school','123456',11111111111),
(DEFAULT,'Cauan','cauan.gouveia@sptech.school','123456',2222222222),
(DEFAULT,'Victor','victor.moralles@sptech.school','44444444',333333333333),
(DEFAULT,'Alexandre','alexandre.frizzon@sptech.school','143456',444444444),
(DEFAULT,'Juliana','juliana.murakami@sptech.school','1244456',5555555555),
(DEFAULT,'Lais','lais.arouca@sptech.school','123456',11111111111),
(DEFAULT, 'Ryan', 'ryan.costa@sptech.school', '123459',11231233212);

SELECT * FROM Usuario;

-- =====================================================================

INSERT INTO Empresa VALUES 
(default,'12345678901234','Alpha Technology','Avenida Paulista, Haddock Lobo, 595',5),
(default,'12345678901231','Azul','Avenida Gravonski, Francisco Cubas, 325',2),
(default,'12345678901232','Latam','Avenida Odory, Gaspar Sardinha, 5388',3),
(default,'12345678901233','Gol','Avenida Landucci, Santos Dummont, 522',1),
(default,'12345678901235','West Cargo','Avenida Business, Godoi Lobo, 25',7),
(default,'12345678901236','Sedex','Avenida Gouvea, Murakami Santos, 77',4),
(default,'12345678901237','Vacin Express','Avenida Moralles, Souza Frizzon , 33',1),
(default,'12345678901238','Correios','Avenida Brigadeiro, Batista Lobo, 22',7),
(default,'12345678901239','Uber','Avenida Nordestina, Carlos Patino , 359',66);

SELECT * FROM Empresa;
DELETE FROM Empresa WHERE id_Empresa = 1;
ALTER TABLE Empresa MODIFY COLUMN endereco VARCHAR(100);
DESC Empresa;
ALTER TABLE Empresa RENAME COLUMN endereco TO logradouro;
DESC Empresa;

UPDATE Empresa SET nome = 'Aroucca Solutions'
    WHERE id_Empresa = 7;
    
SELECT * FROM Empresa;


-- =====================================================================

insert into Sensor values
(DEFAULT, 'DHT11A', '28.82', '61.71', 'Ativo'),
(DEFAULT, 'DHT11B', '31.12', '33.71', 'Ativo'),
(DEFAULT, 'DHT11C', '32.52', '61.71', 'Ativo'),
(DEFAULT, 'DHT11D', '21.83', '52.71', 'Ativo'),
(DEFAULT, 'DHT11E', '22.82', '69.71', 'Ativo'),
(DEFAULT, 'DHT11F', '29.42', '81.71', 'Ativo');

SELECT * FROM Sensor;
SELECT * FROM Sensor WHERE statusSensor LIKE "%a%";
SELECT nome FROM Sensor;

-- =====================================================================

INSERT INTO Vacina VALUES
(DEFAULT, 'Pfizer', 500, '2024-04-04', '2024-01-02'),
(DEFAULT, 'Hepatite A', 1000, '2025-05-01', '2024-01-02'),
(DEFAULT, 'Febre amarela', 1500, '2025-06-05', '2024-01-02'),
(DEFAULT, 'Tríplice viral', 2100, '2024-08-10', '2024-01-02'),
(DEFAULT, 'Hepatite B', 3500, '2025-01-15', '2024-01-02');

SELECT * FROM Vacina;
SELECT nome, validade FROM Vacina;

-- =====================================================================

INSERT INTO Alarmes VALUES
(DEFAULT, 'Temperatura alta', 'Descrição 1', '2024-03-05 08:00:00'),
(DEFAULT, 'Temperatura baixa', 'Descrição 2', '2024-03-15 08:30:00'),
(DEFAULT, 'Umidade alta', 'Descrição 3', '2024-01-05 09:00:00'),
(DEFAULT, 'Umidade baixa', 'Descrição 4', '2024-05-05 00:00:00'),
(DEFAULT, 'Temperatura alta', 'Descrição 5', '2024-03-05 08:00:00');

DROP DATABASE BD_MONITORAMENTO_VACINAS;
