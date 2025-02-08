create database horizonte_turismo;

-- Tabela Destino
CREATE TABLE Destino (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Descrição TEXT,
    Avaliação INT,
    Imagem VARCHAR(255)
);

-- Tabela Oferta
CREATE TABLE Oferta (
    ID INT PRIMARY KEY,
    Título VARCHAR(255),
    Preço DECIMAL(10, 2),
    Duração VARCHAR(255),
    Saídas VARCHAR(255),
    Inclusões TEXT,
    Atrações TEXT,
    Exclusividades TEXT,
    Imagem VARCHAR(255),
    Destino_ID INT,
    FOREIGN KEY (Destino_ID) REFERENCES Destino(ID)
);

-- Tabela Contato
CREATE TABLE Contato (
    ID INT PRIMARY KEY,
    Endereço VARCHAR(255),
    Telefone VARCHAR(50),
    Email VARCHAR(100)
);

-- Tabela Usuário
CREATE TABLE Usuário (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(100),
    Telefone VARCHAR(50)
);

-- Tabela Reserva
CREATE TABLE Reserva (
    ID INT PRIMARY KEY,
    Data_Ida DATE,
    Data_Volta DATE,
    Quantidade_Pessoas INT,
    Destino_ID INT,
    Usuário_ID INT,
    FOREIGN KEY (Destino_ID) REFERENCES Destino(ID),
    FOREIGN KEY (Usuário_ID) REFERENCES Usuário(ID)
);

use horizonte_turismo;
