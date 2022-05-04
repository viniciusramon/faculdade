/* Cria Tabela de Equipes */
create table equipe (cd_eq int not null primary key,
						cd_pais int,
						nm_eq varchar(50)
                         );
                         
/* Inserir os dados na tabela de Equipes */
insert into equipe values (1, 1, "Ferrari");
insert into equipe values (2, 1, "Mercedes");
insert into equipe values (3, 2, "MacLaren");
insert into equipe values (4, 2, "Porshe");
insert into equipe values (5, 3, "Suzuki");
insert into equipe values (6, 4, "Honda");
                         
/* Cria Tabela de países */
create table pais (cd_pais int not null primary key, 
						nm_pais varchar(50) not null
                       );
                       
/* Inserir os dados na tabela de Países */
insert into pais values (1, "Italia");
insert into pais values (2, "Brasil");
insert into pais values (3, "França");
insert into pais values (4, "Japão");
insert into pais values (5, "Espanha");
insert into pais values (6, "Alemanha");

/* Cria Tabela de Circuitos */
create table circuito (cd_cir int not null primary key,
						cd_pais int,
						nm_cir varchar(50)
						);

/* Inserir os dados na tabela de Circuitos */
insert into circuito values (1,1, "Interlagos");
insert into circuito values (2,1, "Monaco");
insert into circuito values (3,2, "Laguna Seca");
insert into circuito values (4,3, "Gran Turismo");
insert into circuito values (5,4, "Forza");
insert into circuito values (6,5, "Morumbi");
	
/* Cria Tabela de Pilotos */
create table piloto (cd_pil int not null primary key,
						cd_eq int,
                        cd_pais int,
						nm_pil varchar(50) not null
                       );
                       
/* Inserir os dados na tabela de Pilotos */                       
insert into piloto values (1,1,1, "Alex Rodrigues");
insert into piloto values (2,1,2, "Marcos Camargo");
insert into piloto values (3,2,3, "Felipe Massa");
insert into piloto values (4,3,3, "Airton Senna");
insert into piloto values (5,3,4, "Pepa Pig");
insert into piloto values (6,5,7, "Hulk Fagundes");
insert into piloto values (7,3,5, "Antônio Martines");

select * from piloto 

/* Cria Tabela de Provas */
create table prova (cd_pro int not null primary key,
						cd_cir int,
						nm_pro varchar(50),
						dt_pro date);
                        
/* Inserir os dados na tabela de Pilotos */                       
insert into prova values (1,1, "Tudo ou Nada","2021-03-19");
insert into prova values (2,1, "Mortal Kombat","2020-04-25");
insert into prova values (3,2, "Vida Sofrida","2021-03-02");
insert into prova values (4,3, "Plus Ultra","2022-07-17");
insert into prova values (5,3, "Avante Vingadores","2021-09-12");
insert into prova values (6,5, "Vai que é Tua","2021-06-09");
   
/* Cria Tabela de Classificação */
create table classificacao (cd_pil int not null,
							cd_pro int not null,
							posicao int,
							primary key (cd_pil, cd_pro));
                            
/* Inserir os dados na tabela de Pilotos */                       
insert into classificacao values (1,1,1);
insert into classificacao values (2,1,2);
insert into classificacao values (3,2,3);
insert into classificacao values (4,3,1);
insert into classificacao values (5,3,18);
insert into classificacao values (6,5,9);

/* Cria Chave Extrangeira para a Tabela de Pilotos e a Tabela de Equipes */
alter table piloto add constraint FK_piloto_1 foreign key (cd_eq) 
	references equipe(cd_eq);
    
 /* Cria Chave Extrangeira para a Tabela de Equipes e a Tabela de Países */
alter table equipe add constraint FK_equipe_1 foreign key (cd_pais) 
	references pais(cd_pais);
 
 /* Cria Chave Extrangeira para a Tabela de Circuitos e a Tabela de Países */
alter table circuito add constraint FK_circuito_1 foreign key (cd_pais) 
	references pais(cd_pais);   

 /* Cria Chave Extrangeira para a Tabela de Pilotos e a Tabela de Países */
alter table piloto add constraint FK_piloto_2 foreign key (cd_pais) 
	references pais(cd_pais);  
    
 /* Cria Chave Extrangeira para a Tabela de Provas e a Tabela de Circuitos */
alter table prova add constraint FK_prova_1 foreign key (cd_cir) 
	references circuito(cd_cir);  
    
 /* Cria Chave Extrangeira para a Tabela de Classificação e a Tabela de Provas */
alter table classificacao add constraint FK_classificacao_1 foreign key (cd_pro) 
	references prova(cd_pro); 

/* Cria Chave Extrangeira para a Tabela de Classificação e a Tabela de Pilotos */
alter table classificacao add constraint FK_classificacao_2 foreign key (cd_pil) 
	references piloto(cd_pil); 

/* 1) Listar os nomes dos países, em ordem ascendente. */

select nm_pais as Nome from pais order by nome;

/* 2) Listar o nome de cada equipe seguida do nome do país que ela representa. */

select nm_eq as Nome,
	   nm_pais as Pais
from equipe 
inner join pais on
		   pais.cd_pais = equipe.cd_pais
order by nome, pais;

/* 3) Listar o nome dos pilotos que obtiveram 1º lugar em alguma prova (posiçao=1). Não é necessário repetir o nome do 
piloto caso ele tenha obtido o 1º lugar em mais de uma prova. */

select posicao as Posicao,
	   nm_pil as Nome,
       nm_pro as Prova
from classificacao 
inner join piloto on
		   piloto.cd_pil = classificacao.cd_pil
inner join prova on
		   prova.cd_pro = classificacao.cd_pro           
where classificacao.posicao = 1
order by nome, posicao, prova;

/* 4) Listar o nome dos pilotos, seguido do nome do circuito em que ocorreu a prova e a posição obtida. */

select nm_pil as Nome,
	   nm_cir as Circuito,
       nm_pro as Prova,
       posicao as Posicao
from classificacao 
inner join piloto on
		   piloto.cd_pil = classificacao.cd_pil
inner join prova on
		   prova.cd_pro = classificacao.cd_pro  
inner join circuito on
		   circuito.cd_cir = prova.cd_cir 
order by nome,circuito, prova, posicao;

/* 5) Listar o nome dos circuitos onde não ocorreu nenhuma prova. */

select nm_cir as nome
from circuito 
left join prova on
		   prova.cd_cir = circuito.cd_cir
where prova.cd_pro is null
order by nome;

/* 6) Listar a quantidade de pilotos cadastrados. */

select 
count(piloto.cd_pil) as Total_Pilotos	   
from piloto
order by Total_Pilotos;

/* 7) Listar o nome da equipe, seguida do número de pilotos da equipe. */

select nm_eq as Nome_Equipe,
count(piloto.cd_pil) as Quantidade_Piloto	   
from equipe
inner join piloto on
piloto.cd_eq = equipe.cd_eq 
group by Nome_Equipe
order by Nome_Equipe;

/* 8) Listar o nome da equipe, seguida do número de pilotos da equipe, somente quando o número de pilotos por equipe for
maior do que 2. */

select Nome_Equipe, Quantidade_Piloto
from (
	select nm_eq as Nome_Equipe,
	count(piloto.cd_pil) as Quantidade_Piloto	   
	from equipe
	inner join piloto on
	piloto.cd_eq = equipe.cd_eq 
	group by Nome_Equipe
    ) as Equipe
where Quantidade_Piloto >2
order by Nome_Equipe;
