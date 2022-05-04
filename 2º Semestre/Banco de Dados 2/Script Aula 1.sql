-- Structured Query Language
-- Comandos de DDL - Data Definition Language
-- Este comando cria um BD chamado aulaEinstein
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
    salario    DECIMAL(6,2)); -- 999999,99

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