create database folha;
use folha;

create table funcionario(id int not null primary key auto_increment,
						 nome varchar(50),
						 salarioBruto float);

create table folhaMes(id int not null primary key auto_increment,
					  mes int,
                      ano int,
                      qtdeDias int);

create table holerite(id int not null primary key auto_increment,
					  idFuncionario int,
                      idFolhaMes int,
                      fgts float,
                      inss float,
                      valeTransporte float,
                      ir float,
                      salarioLiquido float,
                      foreign key (idFuncionario) references funcionario(id),
                      foreign key (idFolhaMes) references folhaMes(id)
                      );

delimiter $$
	create procedure insereFunc(vNome varchar(50),
								vSalarioBruto float)
		begin
			insert into funcionario(nome, salarioBruto)
				values(vNome, vSalarioBruto);        
        end;
$$

call insereFunc("Barreto", 1000);
call insereFunc("João", 1500);
call insereFunc("Edilson", 10000);

select * from funcionario;

delimiter $$
	create function calculaFGTS(vIDFunc int)
		returns float 
			begin
				declare retorno float;
					select salarioBruto*0.11 into retorno
						from funcionario
					where id = vIDFunc;
				return retorno;
			end;
$$

delimiter $$
	create procedure insereHolerite(vIDFolhaMes int)
		begin
			insert into holerite (idFuncionario, idFolhaMes)
				select id, vIDFolhaMes
					from funcionario;
        end;
$$

delimiter $$
	create procedure atualizaFGTS(vIDFolhaMes int)
		begin
			update holerite
				set fgts = calculaFGTS(idFuncionario) 
			where idFolhaMes = vIDFolhaMes;
        end;
$$

delimiter $$
	create trigger insereFolha after insert on folhaMes for each row
		begin
			call insereHolerite(new.id);
            call atualizaFGTS(new.id);
		end;
$$

insert into folhaMes(mes, ano, qtdeDias)
	values(11, 2021, 19);
    
select * from holerite;

-- INSS

delimiter $$
	create function calculaINSS(vIDFunc int)
		returns float 
			begin
				declare retorno float;
					select salarioBruto*0.08 into retorno
						from funcionario
					where id = vIDFunc;
				return retorno;
			end;
$$

delimiter $$
	create procedure atualizaINSS(vIDFolhaMes int)
		begin
			update holerite
				set inss = calculaINSS(idFuncionario) 
			where idFolhaMes = vIDFolhaMes;
        end;
$$

drop trigger insereFolha;

delimiter $$
	create trigger insereFolha after insert on folhaMes for each row
		begin
			call insereHolerite(new.id);
            call atualizaFGTS(new.id);
            call atualizaINSS(new.id);
		end;
$$

insert into folhaMes(mes, ano, qtdeDias)
	values(11, 2021, 19);
 
 drop table holerite;
 
select * from holerite;

-- Vale Transporte

drop function calculaVT;

delimiter $$
	create function calculaVT(vIDFunc int)
		returns float 
			begin
				declare valor6porc, retorno float;
                
					-- pego valor dos 6% do salario bruto
					select salarioBruto*0.06 into valor6porc 
						from funcionario
					where id = vIDFunc;
                    
                    if valor6porc < 180 then
						set retorno = 180 - valor6porc;
					else
						set retorno = 0;
					end if;
				return retorno;
			end;
$$

delimiter $$
	create procedure atualizaVT(vIDFolhaMes int)
		begin
			update holerite
				set valeTransporte = calculaVT(idFuncionario) 
			where idFolhaMes = vIDFolhaMes;
        end;
$$

delimiter $$
	create trigger insereFolha after insert on folhaMes for each row
		begin
			call insereHolerite(new.id);
            call atualizaFGTS(new.id);
            call atualizaINSS(new.id);
            call atualizaVT(new.id);
		end;
$$

insert into folhaMes(mes, ano, qtdeDias)
	values(11, 2021, 19);
  
select * from holerite;

-- Imposto de Renda
drop function calculaIR;

delimiter $$
	create function calculaIR(vIDFunc int)
		returns float 
			begin
				declare vSalarioBruto, retorno float;
                
					-- pego valor dos % do salario bruto
					select salarioBruto into vSalarioBruto from funcionario where id = vIDFunc;
                    
                    if vSalarioBruto < 1250 then
						set retorno = 0;
					elseif vSalarioBruto < 2500 then
						set retorno = vSalarioBruto*0.08;
					elseif vSalarioBruto < 3500 then
						set retorno = vSalarioBruto*0.11;
					elseif vSalarioBruto < 4500 then
						set retorno = vSalarioBruto*0.175;
					else 
						set retorno = vSalarioBruto*0.275;
					end if;
				return retorno;
			end;
$$

delimiter $$
	create procedure atualizaIR(vIDFolhaMes int)
		begin
			update holerite
				set ir = calculaIR(idFuncionario) 
			where idFolhaMes = vIDFolhaMes;
        end;
$$

delimiter $$
	create trigger insereFolha after insert on folhaMes for each row
		begin
			call insereHolerite(new.id);
            call atualizaFGTS(new.id);
            call atualizaINSS(new.id);
            call atualizaVT(new.id);
            call atualizaIR(new.id);
		end;
$$

insert into folhaMes(mes, ano, qtdeDias)
	values(11, 2021, 19);
  
select * from holerite;

-- Salario Liquido
drop function calculaSL;

delimiter $$
	create function calculaSL(vIDFunc int, vIDFolhaMes int)
		returns float 
			begin
				declare retorno float;
                
					select salarioBruto - fgts - inss + valeTRansporte - ir
						into retorno
							from holerite
								join funcionario
									on funcionario.id = holerite.idFuncionario
							where idFuncionario = vIDFunc
								and idFolhaMes = vIDFolhaMes;
				return retorno;
			end;
$$

drop procedure atualizaSL;

delimiter $$
	create procedure atualizaSL(vIDFolhaMes int)
		begin
			update holerite
				set salarioLiquido = calculaSL(idFuncionario, vIDFolhaMes) 
			where idFolhaMes = vIDFolhaMes;
        end;
$$

delimiter $$
	create trigger insereFolha after insert on folhaMes for each row
		begin
			call insereHolerite(new.id);
            call atualizaFGTS(new.id);
            call atualizaINSS(new.id);
            call atualizaVT(new.id);
            call atualizaIR(new.id);
            call atualizaSL(new.id);
		end;
$$

drop trigger insereFolha;

insert into folhaMes(mes, ano, qtdeDias)
	values(11, 2021, 19);
  
select * from holerite;

-- Faça uma função para mostrar a lista de funcionarios de uma determinada folha
drop function listaFuncionario;
delimiter $$
	create function listaFuncionario(vIdFolhaMes int) returns varchar(500)
		begin
			declare retorno varchar (500);
				select group_concat(funcionario.nome) into retorno
					from holerite
						join folhaMes
							on holerite.idFolhaMes = folhaMes.id
						join funcionario
							on holerite.idFuncionario = funcionario.id
					where idFolhaMes = vIdFolhaMes;
			return retorno;
		end;
$$

select listaFuncionario(11);

-- Busque todas as folhas cuja soma dos salarios liquidos sejam superiores a 2000
			
	select folhaMes.id, sum(holerite.salarioLiquido)
		from folhaMes
			join holerite
				on holerite.idFolhaMes = FolhaMes.id
		group by folhaMes.id
		having sum(holerite.salarioLiquido) > 2000;
        
	select idFolhaMes, sum(salarioLiquido)
		from holerite
        group by idFolhaMes
        having sum(salarioLiquido) > 2000;

select * from holerite;