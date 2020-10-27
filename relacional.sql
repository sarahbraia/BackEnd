create database db_chaves;
use db_chaves;
drop table pessoas;
drop table Carro;
CREATE TABLE pessoas 
(ID_Pessoas integer PRIMARY KEY AUTO_INCREMENT,Nome varchar(255));

CREATE TABLE Carros
	(ID_Carro integer PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255),
    Marca varchar(255),
    ID_Pessoa integer,
    CONSTRAINT fk_pessoas FOREIGN KEY (ID_Pessoa) REFERENCES pessoas (ID_Pessoas));
    
    
insert into Pessoas (Nome) values
    ('Juliana'),   
    ('Julio'),   
    ('Márcio');  

insert into Carros (Nome, Marca, ID_Pessoa) values  
  ('Gol', 'Wolks',2 ),  
  ('Palio', 'Fiat', 3);    
  
  select*from Pessoas
  INNER JOIN Carros
  where Pessoas.ID_Pessoas = Carros.ID_Pessoa;

truncate table Pessoas;