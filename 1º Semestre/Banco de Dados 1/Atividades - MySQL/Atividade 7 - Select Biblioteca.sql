/* Exibir os itens do acervo em ordem alfabética divididos por tipo do item */
select Item.descricao as Item,
	   Item.tipo_item as Tipo
from Item
order by Item, Tipo;

/* Exibir os itens em atraso */
select emprestimos.data_devolucao as devolucao,
	   emprestimos.data_prevista as previsao,
       emprestimos.id_item,
       item.descricao
from emprestimos, item
where emprestimos.data_devolucao is null and
	  emprestimos.data_prevista < curdate() and
	  emprestimos.id_item = item.id_item;
            
/* Exibir os consulentes que fizeram empréstimo dentro de determinado período */
select usuario.nome as nome,
	   emprestimos.data_emprestimo as emprestimo
from usuario, emprestimos
where usuario.id_user =	emprestimos.id_user and
	  emprestimos.data_emprestimo < curdate() and
      emprestimos.data_emprestimo > "2020-10-15"
order by nome;

/* Exibir quantas vezes os itens foram emprestados em ordem decrescente (os mais emprestados primeiro) */
select item.descricao as Item,
count(emprestimos.id_item) as emprestimo	   
from item, emprestimos
where item.id_item = emprestimos.id_item 
group by Item
order by emprestimo desc;

/* Exibir os consulentes que fazem aniversario no dia de hoje */
select usuario.dt_nasc as nascimento,
	   usuario.nome as nome
from usuario
where usuario.dt_nasc like "%04-20";

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
from item, emprestimos
where item.id_item = emprestimos.id_item and
      item.situacao_item = "Devolução Atrasada" and
      emprestimos.data_devolucao > "2020-03-01" and
      emprestimos.data_devolucao < "2020-07-30"
order by Id;