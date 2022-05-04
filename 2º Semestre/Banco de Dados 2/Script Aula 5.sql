-- Structured Query Language
-- Comandos de DDL - Data Definition Language
-- Este comando cria um BD chamado aulaEinstein
CREATE DATABASE aulaEinstein;
USE aulaEinstein;

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
SELECT nome, especialidade
  FROM medico;
-- 6) buscar o número dos ambulatórios do terceiro andar ou acima
SELECT numeroA
  FROM ambulatorio
 WHERE andar >= 3;
-- 7) buscar o CRM dos médicos e as datas das consultas para os pacientes com RG 122
--    e 725
SELECT crm, dataHora
  FROM consulta
 WHERE rg IN (12345678911);
 
 
 SELECT * FROM consulta;
-- 8) buscar os números dos ambulatórios, exceto aqueles do segundo e quarto andares
--    , que suportam mais de 50 pacientes
SELECT numeroA
  FROM ambulatorio
 WHERE capacidade > 50
   AND andar NOT IN (2, 4);
   
-- 9) buscar o nome dos médicos que têm consulta marcada e as datas das suas 
--    consultas
SELECT nome, date_format(dataHora, '%d/%m/%Y %H:%i')
  FROM consulta
       JOIN medico
         ON consulta.crm = medico.crm;
SELECT nome, date_format(dataHora, '%d/%m/%Y %H:%i')
  FROM consulta,
       medico
 WHERE consulta.crm = medico.crm;

SELECT date_format(dataHora, '%d/%m/%Y %H:%i')
  FROM consulta
 WHERE consulta.crm IN (
     SELECT crm
       FROM medico);
-- 10) buscar o número e a capacidade dos ambulatórios do quinto andar e o nome dos 
--     médicos que atendem neles
SELECT ambulatorio.numeroA, ambulatorio.capacidade, medico.nome
  FROM ambulatorio
       JOIN medico
	     ON medico.numeroA = ambulatorio.numeroA
 WHERE andar = 5;
-- 11) buscar o nome dos médicos e o nome dos seus pacientes com consulta marcada, 
--     assim como a data destas consultas
SELECT medico.nome, paciente.nome, consulta.dataHora
  FROM consulta
       JOIN medico
         ON medico.crm = consulta.crm
	   JOIN paciente
         ON paciente.rg = consulta.rg;
-- 12) buscar os nomes dos médicos ortopedistas com consultas marcadas para o 
--     período da manhã (7hs-12hs) do dia 15/04/03
-- 13) buscar os nomes dos pacientes, com consultas marcadas para os médicos João 
--     Carlos Santos ou Maria Souza, que estão com pneumonia
