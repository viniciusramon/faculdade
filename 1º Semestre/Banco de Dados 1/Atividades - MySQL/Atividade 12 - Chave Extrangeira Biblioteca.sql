/* chave extrangeira */
alter table usuario add constraint FK_usuario_1 foreign key (tipo_user) 
	references tipo_usuario(tipo_user);
    
alter table controle_prazo add constraint FK_controle_prazo_1 foreign key (id_user) 
	references tipo_usuario(tipo_user);
     
alter table emprestimos add constraint FK_emprestimo_1 foreign key (id_user) 
	references usuarios(id_user);    
    
 alter table controle_prazo add constraint FK_controle_prazo_2 foreign key (id_item) 
	references tipo_item(id_item);     

alter table emprestimos add constraint FK_emprestimo_2 foreign key (id_item) 
	references item(id_item); 
    
alter table item add constraint FK_item_1 foreign key (id_item) 
	references tipo_item(id_item); 