-- D D L
-- S i s t e m a   E s c o l a r

CREATE DATABASE IF NOT EXISTS sistema_escolar;
USE sistema_escolar;

select now();

SELECT @@global.time_zone, @@session.time_zone;

SET GLOBAL time_zone = 'America/Sao_Paulo';
SET SESSION time_zone = 'America/Sao_Paulo';

-- 1 .  I n s t i t u i ç ã o
CREATE TABLE instituicao(
idInstituicao int auto_increment primary key,
nome varchar(200) not null,
cnpj varchar(18) not null unique,
cidade varchar(100) not null,
estado varchar(2) not null,
email varchar(100) not null,
telefone varchar(20),
criado_em datetime not null default current_timestamp
);


-- 2 .  P r o f e s s o r
CREATE TABLE professor(
idProfessor int auto_increment primary key,
instituicaoId	 int	 not null,
nome varchar(100) not null,
cpf varchar(14) not null unique,
email varchar(100) not null unique,
titulacao enum('GRADUACAO', 'ESPECIALIZACAO', 'MESTRADO', 'DOUTORADO') default 'GRADUACAO',
criado_em datetime not null default current_timestamp,
constraint fk_prof_instituicao foreign key(instituicaoId) references instituicao(idInstituicao)
-- C O N S T R A I N T = RESTRIÇÃO DE BANCO DE DADOS - UTILIZADO PARA GARANTIR A INTEGRIDADE E CONFIABILIDADE DOS DADOS,
-- IMPEDINDO INSERIR INFORMAÇÕES INVÁLIDAS
);

-- 3 .  A l u n o
CREATE TABLE aluno(
idAluno int auto_increment primary key,
nome varchar(100) not null,
cpf varchar(14) not null unique,
email varchar(100) not null unique,
data_nasc date not null,
telefone varchar(20) not null,
criado_em datetime not null default current_timestamp
);


-- 4 .  T u r m a
CREATE TABLE turma(
idTurma int auto_increment primary key,
instituicao_id int not null,
professor_id int not null,
nome varchar(50) not null,
ano_letivo year not null,
turno enum('MANHA', 'TARDE', 'NOITE', 'INTEGRAL') not null,
vagas smallint not null default 40,
criado_em datetime not null default current_timestamp,

constraint fk_turma_inst foreign key (instituicao_id) references instituicao(idInstituicao),
constraint fk_turma_prof foreign key (professor_id) references professor(idProfessor)
);


-- 5 .  M a t r i c u l a
CREATE TABLE matricula(
id int auto_increment primary key,
aluno_id int not null,
turma_id int not null,
dataMatricula date not null default (current_date),
situacao enum('ATIVA', 'TRANCADA', 'CANCELADA', 'CONCLUIDA') not null default 'ATIVA',

unique key uq_aluno_turma(aluno_id, turma_id),

constraint fk_mat_aluno foreign key (aluno_id) references aluno(idAluno),
constraint fk_mat_turma foreign key (turma_id) references turma(idTurma)
);
