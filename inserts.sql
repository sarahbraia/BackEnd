use test;
CREATE table funcionarios (
	id int not null auto_increment,
    nome varchar(30) NOT NULL,
    nascimento date,
    sexo enum ('M', 'F'),
    peso decimal (5,2),
    altura decimal (3,2),
    nacionalidade varchar(20) DEFAULT 'Brasil',
    primary key (id)
    )engine = innodb;
    
    insert into funcionarios values
    (default, 'alex tenorio da silva', '2018-02-03', 'M', '68.5', '2.05', default);
    select *from funcionarios;
    
    insert into funcionarios (nome, nascimento, sexo, peso, altura)
		values('Gabriela', '1998-02-03', 'F', '58,5', 1.60),
			('João', '1998-02-03', 'F', '58,5', 1.60),
            ('Marcio', '1998-02-03', 'F', '58,5', 1.60);
            
            select*from funcionarios;
            select*from funcionarios where peso  > 67;
            
	insert into funcionarios (nascimento, sexo, peso, altura) values
				('2020-11-11','F','58,5',1.60);
            