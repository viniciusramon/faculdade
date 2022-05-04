create table Fornecedor (id_fornecedor int not null primary key, 
					     nome_fornecedor varchar(100),
                         CNPJ char(18) not null unique,
                         telefone varchar(20),
                         email varchar(100));

create table Compras (id_compra int not null primary key, 
					  id_fornecedor int,
                      dt_compra date,
                      dt_entrega date);

create table Itens_da_Compra (id_compra int not null,
							  id_produto int not null,
                              valor_unit numeric(8,2),
                              qtde int,
                              primary key (id_compra, id_produto));

create table Produtos (id_produto int not null primary key,
					   descricao varchar(100),
                       qtde_estoque int,
                       valor_venda numeric(8,2));
                       
create table Itens_da_Venda (id_venda int not null,
							 id_produto int not null,
                             valor_pago numeric (8,2),
                             qtde int,
                             primary key (id_venda, id_produto));
                             
create table Venda (id_venda int not null primary key,
					dt_venda date,
                    forma_pgto int);