CREATE DATABASE tempvacina;

use tempvacina;

CREATE TABLE usuario(
idusuario INT PRIMARY KEY AUTO_INCREMENT,
nomeUsuario VARCHAR(80),
email VARCHAR(80),
telefone CHAR(14),
endereco VARCHAR (255),
cnpj CHAR (14)
)auto_increment = 10;

DESC usuario;

INSERT INTO usuario VALUES 
(NULL,'Marcos','Marcos@sptech.school','11111111111111','Rua Marcos Vinicius','11223344556677'),
(NULL,'Micaely','Micaely@sptech.school','14111111111111','Rua Micaely Almeida','11225544556677'),
(NULL,'Samuel','Samuel@sptech.school','12111111111111','Rua Micaely Almeida','11225544556677');

SELECT * FROM usuario;

CREATE TABLE temperatura_registro (
idvacina INT PRIMARY KEY,
nomevacina VARCHAR(80),
lotevacina INT,
temperatura DECIMAL(5,2),
data_fabricado DATETIME,
data_validade DATETIME);

DESC temperatura_registro;

INSERT INTO temperatura_registro VALUES 
(1,'VACINA A','400','5.5','2024-03-04 09:00:00','2024-06-09 09:00:00'),
(2,'VACINA B','401','10.5','2024-05-05 09:00:00','2025-07-06 10:00:00'),
(3,'VACINA C','402','11.5','2022-02-07 09:00:00','2023-05-09 07:00:00');

SELECT * FROM temperatura_registro;

CREATE TABLE armazem_vacinas (
idarmazem INT auto_increment PRIMARY KEY,
quantidade INT,
localização VARCHAR (200),
data_entrada DATE,
data_saida DATE
);

INSERT INTO armazem_vacinas VALUES
(NULL,1000, 'RUA A', '2024-03-04', '2024-05-02'), 
(NULL,1001, 'RUA B', '2024-02-04', '2024-02-02'),
(NULL,1002, 'RUA V', '2022-02-04', '2023-04-02');

SELECT * FROM armazem_vacinas;

CREATE TABLE locais_administracao (
    idadministracao INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80),
    endereco VARCHAR(80)
);

desc locais_administracao;

INSERT INTO locais_administracao (nome, endereco)
VALUES
('Hospital X', 'Rua A, 123'),
('Posto de Saúde Y', 'Avenida B, 456'),
('Clínica Z', 'Rua C, 789');

SELECT * FROM locais_administracao;

CREATE TABLE distribuicao_vacinas (
    iddistribuicao INT AUTO_INCREMENT PRIMARY KEY,
    entregador VARCHAR (50), 
    quantidade INT,
    localizacao_destino VARCHAR(100),
    data_saida DATE
);

INSERT INTO distribuicao_vacinas VALUES
(NULL,'SEDEX',200,'Rua dos magos','2020-08-02'),
(NULL,'CORREIOS',250,'Rua dos dragão','2022-08-02');

SELECT* FROM distribuicao_vacinas;


