create table consulentes (	ra int not null primary key,
							nome varchar(50),
							endereco varchar(50),
							telefone char(14),
							cpf char(14),
							tipoconsulente int);

create table tipoconsulente (	id int auto_increment not null primary key,
								descricao varchar(50));

create table tipoacervo (	id int auto_increment not null primary key,
							descricao varchar(50));
                            
create table prazo (	tipoacervo int not null,
						tipoconsulente int not null,
                        prazo int default 1,
                        primary key(tipoacervo,tipoconsulente));
                        
create table acervo (	id int not null primary key,
						nome varchar(80),
                        editora varchar(50),
                        autor varchar(100),
                        dataentrada date,
                        tipoacervo int,
                        podeemprestar char(1) default 'S',
                        situacao char(1) default 'D',
                        datasaida date,
                        cutter char(10));
                                           
create table emprestimo (	id int not null primary key,
							idacervo int,
                            raconsulente int,
                            dataemprestimo date,
                            datadevolucao date,
                            datadedevolucao date);

create table reserva (	ra int not null,
						cutter char(10) not null,
                        datareserva date not null,
                        primary key (ra,cutter,datareserva));
                        
alter table consulentes add constraint FK_cons1 foreign key (tipoconsulente) references tipoconsulente(id);

alter table emprestimo add constraint FK_empres1 foreign key (raconsulente) references consulentes(ra);

alter table reserva add constraint FK_reserv1 foreign key (ra) references consulentes(ra);

alter table prazo add constraint FK_prazo1 foreign key (tipoconsulente) references tipoconsulente(id);

alter table prazo add constraint FK_prazo2 foreign key (tipoacervo) references tipoacervo(id);

alter table emprestimo add constraint FK_empres2 foreign key (idacervo) references acervo(id);

alter table acervo add constraint FK_acerv1 foreign key (tipoacervo) references tipoacervo(id);



alter table reserva add constraint FK_reserv2 foreign key (cutter) references acervo(cutter); /* Essa chave não pode ser criada porque o campo Cutter tem valores repetidos em ambas as tabelas */
