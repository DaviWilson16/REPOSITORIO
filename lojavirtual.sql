create database bdLojaVirtual;

use bdLojaVirtual;

create table tbpedido(
	idpedido int primary key auto_increment,
    idcliente int,
    idproduto int,
    foreign key (idcliente) references tbcliente (idcliente)
);

create table tbenderecoCliente(
	idenderecoCliente int primary key auto_increment,
    idcliente int,
    foreign key (idcliente) references tbcliente (idcliente)
);

create table tbitensPedido(
	iditensPedido int primary key auto_increment,
    idpedido int,
    idproduto int,
    foreign key (idpedido) references tbpedido (idpedido),
    foreign key (idproduto) references tbproduto (idproduto)
); 

create table tbfoneCliente(
	idfoneCliente int primary key auto_increment,
	numeroFone varchar(13),
    idcliente int,
    foreign key (idcliente) references tbcliente (idcliente)
);

create table tbcliente(
	idcliente int primary key auto_increment,
	nome varchar (50),
	email varchar (40)
);

create table tbproduto(
	idproduto int primary key auto_increment,
    precoUnitario varchar (30),
    categoria varchar (40),
    status varchar (30)
);

create table tbentrega(
	identrega int primary key auto_increment,
    status varchar (30),
    cpf varchar (50),
    dataEntrega varchar (30),
    idpedido int,
    idfoneCliente int,
    idcliente int,
    idenderecoCliente int,
    foreign key (idpedido) references tbpedido (idpedido),
    foreign key (idfoneCliente) references tbfoneCliente (idfoneCliente),
    foreign key (idcliente) references tbcliente (idcliente),
    foreign key (idenderecoCliente) references tbenderecoCliente (idenderecoCliente)
);
