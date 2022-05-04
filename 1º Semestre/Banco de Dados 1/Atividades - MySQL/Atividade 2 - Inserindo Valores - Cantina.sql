create table Fornecedor (id_fornecedor int not null primary key, 
					     nome_fornecedor varchar(100),
                         CNPJ char(18) not null unique,
                         telefone varchar(20),
                         email varchar(100));

insert into Fornecedor (id_fornecedor, nome_fornecedor, CNPJ, telefone, email ) values (3, "SAMSUNG", "07.569.158/0001-18", "0800 439 1857", "contato@samsung.com.br");

create table Compras (id_compra int not null primary key, 
					  id_fornecedor int,
                      dt_compra date,
                      dt_entrega date);

insert into Compras (id_compra, id_fornecedor, dt_compra, dt_entrega) values (3, 3, "2020-05-02", "2021-05-29");

create table Itens_da_Compra (id_compra int not null,
							  id_produto int not null,
                              valor_unit numeric(8,2),
                              qtde int,
                              primary key (id_compra, id_produto));
                              
insert into Itens_da_Compra (id_compra, id_produto, valor_unit, qtde) values (3, 3, 2987.65, 10);

create table Produtos (id_produto int not null primary key,
					   descricao varchar(100),
                       qtde_estoque int,
                       valor_venda numeric(8,2));

insert into Produtos (id_produto, descricao, qtde_estoque, valor_venda) values (3, "TV OLED '80", 50, 8999.90);
                       
create table Itens_da_Venda (id_venda int not null,
							 id_produto int not null,
                             valor_pago numeric (8,2),
                             qtde int,
                             primary key (id_venda, id_produto));

insert into Itens_da_Venda (id_venda, id_produto, valor_pago, qtde) values (3, 3, 10000.00, 1);

create table Venda (id_venda int not null primary key,
					dt_venda date,
                    forma_pgto int);

insert into Venda (id_venda, dt_venda, forma_pgto) values (3, "2021-08-12", 1);
