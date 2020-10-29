create database db_cidade_das_carnes;
use db_cidade_das_carnes;
drop table tb_produto;
drop table tb_categoria;
CREATE TABLE tb_produto
	(id_produto integer PRIMARY KEY AUTO_INCREMENT,
   nomeCorte varchar(30) not null,
    peso int not null,
    datavalidade date, 
    preço int not null,
    id_categoria int not null,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria) 
    );
select * from tb_produto;

create table tb_categoria(
	id_categoria integer PRIMARY KEY AUTO_INCREMENT,
    categoria varchar(20) not null,
    origemAnimal varchar(20) not null,
    id_produto integer
       
);
select*from tb_categoria;

insert into tb_produto (id_produto, nomeCorte, peso, datavalidade, preço, id_categoria) values
    (default,'picanha', 500, '2000-05-15', 70, 1),   
    (default,'coração', 200, '2000-06-01', 11,2),   
    (default,'Peito', 100, '2000-07-13', 15,3),   
    (default,'Fraldinha', 300, '2000-06-12', 20,4),   
    (default,'Alcatra', 1500, '2000-08-11', 55,5),   
    (default,'peito', 2000, '2000-10-12', 24,4),   
    (default,'acém', 700, '2000-04-31', 40,2),   
    (default,'lagarto', 1500, '2000-05-27', 56,1); 
    
select*from tb_produto;
insert into tb_categoria (id_categoria, categoria, origemAnimal, id_produto) values
    (default,'1', 'Bovina', default),   
    (default,'2', 'Ave', default),   
    (default,'3', 'Bovina', default),   
    (default,'3', 'Ave', default),  
    (default,'1', 'Bovina',default);
    
     SELECT*FROM tb_categoria;
     
	select*from tb_produto where  preço>50;
    select*from tb_produto where  preço>3 && preço<60;
    select nomeCorte from tb_produto where nomeCorte LIKE  '%co%';
    
    select*from tb_produto
  INNER JOIN tb_categoria
  where tb_produto.id_produto = tb_categoria.id_categoria;
  
  select nomeCorte from tb_produto;
  
  