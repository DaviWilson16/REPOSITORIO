create database bdescola;
use bdescola;

create table tbaluno (
idaluno int primary key auto_increment,
nome varchar (100),
idade varchar (10),
curso varchar (100),
nota varchar (100)
);

-- Inserir 20 registros

INSERT INTO tbaluno (nome, idade, curso, nota) VALUES ('Ana', 20, 'Engenharia', 
8.5),
 ('Bruno', 22, 'Ciencia da Computacao', 9.2),
 ('Carla', 19, 'Design', 7.8),
('Daniel', 21, 'Engenharia', 8.0),
 ('Eduarda', 20, 'Ciencia da Computacao', 9.5),
 ('Felipe', 23, 'Design', 6.9),
 ('Gabriela', 18, 'Engenharia', 8.8), 
('Henrique', 24, 'Ciencia da Computacao', 7.5),
 ('Isabela', 22, 'Design', 9.0), 
('Joao', 21, 'Engenharia', 7.2),
 ('Karen', 20, 'Administracao', 8.3),
 ('Lucas', 25, 'Administracao', 6.8),
 ('Mariana', 19, 'Marketing', 9.1),
 ('Nicolas', 23, 'Marketing', 7.7),
 ('Olivia', 21, 'Pedagogia', 8.9),
 ('Paulo', 24, 'Pedagogia', 7.0),
 ('Quezia', 20, 'Administracao', 9.4),
 ('Rafael', 22, 'Marketing', 8.1), 
('Sabrina', 18, 'Pedagogia', 8.6),
 ('Thiago', 26, 'Ciencia da Computacao', 9.3); 
 
select * from tbaluno;
select nome from tbaluno;
select nome, curso from tbaluno;
select nome, curso from tbaluno where curso = 'engenharia';
select nome, nota from tbaluno where nota > 8.0;
select * from tbaluno order by nome asc;
select * from tbaluno order by nota desc;
select nome, nota from tbaluno order by nota desc limit 5;
select nome, idade from tbaluno where idade >= 22;
select nome, curso, nota from tbaluno where curso = 'design' and nota > 8.0;
select nome, curso from tbaluno where curso <> 'engenharia';
select count(*) from tbaluno;
select max(nota) from tbaluno;
select min(nota) from tbaluno;
select avg(nota) from tbaluno;
select nome, curso, nota from tbaluno where nota >= 8 order by nota desc limit 5;




-- Cauã Euzébio, Pedro Vinicius, Davi Wilson