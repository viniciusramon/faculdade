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

INSERT INTO professor(nome      , dataInicio                           , salario)
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
       
-- Habilita o BD aulaEinstein para ser usado
USE aulaEinstein;

-- seleciona TODOS os campos de aula, sem filtros
SELECT *
  FROM aula;

SELECT *
  FROM aluno;

-- seleciona o nome do aluno, apelidando-o de nomeAluno,
-- seleciona curso apelidando de cursoAluno
-- seleciona dataInicio apelidando de "Data de Início"
SELECT nome    AS nomeAluno, 
       curso      cursoAluno, 
       dataInicio "Data de Início"
  FROM aluno;

-- seleciona o nome do aluno apelidando a tabela aluno de a
SELECT a.nome
  FROM aluno a;
-- mostra o id da aula ligando aula em disciplina
-- para a ligação, usa-se a FK da tabela.
SELECT aula.id
  FROM aula,
	   disciplina
 WHERE aula.id_disciplina = disciplina.id;

-- mesmo de cima, apelidando as tabelas
SELECT au.id id_aula
  FROM aula       au,
	   disciplina di
 WHERE au.id_disciplina = di.id;

SELECT *
  FROM aluno;

-- seleciona o aluno cujo ra = 4
SELECT *
  FROM aluno
 WHERE ra = 4;

-- selecioa os alunos cujos ra são 4 e 5
SELECT *
  FROM aluno
 WHERE ra = 4 OR ra = 5;

-- seleciona os alunos cujos ra são 3,4,5 e 9
SELECT *
  FROM aluno
 WHERE ra IN (3,4,5,9);

-- seleciona o aluno cujo ra = 5 e nome = Bruno
SELECT *
  FROM aluno
 WHERE ra = 5
   AND nome = "Bruno";

-- % = varios caracteres; _ = 1 caractere
-- seleciona os alunos que começam com L
SELECT *
  FROM aluno
 WHERE nome LIKE "L%";

-- seleciona o aluno cujo nome termina com o
SELECT *
  FROM aluno
 WHERE nome LIKE "%o";

SELECT *
  FROM aluno
 WHERE UPPER(nome) LIKE "%o";
 -- seleciona os alunos cuja 2a letra é "u" ou "a"
SELECT *
  FROM aluno
 WHERE nome LIKE "_u%" OR nome LIKE "_a%";

-- Ambulatório (númeroA, andar, capacidade)
CREATE TABLE ambulatorio(
   numeroA    INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   andar      INT,
   capacidade INT);
-- Médico (CRM, nome, idade, cidade, especialidade, númeroA)
CREATE TABLE medico(
   CRM           INT NOT NULL PRIMARY KEY,
   nome          VARCHAR(50),
   idade         INT,
   cidade        VARCHAR(50),
   especialidade VARCHAR(50),
   numeroA       INT,
   FOREIGN KEY (numeroA) REFERENCES ambulatorio(numeroA));
-- Paciente (RG, nome, idade, cidade, doença)
CREATE TABLE paciente(
   RG     BIGINT NOT NULL PRIMARY KEY,
   nome   VARCHAR(50),
   idade  INT,
   cidade VARCHAR(50),
   doenca VARCHAR(50));
-- Consulta (id, CRM, RG, data, hora)
CREATE TABLE consulta(
   id       INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   CRM      INT,
   RG       BIGINT,
   dataHora DATETIME,
   FOREIGN KEY (CRM) REFERENCES medico(CRM),
   FOREIGN KEY (RG)  REFERENCES paciente(RG));
-- Funcionário (RG, nome, idade, cidade, salário)
CREATE TABLE funcionario(
   RG      BIGINT NOT NULL PRIMARY KEY,
   nome    VARCHAR(50),
   idade   INT,
   cidade  VARCHAR(50),
   salario FLOAT);
-- 1) buscar os dados dos pacientes que estão com sarampo
DROP TABLE consulta;
DROP TABLE paciente;
DROP TABLE funcionario;
INSERT INTO paciente(RG,     nome               , idade, 
                     cidade, doenca)
              VALUES(12345678911, 'Jarbeas Data',    55, 
                     'Americana/SP', 'Sarampo'),
					(11987654321, 'Alex Sandro',     44,
                     'Limeira/SP', 'Sarampo'),
                    (12121212121, 'Edilson Filho',   19,
                     'SBO/SP',    'Gripe');
SELECT *
  FROM paciente
 WHERE doenca = 'Sarampo';
-- 2) buscar os dados dos médicos ortopedistas com mais de 40 anos
INSERT INTO ambulatorio(andar, capacidade)
                 VALUES(    2, 25),
					   (    5, 200);
INSERT INTO medico(CRM, nome,       idade, cidade, 
                   especialidade , numeroA)
            VALUES(123, 'Jeca Joca',   38, 'Limeira/SP',
                   'Ortopedia', 1),
				  (456, 'Luiz Lua',    40, 'SBO/SP', 
                   'Dentista', 2),
				  (789, 'Diego Costa', 42, 'Americana/SP',
                  'Pediatra', 1);
SELECT *
  FROM medico
 WHERE especialidade = 'Ortopedia'
   AND idade > 40;
-- 3) buscar os dados das consultas, exceto aquelas marcadas para os 
-- médicos com CRM 46 e 79
INSERT INTO medico(CRM, nome,       idade, cidade, 
                   especialidade , numeroA)
            VALUES(79, 'Lois Lane',   38, 'Limeira/SP',
                   'Ortopedia', 1),
				  (46, 'Jack Jones',  50, 'SBO/SP',
                   'Dentista', 2);

INSERT INTO consulta(crm, rg, datahora)
      VALUES (79, 12345678911, STR_TO_DATE('26/08/2021 21:14','%d/%m/%Y %H:%i')),
             (46, 12345678911, STR_TO_DATE('26/08/2021 21:16','%d/%m/%Y %H:%i')),
             (123, 12345678911, STR_TO_DATE('26/08/2021 21:18','%d/%m/%Y %H:%i')),
             (456, 12345678911, STR_TO_DATE('26/08/2021 21:20','%d/%m/%Y %H:%i')),
             (789, 12345678911, STR_TO_DATE('26/08/2021 21:22','%d/%m/%Y %H:%i'));

SELECT *
  FROM consulta
 WHERE crm <> 46 
   AND crm <> 79;
   -- WHERE crm NOT IN (46, 79)
-- 4) buscar os dados dos ambulatórios do quarto andar que ou tenham 
-- capacidade igual a 50 ou tenham número superior a 10
INSERT INTO ambulatorio(andar, capacidade)
				 VALUES(   2, 150),
                       (   4, 50),
                       (   3, 13),
                       (   5, 44),
                       (   2, 17),
                       (   1, 50),
                       (   1, 15),
                       (   2, 250),
                       (   2, 100),
                       (   4, 200);
SELECT *
  FROM ambulatorio
 WHERE andar = 4
   AND (capacidade = 50
	OR  numeroA > 10);
-- 5) buscar o nome e a especialidade de todos os médicos
-- 6) buscar o número dos ambulatórios do terceiro andar
-- 7) buscar o CRM dos médicos e as datas das consultas para os pacientes com RG 122 e 725
-- 8) buscar os números dos ambulatórios, exceto aqueles do segundo e quarto andares, que suportam mais de 50 
-- pacientes
