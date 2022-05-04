-- Criar tabelas
create table ambulatorio (
	numeroA int not null primary key auto_increment,
    andar int,
    capacidade int
    );
    
create table medico(
	crm int not null primary key,
    nome varchar(50),
    idade int,
    cidade varchar(50),
    especialidade varchar(50),
    numeroA int,
	
    -- Foreign key (nome campo tabela filho) references Tabela_Pai (nome campo tabela pai)
	foreign key (numeroA) references ambulatorio(numeroA)    
    );
    
create table paciente(
	rg bigint not null primary key,
    nome varchar(50),
    idade int,
    cidade varchar(50),
    doenca varchar(50)
    );

create table consulta(
	id int not null primary key auto_increment,
    crm int,
    rg bigint,
    dataHora datetime,
	
    -- Foreign key (nome campo tabela filho) references Tabela_Pai (nome campo tabela pai)
	foreign key (crm) references medico(crm),
	foreign key (rg) references paciente(rg)
    );

create table funcionario(
	rg bigint not null primary key,
    nome varchar(50),
    idade int,
    cidade varchar(50),
    salario numeric(10,2)
    );
  
-- buscar os dados dos pacientes que estão com sarampo
insert into paciente (rg, nome, idade, cidade, doenca)
	values (468544501, 'Vinicius Ramon', 27, 'Limeira/SP', 'Sarampo'),
		   (12345678911, 'Jarbeas Data', 55, 'Americana/SP', 'Sarampo'),
		   (12121212121, 'Alex Sandro', 44, 'Santa Barbara do Oeste/SP', 'Gripe');
           
select *
	from paciente
where doenca = "Sarampo";

-- buscar os dados dos médicos ortopedistas com mais de 40 anos
insert into ambulatorio (andar, capacidade)
	values (2, 25),
		   (5, 200);
           
insert into medico (crm, nome, idade, cidade, especialidade, numeroA)
	value (123, 'Jeca Joca', 38, 'Limeira/SP', 'Ortopedia', 2),
		  (456, 'Luiz Lua', 40, 'Santa Barbara do Oeste/SP', 'Dentista', 1),
          (789, 'Diego Costa', 42, 'Americana/SP', 'Pediatra',2);
          
select *
	from medico
where especialidade = "ortopedia" and idade > 40 ;

-- buscar os dados das consultas, exceto aquelas marcadas para os médicos com CRM 46 e 79
insert into medico (crm, nome, idade, cidade, especialidade, numeroA)
	value (46, 'Jack Jones', 50, 'Santa Barbara do Oeste/SP', 'Dentista', 2),
		  (79, 'Lois Lane', 38, 'Limeira/SP', 'Ortopedia', 1);
    
insert into consulta (crm, rg, dataHora)
	values (123, 468544501, str_to_date('26/08/2021 21:14', '%d/%m/%Y %H:%i')),
		   (456, 12345678911, str_to_date('26/08/2021 21:16', '%d/%m/%Y %H:%i')),
           (46, 12345678911, str_to_date('26/08/2021 21:20', '%d/%m/%Y %H:%i')),
           (79, 12345678911, str_to_date('26/08/2021 21:18', '%d/%m/%Y %H:%i')),
           (789, 12121212121, str_to_date('26/08/2021 21:20', '%d/%m/%Y %H:%i')
			);
            
select *
	from consulta
where crm not in ( 46, 79);

-- buscar os dados dos ambulatórios do quarto andar que ou tenham capacidade igual a 50 ou tenham número superior a 10
insert into ambulatorio (andar, capacidade)
	values (2, 150),
		   (4, 50),
           (3, 13),
           (5, 44),
           (2, 17),
           (1, 50),
           (1, 15),
           (2, 250),
		   (2, 100),
		   (4, 200);

select *
	from ambulatorio
where andar = 4 and (capacidade = 50 or capacidade > 10);


-- buscar o nome e a especialidade de todos os médicos
select nome, especialidade
	from medico;
    
-- buscar o número dos ambulatórios do terceiro andar
select numeroA
	from ambulatorio
    where andar = 3;
    
-- buscar o CRM dos médicos e as datas das consultas para os pacientes com RG 122 e 725
select crm, date_format(dataHora, '%d/%m/%Y') dataHora
	from consulta
    where rg in (122, 725);
    
-- buscar os números dos ambulatórios, exceto aqueles do segundo e quarto andares, que suportam mais de 50 pacientes
select numeroA
	from ambulatorio
    where andar <> 2 and andar <> 4 and capacidade > 50;
    
drop table consulta;
drop table paciente;
drop table funcionario;

-- Aula 12/08/2021

insert into aluno(nome,curso,dataInicio)
	values ('Vinicius Ramon', 'TADS', str_to_date('08/02/2021','%d/%m/%Y')
    );

select ra, nome, curso, date_format(dataInicio,'%d/%m/%Y') dataIni
	from aluno; 

insert into aluno(nome, curso, dataInicio)
	values ('Edilson', 'TADS', str_to_date('08/02/2021','%d/%m/%Y')),
		   ('Lucas', 'TADS', str_to_date('08/02/2021','%d/%m/%Y')),
		   ('Luiz', 'TADS', str_to_date('08/02/2021','%d/%m/%Y')),
		   ('Miguel', 'TADS', str_to_date('08/02/2021','%d/%m/%Y')),
	       ('Bruno', 'TADS', str_to_date('08/02/2021','%d/%m/%Y')),
	       ('Caio', 'TADS', str_to_date('08/02/2021','%d/%m/%Y'));

alter table professor
	change salario salario numeric(10,5);
    
insert into professor(nome, dataInicio, salario)
	values ('Barreto', str_to_date('08/02/2021','%d/%m/%Y'), 5989.35),
		   ('Fernando', str_to_date('08/02/2021','%d/%m/%Y'), 7588.50),
		   ('Thiago', str_to_date('08/02/2021','%d/%m/%Y'), 5860.78),
		   ('Alex', str_to_date('08/02/2021','%d/%m/%Y'), 8090.29),
	       ('Jonas', str_to_date('08/02/2021','%d/%m/%Y'), 3698.99),
	       ('Mauricio', str_to_date('08/02/2021','%d/%m/%Y'), 12874.87);

update professor
	set salario = 5989.35, dataInicio = str_to_date('01/01/2017','%d/%m/%Y') where matricula = 13;
update professor
	set salario = 7588.50, dataInicio = str_to_date('08/02/2019','%d/%m/%Y') where matricula = 14;
update professor
	set salario = 5860.50, dataInicio = str_to_date('05/01/2017','%d/%m/%Y') where matricula = 16;
update professor
	set salario = 8090.29, dataInicio = str_to_date('01/04/2010','%d/%m/%Y') where matricula = 18;

select nome, upper(nome), lower(nome)
	from professor where upper(nome) = 'BARRETO';

select * from disciplica;
select * from aluno;

insert into disciplica(nome, matricula_professor)
	values ('Desenvolvimento Mobile', 13),
		   ('POO', 14),
		   ('Bando de Dados I', 15),
		   ('Bando de Dados I', 17),
		   ('Bando de Dados II', 16),
		   ('Engenharia de Software', 13),
		   ('Português', 18);

insert into aula(ra_aluno, id_disciplina)
	values 	(1, 1),
			(2, 2),
			(3, 3),
			(4, 4),
			(5, 5),
			(6, 6),
			(7, 7),
			(1, 2),
			(2, 3),
            (3, 4),
			(4, 5),
			(5, 6);
            
select aluno.nome as nome, disciplica.nome as materia from aluno, disciplica where aluno.RA = disciplica.id;

SELECT aluno.nome alunoNome, 
       disciplica.nome disciplinaNome,
       professor.nome nomeProfessor
  FROM disciplica
       JOIN aula
         ON aula.id_disciplina = disciplica.id
	   JOIN aluno
         ON aluno.ra = aula.ra_aluno
	   JOIN professor
		 ON professor.matricula = disciplica.matricula_professor;

SELECT aluno.nome AS alunoNome,
       disciplica.nome AS discplinaNome
  FROM disciplica,
       aula,
	   aluno
 WHERE aluno.ra = aula.ra_aluno
   AND disciplica.id = aula.id_disciplina;