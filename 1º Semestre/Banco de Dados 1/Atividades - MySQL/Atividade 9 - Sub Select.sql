/* Exibir os itens do acervo em ordem alfabética divididos por tipo do item */
select Item.descricao as Item,
	   Item.tipo_item as Tipo
from Item
order by Item, Tipo;
            
/* Exibir os consulentes que fizeram empréstimo dentro de determinado período */
select usuario.nome as nome,
	   emprestimos.data_emprestimo as emprestimo
from usuario
inner join emprestimos on
		   usuario.id_user =	emprestimos.id_user
where emprestimos.data_emprestimo < curdate() and
      emprestimos.data_emprestimo > "2020-10-15"
order by nome;

/* Exibir quantas vezes os itens foram emprestados em ordem decrescente (os mais emprestados primeiro) */
select item.descricao as Item,
count(emprestimos.id_item) as emprestimo	   
from item
inner join emprestimos on
item.id_item = emprestimos.id_item 
group by Item
order by emprestimo desc;

/* Listar os itens reservados */
select item.descricao as Item,
       item.situacao_item as Situacao       
from item
where item.situacao_item = "Alugado"
order by Item;

/* Listar Itens destruídos/perdidos em determinado período */
select item.id_item as Id,
	   item.descricao as Descricao,
       item.situacao_item as Situacao 
from item
inner join emprestimos on
		   item.id_item = emprestimos.id_item
where item.situacao_item = "Devolução Atrasada" and
      emprestimos.data_devolucao > "2020-03-01" and
      emprestimos.data_devolucao < "2020-07-30"
order by Id;

/* Comando Inner Join e left join */
select cursos.descricao as curso,
	   classes.descricao as classe,
       alunos.nome 
from cursos 
inner join classes on
		   classes.id_classe = classe.id
left join alunos on
           alunos.id_classe = classes.id
order by curso, classe, nome;

/* sub select */
select nome, 
		(select classes.descricao from classes where classes.id = alunos.id_classe) as classe
		(select id_curso from classes where id = alunos.id_classe
			where id=(select idcurso from classes where id=alunos.id_classes) as cursos)
from alunos

select curso, coalesce (classe,'classe não cadastrada') as classe, nome
from	(select nome,
			(select classes.descricao from classes where classes.id = alunos.id_classe) as classe
			(select id_curso from classes where id = alunos.id_classe
				where id=(select idcurso from classes where id=alunos.id_classes)) as cursos
from alunos) as A
where classe is not null
order by curso, classe, nome;