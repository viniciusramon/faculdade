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

/* função de auto incremento */
create table teste(id int auto_increment not null primary key,
					curso varchar(50),
                    classe varchar(50),
                    aluno varchar(80));
                    
/* função de concatenação */
select concat ('insert into teste (curso, classe, aluno) values ( ''',
		cursos.descricao,''',''',
	   classes.descricao,''',''',
       alunos.nome ,''');''') as campo
from cursos 
inner join classes on
		   classes.id_classe = classe.id
left join alunos on
           alunos.id_classe = classes.id
           
order by curso, classe, nome; /*não se usa 'order by' em concatenação*/