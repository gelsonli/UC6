-- Criando Banco de dados
create database ifood;
--Usando o banco de dados
use ifood;
--Criando uma tabela no ifood
create table cliente(
	nome nchar(50),
	cpf int primary key,
	email nchar(50),
	telefone char(11),
	data_nascimento date,
	rua varchar(50),
	numero varchar(50),
	bairro varchar(50),
	cidade varchar(50),
	id_pagamento int,
	id_endereco int,
);
create table produto(
	nome varchar(50),
	descricao varchar(100),
	preco float,
	id_produto int primary key
);
create table estabelecimento(
	nome varchar(64),
	telefone char(13),
	endereco varchar(64),
	horario time,
	id_estabelecimento int primary key,
);
create table pedido(
	data datetime,
	id_produto int,
	id_estabelecimento int,
	cpf int,
	id_pedido int primary key,
	status text,
	foreign key (id_produto) references produto(id_produto),
	foreign key (id_estabelecimento) references estabelecimento(id_estabelecimento),
	foreign key (cpf) references cliente(cpf),
);

create table inventario(
	id_produto int,
	id_estabelecimento int,
	quant_produto int,
	foreign key (id_produto) references produto(id_produto),
	foreign key (id_estabelecimento) references estabelecimento(id_estabelecimento),
);
create table pagamento(
	id_pedido int,
	foreign key (id_pedido) references pedido(id_pedido),
	valor nvarchar(10),
	foreign key (cpf) references cliente(cpf),
	foreign key (id_pagamento) references cliente(id_pagamento),
);
create table pix(
	id_pix int primary key,
	cnpj char(14),
	cpf char(11),
	telefone char(11),
	email nvarchar(30),
	foreign key (cpf) references cliente(cpf)
);
create table dinheiro_fisico(
	id_dinheiroFisico int primary key,
	foreign key (cpf) references cliente(cpf)
);
create table cartao(
	id_cartao int primary key,
);
create table cartaoCredito(
	id_cartaoCredito int primary key,
	foreign key (id_cartao) references cartao(id_cartao)
);
create table cartaoDebito(
	id_cartaoDebito int primary key,
	foreign key (id_cartao) references cartao(id_cartao)
);
create table entregador(
	id_entregador int primary key,
	id_pedido int,
	nome nvarchar(30),
	foreign key (id_pedido) references pedido(id_pedido)
);
create table carro(
	id_carro int primary key,
	modelo varchar(20),
	placa char(7),
	cor text
);
create table moto(
	id_moto int primary key,
	modelo varchar(20),
	placa char(7),
	cor text
);
create table bicicleta(
	id_bicilcleta int primary key,
	modelo varchar(20),
	cor text
);
