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

/* chave extrangeira */
select * from classes;
select * from cursos;

insert into classes values (10,'1º sem. enfermagem',null);

insert into cursos values (10, 'Enfermagem');

update cursos set id=15 where id=2;

update alunos set id_classe=15 where id_classe=12;

alter table classes add constraint FK_classes_1 foreign key (id_curso) 
	references cursos(id) on update cascade;
    
alter table alunos add foreign key (id_classe) 
	references classes(id);
    
alter table classes drop foreign key FK_classes_1;

delete from classes where id=9;

delete from cursos where id=2;

update classes set descricao = '1º semestre' where id=9;

update table alunos set id_classe = 5  where iclasses=3;
