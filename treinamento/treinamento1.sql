create table treino2(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum("F", "M"),
peso decimal(5,2),
altura decimal (3,2),
nacionalidade varchar (20) default 'Brasil',
primary key(id)
);