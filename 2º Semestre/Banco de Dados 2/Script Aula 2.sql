-- Structured Query Language
-- Comandos de DDL - Data Definition Language
-- Este comando cria um BD chamado aulaEinstein
DROP DATABASE aulaEinstein;
CREATE DATABASE aulaEinstein;
-- Este comando seta para usar o BD aulaEinstein
USE aulaEinstein;

-- Criar tabelas
CREATE TABLE aluno(
   ra         INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nome       VARCHAR(50),
   curso      VARCHAR(60),
   dataInicio DATE);

CREATE TABLE professor(
	matricula  INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome       VARCHAR(50),
    dataInicio DATE,
    salario    DECIMAL(6,2)); -- 9999,99

CREATE TABLE disciplina(
   id                  INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nome                VARCHAR(50),
   matricula_professor INT,
   -- FOREIGN KEY (NOME CAMPO TABELA FILHO) REFERENCES TABELA_PAI(NOME CAMPO TABELA PAI)
   FOREIGN KEY (matricula_professor) REFERENCES professor(matricula));

CREATE TABLE aula(
   id            INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   ra_aluno      INT,
   id_disciplina INT,
   FOREIGN KEY (ra_aluno)      REFERENCES aluno(ra),
   FOREIGN KEY (id_disciplina) REFERENCES disciplina(id));

USE aulaEinstein;

INSERT INTO aluno(nome  , curso, dataInicio)
           VALUES('Luiz', 'ADS', STR_TO_DATE('08/02/2021','%d/%m/%Y'));

INSERT INTO aluno(nome     , curso, dataInicio)
           VALUES('Edilson', 'ADS', STR_TO_DATE('08/02/2021','%d/%m/%Y')),
                 ('Lucas'  , 'ADS', STR_TO_DATE('08/02/2021','%d/%m/%Y')),
                 ('Miguel' , 'ADS', STR_TO_DATE('08/02/2021','%d/%m/%Y')),
                 ('Bruno'  , 'ADS', STR_TO_DATE('08/02/2021','%d/%m/%Y')),
                 ('Caio'   , 'ADS', STR_TO_DATE('08/02/2021','%d/%m/%Y'));

SELECT ra, nome, curso, DATE_FORMAT(dataInicio, '%d/%m/%Y') dataIni 
  FROM aluno;

INSERT INTO professor(nome, dataInicio, salario)
               VALUES('Fernando', str_to_date('01/01/2017', '%d/%m/%Y'), 3000),
                     ('Edilson' , str_to_date('08/02/2021', '%d/%m/%Y'), 80000),
                     ('Barreto' , str_to_date('08/02/2021', '%d/%m/%Y'), 5000),
                     ('Thiago'  , str_to_date('01/01/2019', '%d/%m/%Y'), 2500),
                     ('Alex'    , str_to_date('01/04/2010', '%d/%m/%Y'), 600);

ALTER TABLE professor
   CHANGE salario salario DECIMAL (8,2);

/* UPDATE professor
   SET salario = 80000,
       dataInicio = '2021-02-08'
 WHERE UPPER(nome)   = 'EDILSON';
    -- LOWER() 
*/

SELECT nome, UPPER(nome), LOWER(nome)
  FROM professor
 WHERE UPPER(nome) = 'BARRETO';

-- TRUNCATE TABLE professor;

-- DELETE FROM  professor;

-- ALTER TABLE professor
--   CHANGE matricula matricula  INT NOT NULL PRIMARY KEY AUTO_INCREMENT;

SELECT *
  FROM professor;

INSERT INTO disciplina(nome               , matricula_professor)
                VALUES('Banco de Dados II', 3);

INSERT INTO disciplina(nome               , matricula_professor)
                VALUES('Desenvolvimento Mobile', 3);
INSERT INTO disciplina(nome               , matricula_professor)
                VALUES('POO', 1);
INSERT INTO disciplina(nome               , matricula_professor)
                VALUES('Banco de Dados I', 5);
INSERT INTO disciplina(nome               , matricula_professor)
                VALUES('Desenvolvimento Web I', 4);

DELETE FROM professor
 WHERE matricula = 3;

SELECT * FROM aluno;
SELECT * FROM disciplina;

INSERT INTO aula(ra_aluno, id_disciplina)
         VALUES (1,        2),
                (2,        2),
                (3,        2),
                (4,        2),
                (5,        2),
                (6,        2),
                (2,        3),
                (4,        3);

SELECT *
  FROM aula;

SELECT aluno.nome      nomeAluno,
       disciplina.nome nomeDisciplina,
       professor.nome  nomeProfessor
  FROM aula
       JOIN aluno
         ON aluno.ra      = aula.ra_aluno
	   JOIN disciplina
         ON disciplina.id = aula.id_disciplina
       JOIN professor
         ON professor.matricula = disciplina.matricula_professor;
       
       