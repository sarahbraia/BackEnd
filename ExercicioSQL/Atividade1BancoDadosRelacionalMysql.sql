#cria o banco de dados
create database Atividade1;
#Cria a tabela
create table funcionarios(
	id int not null auto_increment,
	nome varchar(30) not null,
    sexo enum ('F', 'M'),
    datanascimento date, 
    salario int not null,
    primary key (id)
    
    );
    SELECT*FROM funcionarios;
    
    insert into funcionarios (id, nome, sexo, datanascimento, salario) values (default, 'Ana', 'F', '1994-03-15', '2000');
    insert into funcionarios (id, nome, sexo, datanascimento, salario) values (default, 'David', 'M', '1991-03-15', '5000');
    insert into funcionarios (id, nome, sexo, datanascimento, salario) values (default, 'Samuel', 'M', '1998-03-15', '1000');
    insert into funcionarios (id, nome, sexo, datanascimento, salario) values (default, 'Sammara', 'F', '1990-03-15', '3000');
    insert into funcionarios (id, nome, sexo, datanascimento, salario) values (default, 'Jessica', 'F', '1984-03-15', '7000');
    
     SELECT*FROM funcionarios;
     select*from funcionarios where salario>2000;
     select*from funcionarios where salario<2000;
     
     rename table funcionarios to colaboradores; 
     alter table colaboradores add column email varchar(30);
	SELECT*FROM colaboradores;
    

