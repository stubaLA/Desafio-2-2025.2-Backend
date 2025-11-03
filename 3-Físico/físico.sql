CREATE DATABASE detran_db;
USE detran_db;

CREATE TABLE proprietario (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    bairro VARCHAR(60),
    cidade VARCHAR(60),
    estado CHAR(2),
    telefones VARCHAR(50),
    sexo CHAR(1),
    data_nascimento DATE,
    idade INT
);

CREATE TABLE categoria (
    id_categoria CHAR(2) PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE modelo (
    id_modelo CHAR(6) PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE veiculo (
    placa CHAR(7) PRIMARY KEY,
    chassi VARCHAR(17) UNIQUE NOT NULL,
    cor VARCHAR(30),
    ano_fabricacao INT,
    cpf_proprietario CHAR(11),
    id_modelo CHAR(6),
    id_categoria CHAR(2),
    FOREIGN KEY (cpf_proprietario) REFERENCES proprietario(cpf),
    FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE agente (
    matricula INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_contratacao DATE,
    tempo_servico_meses INT
);

CREATE TABLE local_infracao (
    id_local SERIAL PRIMARY KEY,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    velocidade_permitida DECIMAL(5,2)
);

CREATE TABLE tipo_infracao (
    id_tipo SERIAL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE infracao (
    id_infracao SERIAL PRIMARY KEY,
    placa CHAR(7),
    id_tipo INT,
    id_local INT,
    matricula_agente INT,
    data_hora TIMESTAMP,
    velocidade_aferida DECIMAL(5,2),
    FOREIGN KEY (placa) REFERENCES veiculo(placa),
    FOREIGN KEY (id_tipo) REFERENCES tipo_infracao(id_tipo),
    FOREIGN KEY (id_local) REFERENCES local_infracao(id_local),
    FOREIGN KEY (matricula_agente) REFERENCES agente(matricula)
);