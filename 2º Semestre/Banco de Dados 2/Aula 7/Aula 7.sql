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
-- consultas
USE aulaEinstein;
SELECT medico.nome nomeMedico, 
       date_format(consulta.dataHora, '%d/%m/%Y %H/%i') dataConsulta
  FROM medico
       JOIN consulta
	     ON consulta.crm = medico.crm;
-- 10) buscar o número e a capacidade dos ambulatórios do quinto andar e o nome 
-- dos médicos que atendem neles
SELECT ambulatorio.numeroA,
       ambulatorio.capacidade,
       medico.nome
  FROM ambulatorio
       JOIN medico
         ON medico.numeroA = ambulatorio.numeroA
 WHERE ambulatorio.andar = 5;
-- 11) buscar o nome dos médicos e o nome dos seus pacientes com consulta 
-- marcada, assim como a data destas consultas
SELECT medico.nome   nomeMedico,
       paciente.nome nomePaciente,
       date_format(consulta.dataHora, '%d/%m/%Y %H:%i') dataConsulta
  FROM consulta
       JOIN medico
         ON consulta.crm = medico.crm
	   JOIN paciente
         ON paciente.rg = consulta.rg;
-- 12) buscar os nomes dos médicos ortopedistas com consultas marcadas para o 
-- período da manhã (7hs-12hs) do dia 15/04/03
SELECT medico.nome
  FROM consulta
       JOIN medico
         ON medico.crm = consulta.crm
 WHERE UPPER(especialidade) = 'ORTOPEDIA' -- lower()
   AND date_format(consulta.dataHora, '%d/%m/%Y %H:%i') >= '26/08/2021 19:00'
   AND date_format(consulta.dataHora, '%d/%m/%Y %H:%i') <= '26/08/2021 23:59';
   
SELECT medico.nome
  FROM consulta
       JOIN medico
         ON medico.crm = consulta.crm
 WHERE UPPER(especialidade) = 'ORTOPEDIA' -- lower()
   AND consulta.dataHora BETWEEN '2021-08-26 19:00' AND '2021-08-26 23:59';
-- 13) buscar os nomes dos pacientes, com consultas marcadas para os médicos 
-- João Carlos Santos ou Maria Souza, que estão com pneumonia
SELECT paciente.nome
  FROM consulta
       JOIN medico
         ON medico.crm = consulta.crm
	   JOIN paciente
         ON paciente.rg = consulta.rg
 WHERE medico.nome     IN ('Diego Costa', 'Luiz Lua')
 -- WHERE (medico.nome = 'Diego Costa' OR medico.nome = 'Luiz Lua')
   AND paciente.doenca = 'Sarampo';
-- 14) buscar os nomes dos médicos e pacientes cadastrados no hospital
SELECT medico.nome, paciente.nome
  FROM medico,
       paciente;

  SELECT nome, crm, 'M' tipo
	FROM medico
UNION
  SELECT nome, rg AS crm, 'P' tipo
	FROM paciente;

-- 15) buscar os nomes e idade dos médicos, pacientes e funcionários que residem em 
-- Florianópolis
INSERT INTO funcionario(RG,          nome          , idade, cidade, salario)
                VALUES (12345678911, 'Jarbeas Data', 11,   'Limeira', 100),
                       (45454545455, 'John Lee'    , 56,   'Americana', 200),
                       (33445566778, 'Juno Join'   , 33,   'Limeira', 300),
                       (55555555555, 'Lauro Lu'    , 66,   'Limeira', 400);

  SELECT nome, idade
    FROM medico
   WHERE cidade = 'Limeira'
UNION
  SELECT nome, idade
    FROM paciente
   WHERE cidade = 'Limeira'
UNION
  SELECT nome, idade
    FROM funcionario
   WHERE cidade = 'Limeira';

SELECT nome, COUNT(*)
  FROM consulta
       JOIN paciente
         ON consulta.rg = paciente.rg
 GROUP BY nome;
-- 16) buscar os nomes e RGs dos funcionários que recebem salários abaixo de R$ 300,00 e 
-- que não estão internados como pacientes
SELECT nome, rg
  FROM funcionario
 WHERE salario < 300
   AND rg NOT IN (SELECT rg
                    FROM paciente);

-- 17) buscar os números dos ambulatórios onde nenhum médico dá atendimento
USE aulaEinstein;
SELECT ambulatorio.numeroA
  FROM ambulatorio LEFT JOIN medico
         ON medico.numeroA = ambulatorio.numeroA
 WHERE medico.nome IS NULL;
 
SELECT ambulatorio.numeroA
  FROM medico RIGHT JOIN ambulatorio
         ON medico.numeroA = ambulatorio.numeroA
 WHERE medico.nome IS NULL;

-- 18) buscar os nomes e RGs dos funcionários que estão internados como 
-- pacientes
SELECT funcionario.rg, funcionario.nome
  FROM funcionario
       JOIN paciente
            ON paciente.rg = funcionario.rg;
       
SELECT funcionario.rg, funcionario.nome
  FROM funcionario,
       paciente
 WHERE paciente.rg = funcionario.rg;
  
-- 19) Buscar o nome dos médicos que nunca consultaram
SELECT nome
  FROM medico
       LEFT JOIN consulta
         ON consulta.crm = medico.crm
 WHERE consulta.dataHora IS NULL;

INSERT INTO medico(CRM, nome,       idade, cidade, especialidade , numeroA)
            VALUES(1122, 'Luca Pivara', 25, 'Limeira/SP', 'Ortopedia', 1);

SELECT nome
  FROM medico
 WHERE crm NOT IN(SELECT consulta.CRM
                    FROM consulta);

-- 20) buscar os números dos ambulatórios que os médicos psiquiatras 
-- atendem
INSERT INTO medico(CRM, nome,       idade, cidade, especialidade , numeroA)
            VALUES(6677, 'Edilson Filho', 18, 'Limeira/SP', 'Psiquiatra', 3);

SELECT ambulatorio.numeroA, medico.nome
  FROM ambulatorio
       JOIN medico
	     ON medico.numeroA = ambulatorio.numeroA
 WHERE medico.especialidade = 'Psiquiatra';

-- 21) buscar o nome e o salário dos funcionários de Florianopolis e Sao 
-- José que estão internados como pacientes e têm consulta marcada com 
-- ortopedistas
SELECT funcionario.nome,
       funcionario.salario,
       consulta.dataHora
  FROM funcionario
       JOIN paciente
	     ON paciente.rg = funcionario.rg
	   JOIN consulta
         ON funcionario.rg = consulta.rg
	   JOIN medico
         ON medico.crm = consulta.crm
 WHERE funcionario.cidade IN ('Limeira', 'Americana', 'SBO')
   AND medico.especialidade = 'Ortopedia';
   
-- 22) buscar o nome dos funcionários que não são pacientes
select *
	from funcionario
		where rg not in (select rg
			from paciente);
            
select *
	from funcionario
		left join paciente
			on paciente.rg = funcionario.rg
	where paciente.rg is null;

-- 23) Buscar o nome dos funcionários que são pacientes
select *
	from funcionario
		where rg in (select rg
			from paciente);

select *
	from funcionario
		join paciente
			on paciente.rg = funcionario.rg