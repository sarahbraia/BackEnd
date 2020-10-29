create database db_RH2;

use db_RH2;

CREATE TABLE tb_funcionario
	(id_funcionario integer PRIMARY KEY AUTO_INCREMENT,
   nome varchar(30) not null,
    sexo enum ('F', 'M'),
    datanascimento date, 
    salario int not null
    );
select * from tb_funcionario;

create table tb_cargo(
	id_Cargo integer PRIMARY KEY AUTO_INCREMENT,
    setor varchar(20) not null,
    cargo varchar(20) not null,
    id_funcionario integer,
    CONSTRAINT fk_funcionario FOREIGN KEY (id_funcionario) REFERENCES tb_funcionario (id_funcionario)    
);
select*from tb_cargo;

insert into tb_funcionario (id_funcionario, nome, sexo, datanascimento, salario) values
    (default,'Juliana', 'F', '2000-05-15', 5000),   
    (default,'David', 'M', '1991-04-10', 3000),   
    (default,'Samuel', 'M', '1998-04-27', 7000),   
    (default,'Bruna', 'F', '1994-04-15', 1100),   
    (default,'Matheus', 'M', '1986-07-15', 18000),   
    (default,'Ana', 'F', '1993-11-29', 23000),   
    (default,'Ricardo', 'M', '1987-02-05', 1400),   
    (default,'Patricia', 'F', '1996-08-30', 2500),   
    (default,'Adolfo', 'M', '1950-12-25', 6000),   
    (default,'Emanuel', 'M', '1970-06-26', 8000),   
    (default,'Regina', 'F', '1984-09-28', 10000),   
    (default,'Daniele', 'F', '1945-07-31', 7000),   
    (default,'Liz', 'F', '1995-05-20', 8000),   
    (default,'Danilo', 'M', '1994-04-03', 5000),   
    (default,'Diego', 'M', '1963-10-12', 2000);   
    
    SELECT*FROM tb_funcionario;
    
insert into tb_cargo (id_cargo, setor, cargo, id_funcionario) values  
  (default, 'engenharia', 'Supervisor', 1),  
  (default, 'Diretoria', 'Gerente de fábrica', 6),  
  (default, 'Produção', 'Estagiário', 15),  
  (default, 'Qualdidade', 'Staff', 13),  
  (default, 'Processo cerveja', 'Mestre cervejeiro', 5),  
  (default, 'Manutenção', 'Operadora', 4);
  
  select*from tb_cargo;
  
	select*from tb_funcionario
  INNER JOIN tb_cargo
  where tb_funcionario.id_funcionario = tb_cargo.id_Cargo;
  
  select nome, salario from tb_funcionario;
 
  
  