#Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte
# nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa. 

CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos 
#tb_produto para se trabalhar com o serviço de uma loja de produtos 

CREATE TABLE tb_produto
	(id_produto integer PRIMARY KEY AUTO_INCREMENT,
   nome varchar(30) not null,
    und int not null,
    qtd int not null, 
    descricao varchar(30) not null,
    preco int not null,
    id_categoria int not null,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria) 
    );
select * from tb_produto;

#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
#relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
create table tb_categoria(
	id_categoria integer PRIMARY KEY AUTO_INCREMENT,
    categoria varchar(20) not null,
    id_produto integer
       
);
select*from tb_categoria;

insert into tb_produto (id_produto, nome, und, qtd, descricao, preco, id_categoria) values
    (default,'Saco de cimento 20kg', 'und', 10, 'Cimento pra piso', 25, 5),   
    (default,'Areia', 'kg', 50, 'Areia de construção',20,  5),   
    (default,'Parafuso', 'und', 500, 'Parafuso 3M',15,  3),   
    (default,'cano', 'metor', 20, 'Cano hidraulico', 30, 2),   
    (default,'Fio elétrico', 'metro', 50, 'Fio bitola 10mm', 42, 1),   
    (default,'Lampada', 'und', 10, 'Lampada de led',10, 1),   
    (default,'Chave de fenda', 'un', 12, 'Chave de fenda Bosh', 12, 3),   
    (default,'Gesso', 'kg', 40, 'Areia de construção', 67, 4);   
    
    
select*from tb_produto;
insert into tb_categoria (id_categoria, categoria, id_produto) values
    (default,'elétrica', default),   
    (default,'Hidraulica', default),   
    (default,'Ferramenta', default),   
    (default,'Decoração', default),   
    (default,'Alvenaria', default);   

    
     SELECT*FROM tb_categoria;
     
	select*from tb_produto where  preco>50;
    select*from tb_produto where  preco>3 && preco<60;
    select nomeCorte from tb_produto where nomeCorte LIKE  '%ci%';
    
    select*from tb_produto
  INNER JOIN tb_categoria
  where tb_produto.id_produto = tb_categoria.id_categoria;
  
  select categoria from tb_categoria;
  
  

