#Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte
# nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa. 

CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos 
#tb_produto para se trabalhar com o serviço de uma loja de produtos 

CREATE TABLE tb_curso
	(id_curso integer PRIMARY KEY AUTO_INCREMENT,
   nome varchar(30) not null,
    cargahoraria int not null,
    areaConhecimento int not null, 
    nivel varchar(30) not null,
    preco int not null,
    id_categoria int not null,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria) 
    );
select * from tb_curso;

#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
#relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
create table tb_categoria(
	id_categoria integer PRIMARY KEY AUTO_INCREMENT,
    categoria varchar(20) not null,
    id_produto integer
       
);
select*from tb_categoria;

insert into tb_curso (id_curso, nome, cargahoraria, areaConhecimento, nivel, preco, id_categoria) values
    (default,'JAVA', '420', 'Tecnologia', 'Superior', 13000, 5),   
    (default,'Canto', '60', 'Artes', 'Livre',2000,  5),   
    (default,'Excel', '13', 500, 'livre', 20,  3),   
    (default,'Oratoria', '50', 20, 'Humanas', 180, 2),   
    (default,'Autocad', '500', 50, 'Engenharia', 600, 1),   
    (default,'Pintura', '25', 10, 'Artes',100, 1),   
    (default,'Canvas', '2', 12, 'Livre', 0, 3),   
    (default,'Markeitng digital', '5', 40, 'Tecnologia', 67, 4);   
    
    
select*from tb_curso;
insert into tb_categoria (id_categoria, categoria, id_curso) values
    (default,'Tecnologia', default),   
    (default,'Humanas', default),   
    (default,'Livre', default),   
    (default,'Engenharia', default),   
    (default,'Artes', default);   

    
     SELECT*FROM tb_categoria;
     
	select*from tb_curso where  preco>50;
    select*from tb_curso where  preco>3 && preco<60;
    select nome from tb_produto where nome LIKE  '%jav%';
    
    select*from tb_curso
  INNER JOIN tb_categoria
  where tb_curso.id_curso = tb_categoria.id_categoria;
  
  select categoria from tb_categoria;
  
  

