insert into treino2 values

(default, 'Pedrita', '2000-05-09', 'F', '50.27', '1.60', 'Brasil'),
(default, 'Bene', '2000-05-09', 'F', '50.27', '1.60', default),
(default, 'Rafael', '1931-6-09', 'M', '100.12', '1.80', 'Inglaterra');

select * from treino2;

alter table treino2
add column profissao varchar(20) after nome;