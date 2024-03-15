CREATE DATABASE projetovacina;

USE projetovacina;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
senha VARCHAR(15),
email VARCHAR(255),
funcaoUsuario VARCHAR(15) CHECK(funcaoUsuario IN('Administrador','Funcionário'))
);

-- inserindo valores
INSERT INTO usuario VALUES
(default,'Laís Aroucca','laisaroucca','arouccalais@gmail.com','Administrador'),
(default,'Levi Ramos','leviramos','leviramos@gmail.com','Funcionário'),
(default,'Roberta Dionizio','robertadionizio','robertadionizio@gmail.com','Funcionário'),
(default,'Eron Pereira','eronpereira','eronpereira@gmail.com','Funcionário');

-- testando constraint
INSERT INTO usuario VALUES
(default,'Lidia Aroucca','lidiaaroucca','lidiaaroucca@gmail.com','Gerente'); -- funcionou

CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(20),
localizacao VARCHAR(100),
datainst DATETIME
);

INSERT INTO sensor VALUES 
(default,'Luminosidade','Vila Mariana','2024-03-01 23:00:00'),
(default,'Umidade','Avenida Paulista','2024-02-10 12:00:00'),
(default,'Luminosidade/umidade','República','2024-01-29 15:30:00'),
(default,'Luminosidade','Suzano','2023-08-01 17:15:00');

CREATE TABLE instituicao(
idInstituicao INT PRIMARY KEY AUTO_INCREMENT,
nomeInst VARCHAR(100),
cnpj CHAR(14),
logradouro VARCHAR(150),
responsavel VARCHAR(100)
);

INSERT INTO instituicao VALUES
(default,'SUS Fanganiello','12345678901234','Rua Francisco Nunes Cubas, 359','Eduardo Matos'),
(default,'SUS Jd Robru','12345678901231','Rua Padre de LaParte Abis, 283','Gabriel Eduardo'),
(default,'SUS Jd Etelvina','12345678901232','Rua Morato Tomas, 625','Laís Aroucca'),
(default,'UPA Julio Tupy','12345678901233','Avenida Gravonski, 3006','Laura Ramos');

CREATE TABLE empresaforn(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR (100),
cnpj CHAR(14)
);

INSERT INTO empresaforn VALUES
(default,'Alpha Technology','23456789012345'),
(default,'Nuts','23456789012346'),
(default,'ZeroUm','23456789012347'),
(default,'Rels','23456789012348');


CREATE TABLE monitoramento(
idMonitoramento INT PRIMARY KEY AUTO_INCREMENT,
-- idsensor se puder usar chave estrangeira
temperatura DECIMAL(4,1),
umidade DECIMAL(4,1),
dthr DATETIME
);

INSERT INTO monitoramento VALUES
(default,10.1,12.3,'2024-02-24'),
(default,35.3,7.5,'2024-03-01'),
(default,7.1,37.3,'2023-11-07'),
(default,45.1,6.3,'2024-01-19');

SELECT * FROM usuario;

SELECT * FROM sensor;

SELECT * FROM instituicao;

SELECT * FROM empresaforn;

SELECT * FROM monitoramento;