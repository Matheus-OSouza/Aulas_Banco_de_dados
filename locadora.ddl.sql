create database sistemaLocadora;

create table ClienteLocadora (
clienteId int not null auto_increment,
nomeCliente varchar(50) not null,
telefone varchar(11) not null unique,
email varchar(100) not null unique,
cpfCliente varchar(11) not null unique,
cnhCliente varchar(9) not null unique,
primary key (clienteId)
);

create table Veiculo (
veiculoId int not null auto_increment,
tipoVeiculo varchar(30) not null,
marcaVeiculo varchar(30) not null,
modeloVeiculo varchar(30) not null,
anoVeiculo date not null,
placaVeiculo varchar(7) not null unique,
preçoVeiculo decimal not null,
cilindrada int not null,
quantidadePorta int not null,
primary key (veiculoId)
);

create table Locacao (
locacaoId int not null auto_increment,
clienteId int not null,
precoLocacao decimal not null,
dataLocacao date not null,
diasUsados int not null,
primary key (locacaoId),
foreign key (clienteId) references ClienteLocadora (clienteId)
);

create table Locadora (
locadoraId int not null auto_increment,
veiculoId int not null,
locacaoId int not null,
estoqueVeiculo int not null,
nomeLocadora varchar(30),
primary key (locadoraId),
foreign key (veiculoId) references Veiculo (veiculoId),
foreign key (locacaoId) references Locacao (LocacaoId)
);





