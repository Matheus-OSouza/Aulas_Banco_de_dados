-- ENTIDADE -> TABELA
-- DDL -> DATA DEFINITTION LANGUAGE
-- CREATE, ALTER, DROP, truncate
USE SistemaEscolar;

CREATE TABLE Instituicao (
idInstituicao int not null auto_increment,
nomeInstituicao varchar(50) not null,
enderecoInstituicao varchar(100) not null,
telefoneInstituicao varchar(11) not null,
PRIMARY KEY(idInstituicao)
);

CREATE TABLE Alunos (
	idAluno int not null auto_increment,
    nomeAluno varchar(60) not null,
    matriculaAluno varchar(15) not null unique, -- "unique" impede dois alunos com a mesma matricula
    cursoAluno varchar(100) not null,
    instituicaoId int not null,
    PRIMARY KEY (IdAluno),
    FOREIGN KEY (instituicaoId) REFERENCES Instituicao (idInstituicao)    
);

CREATE DATABASE SitemaEscolar








