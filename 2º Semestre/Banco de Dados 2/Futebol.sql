create database futebolEinstein;
use futebolEinstein;

create table timeF(
	id int not null primary key auto_increment,
    nome varchar(50)
    );

create table jogo(
	id int not null primary key auto_increment,
    idTime1 int,
    idTime2 int,
    golsTime1 int,
    golsTime2 int,
	statusJ char(1),
    foreign key (idTime1) references timeF(id),
    foreign key (idTime2) references timeF(id)
    );

drop table classificacao;

create table classificacao(
	id int not null primary key auto_increment,
    idTime int,
    golsPro int,
    golsContra int,
    pontos int,
    foreign key (idTime) references timeF(id)
    );
    
create table gols(
	id int not null primary key auto_increment,
    idTime int,
    idJogo int,
	foreign key (idTime) references timeF(id),
	foreign key (idJogo) references jogo(id)
    );

DROP procedure atualizaClassificacao;

delimiter $$
		create procedure atualizaClassificacao(idJogoP int)
			begin
				declare pontosTime1V, pontosTime2V int;
                declare golsTime1V, golsTime2V int;
                declare idTime1V, idTime2V int;
					select idTime1 into idTime1V from jogo where id = idJogoP;
					select idTime2 into idTime2V from jogo where id = idJogoP;
					select golsTime1 into golsTime1V from jogo where id = idJogoP;
					select golsTime2 into golsTime2V from jogo where id = idJogoP;
                    
                    if 	golsTime1V > golsTime2V then
						set pontosTime1V = 3;
                        set pontosTime2V = 0;
					else
						if 	golsTime1V < golsTime2V then
							set pontosTime1V = 0;
							set pontosTime2V = 3;
						else
							set pontosTime1V = 1;
                            set pontosTime2V = 1;
						end if;
					end if;
                    
                    update classificacao
						set golsPro = golsPro + golsTime1V,
							golsContra = golsContra + golsTime2V,
                            pontos = pontos + pontosTime1V
					where idTime = idTime1V;
                    
                    update classificacao
						set golsPro = golsPro + golsTime2V,
							golsContra = golsContra + golsTime1V,
                            pontos = pontos + pontosTime2V
					where idTime = idTime2V;
			end;
$$

delimiter $$
	create trigger fechaJogo after update on jogo for each row
		begin
			if new.statusJ = 'F' then
				call atualizaClassificacao(new.id);
			end if;
		end;
	$$

-- AO INSERIR EM TIME, CRIAR UM REGISTRO DE CLASSIFICAÇÃO
delimiter $$
	create procedure criaClassificacao(idTimeV int)
			begin
					insert into classificacao(idTime, golsPro, golsContra, pontos) values (idTimeV,0,0,0);
			end;
		$$
        
delimiter $$
	create trigger criaClassificacao after insert on timeF for each row
		begin
				call criaClassificacao(new.id);
		end;
	$$
    
    

drop procedure adicionaTime;

delimiter $$
	create procedure adicionaTime(novoTime int)
			begin
					insert into classificacao(idTime, golsPro, golsContra, pontos) values (novoTime,0,0,0);
			end;
		$$
        
drop trigger inserirTime;

delimiter $$
	create trigger inserirTime after insert on timeF for each row
		begin
				call adicionaTime(new.id);
		end;
	$$
    
insert into timeF(nome) values("Juventude");

select * from classificacao;




-- Ao inserir em gol, modificar o valor na tabela jogo

delimiter $$
	create procedure computaGols(idTimeV int, idJogoV int)
			begin                    
                    update jogo
						set golsTime1 = golsTime1 + 1
					where idTime1 = idTimeV
                    and	  id = idJogoV;
                    
                  update jogo
						set golsTim2 = golsTime2 + 1
					where idTime2 = idTimeV
                    and	  id = idJogoV;
			end;
		$$

delimiter $$
	create trigger calculaGols after insert on gols for each row
		begin
				call computaGols(new.idTime, new.idJogo);
		end;
	$$

insert into timeF(nome) values('Palmeiras');
insert into timeF(nome) values('Santos');

insert into jogo(idTime1, idTime2, statusJ) values (1, 2, 'A');

select * from jogo;

insert into gols(idTime, idJogo) values (1, 1);

select * from classificacao;

update jogo set statusJ='F' where idJogo = 1;