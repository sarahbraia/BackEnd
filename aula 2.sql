#Criar um database
CREATE DATABASE Ford;
#Drop um database
DROP DATABASE ford;
SHOW DATABASES;
USE aula1;
create table funcionarios (
	nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacinalidade varchar(20)    
);
insert into funcionarios values ("Juliana", 22, "f", 60, 1.65, "Brasileira");
insert into funcionarios (nome, sexo) values ("Marcio", "f");

insert into funcionarios values 
("Marcela", 22, "f", 60, 1.65, "Brasileira"),
("Gabriel", 22, "m", 60, 1.65, "Brasileiro"),
("Juliana", 22, "f", 60, 1.65, "Brasileira");
#PUT = UPDATE
update funcionarios set nacinalidade = "Argentino" where nome = "Gabriel";

show tables;
describe funcionarios;
select * from funcionarios;
select nome from funcionarios;
select nome, nacinalidade from funcionarios; 

select*from funcionarios;

