create database pizzaria;

-- primeiro criar as tabelas independentes
create table Cliente (
idCliente int not null auto_increment,
nomeCliente varchar(50) not null,
telefone varchar(11) not null,
email varchar(100) not null,
endereco varchar(100) not null,
dataCadastro varchar(8) not null,
primary key(idCliente)
);

create table funcionario (
idFuncionario int not null auto_increment,
nomeFuncionario varchar(50) not null,
cargo varchar(40) not null,
salario double not null,
dataAdmissão varchar(8) not null,
primary key(idFuncionario)
);

create table produto (
idProduto int not null auto_increment,
nomeProduto varchar(50) not null,
categoria varchar(50)  not null,
preco double not null
);
