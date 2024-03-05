-- Criar Database Vacinas
CREATE DATABASE Vacinas;

 -- Usar Database Vacinas
USE Vacinas;

-- Criar tabela de Usuários
CREATE TABLE Usuarios (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    nomeUsuario VARCHAR(255),
    senha VARCHAR(255),
    informacoesAdicionais VARCHAR(255)
)auto_increment = 1;

-- Criar tabela de Leituras
CREATE TABLE Leituras (
    idLeitura INT AUTO_INCREMENT PRIMARY KEY,
    idUsuario INT,
    temperatura DECIMAL(4,2),
    umidade DECIMAL(4,2),
    dataHoraLeitura DATETIME,
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario)
)auto_increment = 1;

-- Criar tabela de Alarmes
CREATE TABLE Alarmes (
    idAlarme INT AUTO_INCREMENT PRIMARY KEY,
    idLeitura INT,
    tipoAlarme VARCHAR(255), 
    descricaoAlarme VARCHAR(255),
    dataHoraAlarme DATETIME,
    FOREIGN KEY (idLeitura) REFERENCES Leituras(idLeitura),
    constraint check_alarme check (tipoAlarme in ('Temperatura alta', 'Temperatura baixa', 'Umidade alta', 'Umidade baixa'))
)auto_increment = 1;

-- Inserir dados na tabela de Usuários
INSERT INTO Usuarios (nomeUsuario, senha, informacoesAdicionais)
VALUES
    ('usuario1', 'senha123', 'Informações do usuário 1'),
    ('usuario2', 'senha456', 'Informações do usuário 2'),
    ('usuario3', 'senha789', 'Informações do usuário 3'),
    ('usuario4', 'senhaabc', 'Informações do usuário 4'),
    ('usuario5', 'senhaxyz', 'Informações do usuário 5');

-- Inserir dados na tabela de Leituras
INSERT INTO Leituras (idUsuario, temperatura, umidade, dataHoraLeitura)
VALUES
    (1, 25.5, 60.0, '2024-03-01 08:00:00'),
    (2, 23.8, 55.5, '2024-03-01 08:15:00'),
    (3, 26.2, 58.7, '2024-03-01 08:30:00'),
    (4, 24.5, 62.3, '2024-03-01 08:45:00'),
    (5, 22.1, 56.8, '2024-03-01 09:00:00');

-- Inserir dados na tabela de Alarmes
INSERT INTO Alarmes (idLeitura, tipoAlarme, descricaoAlarme, dataHoraAlarme)
VALUES
    (1, 'Temperatura Alta', 'Alerta de temperatura alta', '2024-03-01 08:02:00'),
    (2, 'Umidade Baixa', 'Alerta de umidade baixa', '2024-03-01 08:20:00'),
    (3, 'Temperatura Alta', 'Alerta de temperatura alta', '2024-03-01 08:35:00'),
    (4, 'Umidade Alta', 'Alerta de umidade alta', '2024-03-01 08:50:00'),
    (5, 'Temperatura Baixa', 'Alerta de temperatura baixa', '2024-03-01 09:05:00');
    
    
    -- Selecionar todos os usuários
SELECT * FROM Usuarios;

-- Selecionar usuários cujo nome de usuário contém a letra 'a'
SELECT * FROM Usuarios WHERE nomeUsuario LIKE '%a%';

-- Selecionar leituras com temperatura superior a 24 graus
SELECT * FROM Leituras WHERE temperatura > 24;

-- Ordenar leituras por temperatura em ordem decrescente
SELECT * FROM Leituras ORDER BY temperatura DESC;

-- Selecionar alarmes ordenados por tipo em ordem alfabética
SELECT * FROM Alarmes ORDER BY tipoAlarme;

-- Selecionar usuários com informações adicionais que terminam com 'informações'
SELECT * FROM Usuarios WHERE informacoesAdicionais LIKE '%informações';

-- Concatenar nome de usuário e informações adicionais na tabela de Usuários
SELECT CONCAT(nomeUsuario, ' - ', informacoesAdicionais) AS Usuario_Info FROM Usuarios;

-- Concatenar uma frase de alerta usando a temperatura
SELECT CONCAT('Atenção a temperatura ', temperatura, ' esta fora do normal') AS Aviso_Urgente FROM Leituras;

-- Adicionar uma nova coluna email à tabela de Usuários
ALTER TABLE Usuarios ADD COLUMN email VARCHAR(255);

-- Atualizar a senha do usuário com ID 3 na tabela de Usuários
UPDATE Usuarios SET senha = 'nova_senha' WHERE idUsuario = 3;

-- Selecionar leituras onde a data e hora contêm '2024-03-01'
SELECT * FROM Leituras WHERE dataHoraLeitura LIKE '2024-03-01%';

-- drop database Vacinas;