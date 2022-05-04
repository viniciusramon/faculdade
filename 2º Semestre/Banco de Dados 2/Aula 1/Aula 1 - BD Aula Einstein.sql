-- Structured Query Language
-- Comandos de DDL - Data Definition Language
-- Este comando cria um BD chamado aulaEinstein
create database aulaEinstein;

-- Este comando seta para usar o BD aulaEinstein
use aulaEinstein;

-- Criar tabelas
create table aluno (
	RA int not null primary key auto_increment,
    nome varchar(50),
    curso varchar(60),
    dataInicio date);
    
create table professor(
	matricula int not null primary key auto_increment,
    nome varchar(50),
    dataInicio date,
    salario numeric(6,2)); -- 999999,99
    
create table disciplica(
	id int not null primary key auto_increment,
    nome varchar(50),
    matricula_professor int,
    -- Foreign key (nome campo tabela filho) references Tabela_Pai (nome campo tabela pai)
    foreign key (matricula_professor) references professor(matricula)
    );

create table aula(
	id int not null primary key auto_increment,
    ra_aluno int,
    id_disciplina int,
    -- Foreign key (nome campo tabela filho) references Tabela_Pai (nome campo tabela pai)
    foreign key (ra_aluno) references aluno(ra),
	foreign key (id_disciplina) references disciplica(id)
    );
  
  
  
  
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