-- seleciona TODOS os campos de aula, sem filtros
select *
	from aula;

-- seleciona o nome do aluno, apelidando-o de "nomeAluno" 
-- seleciona curso apelidando de cursoAluno
-- seleciona dataInicio apelidando de "Data de Início"
select nome as nomeAluno, curso cursoAluno, dataInicio "Data de Início"
	from aluno;

-- seleciona o nome do aluno apelidando a tabela aluno de a
select a.nome from aluno a;

-- mostra o id da aula ligando aula em disciplina
-- para a ligação, usa-se a FK da tabela
select id
	from aula,
		 disciplica d
where aula.id_disciplina = disciplina.id;

-- mesmo de cima, apelidando as tabelas
select aula.id
	from aula,
		 disciplica
where aula.id_disciplina = disciplina.id;

-- mesmo de cima, apelidando as tabelas
select a.id
	from aula a,
		 disciplica d
where a.id_disciplina = d.id;

-- seleciona o aluno cujo ra=4 ou 5
select *
	from aluno
where ra=4 or ra=5;

-- seleciona os alunos cujo os ra's são 3,4,5 e 9
select *
	from aluno
where ra in(3,4,5,9);

-- seleciona o aluno cujo ra =4 e nome = "luiz"
select *
	from aluno
where ra = 4 and nome = "luiz";

-- % = varios caracteres; _ = 1 caractere
-- seleciona os alunos que começam com a letra L
select *
	from aluno
where nome like "L%";

-- % = varios caracteres; _ = 1 caractere
-- seleciona os alunos que o nome termina com a letra O
select *
	from aluno
where nome like "%o";

select *
	from aluno
where upper(nome) like "%o";

-- seleciona os alunos cujo a 2ª letra é U ou A
select *
	from aluno
where nome like "_u%" or "_a%";