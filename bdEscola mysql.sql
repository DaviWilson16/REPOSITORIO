create database bdEscola;

use bdEscola;

create table tbAluno(
	idAluno int primary key auto_increment,
    nomeAluno varchar(50),
    dataNascAluno date,
    estadoCivil varchar(20)
);

create table tbFoneAluno(
	idFoneAluno int primary key auto_increment,
    idAluno int,
    numeroFone varchar(17),
    foreign key (idAluno) references tbAluno(idAluno)
);
    
    