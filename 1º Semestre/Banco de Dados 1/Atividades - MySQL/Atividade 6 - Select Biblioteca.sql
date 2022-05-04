create table Tipo_Usuario (id_user int not null primary key, 
					     tipo_user varchar(50)
                         );

insert into Tipo_Usuario values (1, "Aluno");
insert into Tipo_Usuario values (2, "Professor");
insert into Tipo_Usuario values (3, "Funcionário");
insert into Tipo_Usuario values (4, "Outros");


create table Usuario (id_user int not null primary key, 
					  ra varchar(9) not null,
                      nome varchar(150),
                      endereco varchar(200),
                      telefone varchar(20),
                      tipo_user varchar(50));
                      
alter table usuario add dt_nasc date;
update usuario set dt_nasc = "1995-06-04" where id_user = 12;

insert into Usuario values (1, "0157/12-3", "Vinicius Ramon Da Costa Reis",	"Rua Antônio Menardi, 683 Jd. Gustavo Picinini", "+55 19 99406-3541","Aluno");
insert into Usuario values (2, "0160/12-3", "Artur Breeden Harlan Wehausen", "Avenida Três, 531 Jardim Residencial Village", "+55 19 94241-7832","Professor");
insert into Usuario values (3, "0128/12-3", "Cláudio Chester Backhaus",	"Rua Deputado Octávio Lopes, 2015 Centro", "+55 19 92223-1769","Funcionário");
insert into Usuario values (4, "0126/12-3", "César Compton Riecke",	"Rua Roque Orlando de Souza, 201 Jardim Cidade Universitária I", "+55 19 91480-6552","Outros");
insert into Usuario values (5, "0127/12-3", "Ernesto Oakley Grossenbacher",	"Rua Emílio Bortolan, 422 Parque das Nações", "+55 19  91930-5565","Aluno");
insert into Usuario values (6, "0150/12-3", "Filipe Clifford Lindemann", "Rua Gilmar Luiz Sebastião, 513 Jardim Clube do Bosque", "+55 19 93955-4721","Professor");
insert into Usuario values (7, "0151/12-3", "Florencio Prescott Harrington Baumeister",	"Rua Brigadeiro Vicente Faria Lima, 752 Centro", "+55 19 94845-7258","Funcionário");
insert into Usuario values (8, "0152/12-3", "Flávio Clapham Goldmann",	"Rua Armando Pereira, 716 Jd. Jardim Dibi", "+55 19 96894-0885","Outros");
insert into Usuario values (9, "0153/12-3", "Júlio Clapham Stansfield Brase", "Rua João Poletti, 666 Conjunto Habitacional Ferdinando Marchi", "+55 22 90617-5099","Aluno");
insert into Usuario values (10, "0154/12-3", "Luis Appleton Riehl", "Avenida Joaquim Lopes Aguila, 209 Vila São Jorge", "+55 76 98361-5221","Professor");
insert into Usuario values (11, "0155/12-3", "Victorino Ridley Göbel", "Avenida Dom João Bosco, 841 Vila Rezende", "+55 27 94578-0633","Funcionário");
insert into Usuario values (12, "0156/12-3", "Andréia Ridley Scarbrough Staudte", "Rua Mário Sérgio Baltieri, 632 Água Branca", "+55 47 93787-4904","Outros");
insert into Usuario values (13, "0158/12-3", "Clara Goody Oestreich", "Rua Santos Dumont, 457 Centro", "+55 19 98511-8426","Aluno");
insert into Usuario values (14, "0159/12-3", "Elba Harley Singer", "Rua Santos Dumont, 457 Centro", "+55 19 90718-1350","Professor");
insert into Usuario values (15, "0120/12-3", "Gertrudes Westbrook Weisgerber", "Rua Santos Dumont, 682 Centro", "+55 19 99585-7242","Funcionário");
insert into Usuario values (16, "0121/12-3", "Helena Anderton Kallenbach", "Rua Capiberibe, 774 Vila Dainese", "+55 19 96356-4572","Outros");
insert into Usuario values (17, "0122/12-3", "Lídia Manley Hettinger", "Avenida Doosan, 775 Parque São Jerônimo", "+55 19 99059-9825","Aluno");
insert into Usuario values (18, "0123/12-3", "Maria Garfield Schlumberger", "Rua João Scarazato, 386 Santa Cruz", "+55 19 93353-7590","Professor");
insert into Usuario values (19, "0124/12-3", "Salete Tindall Hector", "Rua Camanducaia, 932 Vila Dainese", "+55 19 97483-3450","Funcionário");
insert into Usuario values (20, "0125/12-3", "Teresa Brady Kinzel", "Rua Xingú, 552 Jardim São Roque", "+55 19 91517-2712","Outros");


create table Controle_Prazo (id_prazo int not null primary key,
							 id_item int,
							 id_user int,
							 qtde_dias int);
                              
insert into Controle_Prazo values (1, 1, 1, 7);
insert into Controle_Prazo values (2, 2, 2, 21);
insert into Controle_Prazo values (3, 3, 3, 7);
insert into Controle_Prazo values (4, 4, 4, 3);
insert into Controle_Prazo values (5, 5, 5, 7);
insert into Controle_Prazo values (6, 1, 6, 14);
insert into Controle_Prazo values (7, 2, 7, 7);
insert into Controle_Prazo values (8, 3, 8, 3);
insert into Controle_Prazo values (9, 4, 9, 6);
insert into Controle_Prazo values (10, 5, 10, 28);
insert into Controle_Prazo values (11, 1, 11, 6);
insert into Controle_Prazo values (12, 2, 12, 1);
insert into Controle_Prazo values (13, 3, 13, 5);
insert into Controle_Prazo values (14, 4, 14, 14);
insert into Controle_Prazo values (15, 5, 15, 5);
insert into Controle_Prazo values (16, 1, 16, 3);
insert into Controle_Prazo values (17, 2, 17, 4);
insert into Controle_Prazo values (18, 3, 18, 21);
insert into Controle_Prazo values (19, 4, 19, 4);
insert into Controle_Prazo values (20, 5, 20, 2);
insert into Controle_Prazo values (21, 1, 1, 3);
insert into Controle_Prazo values (22, 2, 2, 28);
insert into Controle_Prazo values (23, 3, 3, 3);
insert into Controle_Prazo values (24, 4, 4, 1);
insert into Controle_Prazo values (25, 5, 5, 2);
insert into Controle_Prazo values (26, 1, 6, 21);
insert into Controle_Prazo values (27, 2, 7, 2);
insert into Controle_Prazo values (28, 3, 8, 3);
insert into Controle_Prazo values (29, 4, 9, 1);
insert into Controle_Prazo values (30, 5, 10, 14);


create table Emprestimos (id_emprestimo int not null primary key,
						  id_item int not null,
						  id_user int not null,
                          id_prazo int,
                          data_emprestimo date,
                          data_prevista date,
                          data_devolucao date);

insert into Emprestimos values (1, 1, 1, 1, "2020-05-21", "2020-05-29", "2020-06-01");
insert into Emprestimos values (2, 2, 2, 2, "2020-03-21", "2020-04-12", "2020-05-02");
insert into Emprestimos values (3, 3, 3, 3, "2020-04-22", "2020-05-30", "2020-06-03");
insert into Emprestimos values (4, 4, 4, 4, "2020-05-22", "2020-06-25", "2020-08-04");
insert into Emprestimos values (5, 5, 5, 5, "2020-06-23", "2020-06-29", "2020-09-05");
insert into Emprestimos values (6, 1, 6, 6, "2020-08-24", "2020-08-05", "2020-10-06");
insert into Emprestimos values (7, 2, 7, 7, "2020-09-24", "2020-10-29", "2020-11-07");
insert into Emprestimos values (8, 3, 8, 8, "2020-10-25", "2020-11-25", "2020-03-08");
insert into Emprestimos values (9, 4, 9, 9, "2020-11-25", "2020-11-29", "2020-04-09");
insert into Emprestimos values (10, 5, 10, 10, "2020-03-25", "2020-04-29", "2020-05-10");
insert into Emprestimos values (11, 1, 11, 11, "2020-04-26", "2020-05-29", "2020-06-01");
insert into Emprestimos values (12, 2, 12, 12, "2020-05-27", "2020-06-29", "2020-08-02");
insert into Emprestimos values (13, 3, 13, 13, "2020-06-28", "2020-06-29", "2020-09-03");
insert into Emprestimos values (14, 4, 14, 14, "2020-08-29", "2020-08-29", "2020-10-04");
insert into Emprestimos values (15, 5, 15, 15, "2020-09-30", "2020-10-29", "2020-11-05");
insert into Emprestimos values (16, 1, 16, 16, "2020-10-31", "2020-11-29", "2020-03-16");
insert into Emprestimos values (17, 2, 17, 17, "2020-11-20", "2020-11-29", "2020-04-17");
insert into Emprestimos values (18, 3, 18, 18, "2020-03-21", "2020-04-29", "2020-05-18");
insert into Emprestimos values (19, 4, 19, 19, "2020-04-22", "2020-05-29", "2020-06-19");
insert into Emprestimos values (20, 5, 20, 20, "2020-05-23", "2020-06-29", "2020-08-20");
insert into Emprestimos values (21, 1, 1, 21, "2020-06-24", "2020-06-29", "2020-09-21");
insert into Emprestimos values (22, 2, 2, 22, "2020-08-25", "2020-09-29", "2020-10-22");
insert into Emprestimos values (23, 3, 3, 23, "2020-09-26", "2020-10-29", "2020-11-23");
insert into Emprestimos values (24, 4, 4, 24, "2020-10-27", "2020-11-29", "2020-03-24");
insert into Emprestimos values (25, 5, 5, 25, "2020-11-28", "2020-11-29", "2020-04-25");
insert into Emprestimos values (26, 1, 6, 26, "2020-03-29", "2020-04-29", "2020-05-21");
insert into Emprestimos values (27, 2, 7, 27, "2020-04-30", "2020-05-29", "2020-06-22");
insert into Emprestimos values (28, 3, 8, 28, "2020-05-31", "2020-06-29", "2020-08-23");
insert into Emprestimos values (29, 4, 9, 29, "2020-06-20", "2020-06-29", "2020-09-24");
insert into Emprestimos values (30, 5, 10, 30, "2020-08-21", "2020-09-29", "2020-10-25");

                       
create table Tipo_Item (id_item int not null primary key,
						classificacao_item varchar(20),
                        descricao varchar(100));

insert into Tipo_Item values (1, "Comum", "A Menina Que Roubava Livros");
insert into Tipo_Item values (2, "Comum", "A Menina Que Roubava Livros");
insert into Tipo_Item values (3, "Comum", "Titanic");
insert into Tipo_Item values (4, "Comum", "Harry Potter E A Pedra Filosofal");
insert into Tipo_Item values (5, "Comum", "A Menina Que Roubava Livros");
insert into Tipo_Item values (6, "Especial", "Titanic");
insert into Tipo_Item values (7, "Especial", "Harry Potter E A Pedra Filosofal");
insert into Tipo_Item values (8, "Especial", "Fundamentos da Matemática");
insert into Tipo_Item values (9, "Especial", "Física I");
insert into Tipo_Item values (10, "Especial", "Programação em C++");
insert into Tipo_Item values (11, "Comum", "Marley e Eu");
insert into Tipo_Item values (12, "Comum", "Avengers");
insert into Tipo_Item values (13, "Comum", "Programção em Python");
insert into Tipo_Item values (14, "Comum", "Física I");
insert into Tipo_Item values (15, "Comum", "Cálculo I");
insert into Tipo_Item values (16, "Comum", "Programação em C++");
insert into Tipo_Item values (17, "Comum", "Banco de Dados I");
insert into Tipo_Item values (18, "Comum", "O Senhor dos Anéis");
insert into Tipo_Item values (19, "Comum", "O Senhor dos Anéis");
insert into Tipo_Item values (20, "Comum", "O Menino do Pijama Listrado");

create table Item (id_item int not null primary key,
				   descricao varchar(100),
				   tipo_item varchar(50),
                   classificacao_item varchar(20),
                   situacao_item varchar(50));

insert into Item values (1, "A Menina Que Roubava Livros", "Livro", "Comum", "Disponível");
insert into Item values (2, "A Menina Que Roubava Livros", "DVD", "Comum", "Alugado");
insert into Item values (3, "Titanic", "DVD", "Especial", "Devolução Atrasada");
insert into Item values (4, "Harry Potter E A Pedra Filosofal", "Livro", "Especial", "Disponível");
insert into Item values (5, "A Menina Que Roubava Livros", "Livro", "Comum", "Alugado");
insert into Item values (6, "Titanic", "Livro", "Comum", "Devolução Atrasada");
insert into Item values (7, "Harry Potter E A Pedra Filosofal", "Livro", "Comum", "Disponível");
insert into Item values (8, "Fundamentos da Matemática", "Livro", "Especial", "Alugado");
insert into Item values (9, "Física I", "Livro", "Especial", "Devolução Atrasada");
insert into Item values (10, "Programação em C++", "Livro", "Especial", "Disponível");
insert into Item values (11, "Marley e Eu", "DVD", "Comum", "Alugado");
insert into Item values (12, "Avengers", "DVD", "Comum", "Devolução Atrasada");
insert into Item values (13, "Programção em Python", "Livro", "Comum", "Disponível");
insert into Item values (14, "Física I", "Livro", "Comum", "Alugado");
insert into Item values (15, "Cálculo I", "Livro", "Comum", "Devolução Atrasada");
insert into Item values (16, "Programação em C++", "Livro", "Comum", "Disponível");
insert into Item values (17, "Banco de Dados I", "Livro", "Comum", "Alugado");
insert into Item values (18, "O Senhor dos Anéis", "DVD", "Comum", "Devolução Atrasada");
insert into Item values (19, "O Senhor dos Anéis", "Livro", "Comum", "Disponível");
insert into Item values (20, "O Menino do Pijama Listrado", "DVD", "Comum", "Alugado");

select * from Tipo_Usuario;
select * from Usuario;
select * from Controle_Prazo;
select * from Emprestimos;
select * from Tipo_Item;
select * from Item;

/* Exibir os itens do acervo em ordem alfabética divididos por tipo do item */
select Item.descricao as Item,
	   Item.tipo_item as Tipo
from Item
order by Item, Tipo;

/* Exibir os itens em atraso */
select emprestimos.data_devolucao as devolucao,
	   emprestimos.data_prevista as previsao,
       emprestimos.id_item,
       item.descricao
from emprestimos, item
where emprestimos.data_devolucao is null and
	  emprestimos.data_prevista < curdate() and
	  emprestimos.id_item = item.id_item;
            
/* Exibir os consulentes que fizeram empréstimo dentro de determinado período */
select usuario.nome as nome,
	   emprestimos.data_emprestimo as emprestimo
from usuario, emprestimos
where usuario.id_user =	emprestimos.id_user and
	  emprestimos.data_emprestimo < curdate() and
      emprestimos.data_emprestimo > "2020-10-15"
order by nome;

/* Exibir quantas vezes os itens foram emprestados em ordem decrescente (os mais emprestados primeiro) */
select item.descricao as Item,
count(emprestimos.id_item) as emprestimo	   
from item, emprestimos
where item.id_item = emprestimos.id_item 
group by Item
order by emprestimo desc;

/* Exibir os consulentes que fazem aniversario no dia de hoje */
select usuario.dt_nasc as nascimento,
	   usuario.nome as nome
from usuario
where usuario.dt_nasc like "%04-20";

/* Listar os itens reservados */
select item.descricao as Item,
       item.situacao_item as Situacao       
from item
where item.situacao_item = "Alugado"
order by Item;

/* Listar Itens destruídos/perdidos em determinado período */
select item.id_item as Id,
	   item.descricao as Descricao,
       item.situacao_item as Situacao 
from item, emprestimos
where item.id_item = emprestimos.id_item and
      item.situacao_item = "Devolução Atrasada" and
      emprestimos.data_devolucao > "2020-03-01" and
      emprestimos.data_devolucao < "2020-07-30"
order by Id;

/*
select item.descricao as Item,
	   item.tipo_item as Tipo,
       count(alunos.nome)
from cursos, classes, alunos
where cursos.id = classes.id_curso and
	  alunos.id_classe = classe.id 
group by curso, classe
order by curso, classe

select count(id) from classes
select max(id) as cod from classes
select avg(id) as cod from classes
*/
