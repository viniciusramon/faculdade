-- 1)	Criar o banco de dados prova_2309 (1 pt)
CREATE DATABASE prova_2309;
USE prova_2309;

-- 2)	Criar as tabelas da seguinte especificação 
-- (Já normalizada em 3FN): (2 pts)
-- a.	Fornecedor (ID, Nome)
CREATE TABLE fornecedor(
   id   INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nome VARCHAR(50));
-- b.	Produto (ID, Nome, Id_Fornecedor)
CREATE TABLE produto(
	id            INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome          VARCHAR(50),
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id));
-- c.	Preco (ID, ID_Produto, Data_Inicial, Valor)
CREATE TABLE preco(
   id           INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   id_produto   INT,
   data_inicial DATETIME,
   valor        FLOAT,
   FOREIGN KEY (id_produto) REFERENCES produto(id));
-- d.	NotaFiscal (ID, Nome_Cliente, Data)
CREATE TABLE notaFiscal(
   id           INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nome_cliente VARCHAR(50),
   dataNF       DATETIME);
-- e.	ItemNF (ID, ID_NotaFiscal, ID_Produto, Quantidade)
CREATE TABLE itemNF(
   id            INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   id_notaFiscal INT,
   id_produto    INT,
   quantidade    FLOAT);
-- Os tipos de dados, bem como as Chaves Primárias e Estrangeiras
-- devem ser especificados pelo analista (aluno).

-- 3)	Eliminar o campo "Nome_Cliente" da tabela NotaFiscal e 
-- acrescentar a seguinte tabela: (1 pt)
-- a.	Cliente (ID, Nome, CPF_CNPJ, Endereco)
-- Não se esqueça de criar a Chave Estrangeira ligando Cliente e 
-- NotaFiscal.
ALTER TABLE notaFiscal
DROP nome_cliente;

CREATE TABLE cliente(
   id       INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nome     VARCHAR(50),
   cpf_cnpj VARCHAR(50),
   endereco VARCHAR(50));

ALTER TABLE notaFiscal
ADD idCliente INT;

ALTER TABLE notaFiscal
ADD FOREIGN KEY (idCliente) REFERENCES cliente(id);

SELECT * FROM notaFiscal;

-- 4)	Insira dados nas tabelas especificadas na questão 2. 
-- Deve conter no mínimo 5 vendas (notas fiscais) emitidas. (1,5 pts)
INSERT INTO fornecedor(nome)
                VALUES('Pepsico'),
                      ('Ambev');

INSERT INTO produto(nome     , id_fornecedor)
			 VALUES('Cheetos'  , 1),
                   ('Torcida'  , 1),
                   ('Brahma'   , 2),
                   ('Coca-Cola', 2);

INSERT INTO preco(id_produto, data_inicial, valor)
           VALUES(         1, STR_TO_DATE('01/01/2021', '%d/%m/%Y'), 1.5),
                 (         1, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), 2.5),
                 (         2, STR_TO_DATE('01/01/2021', '%d/%m/%Y'), 0.5),
                 (         2, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), 2.0),
                 (         3, STR_TO_DATE('01/01/2021', '%d/%m/%Y'), 3.0),
                 (         3, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), 3.5),
                 (         4, STR_TO_DATE('01/01/2021', '%d/%m/%Y'), 5),
                 (         4, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), 6.5);

INSERT INTO cliente(nome           , cpf_cnpj        , endereco)
             VALUES('Luiz Barreto' , '123.456.789-99', 'Rua 1, 10'),
                   ('Edilson Filho', '987.654.321-11', 'Rua 2, 20');

INSERT INTO notaFiscal(idCliente, dataNF)
                VALUES(        1, STR_TO_DATE('23/09/2022', '%d/%m/%Y')),
                      (        1, STR_TO_DATE('24/09/2022', '%d/%m/%Y')),
                      (        2, STR_TO_DATE('25/09/2022', '%d/%m/%Y')),
                      (        2, STR_TO_DATE('26/09/2022', '%d/%m/%Y')),
                      (        2, STR_TO_DATE('27/09/2022', '%d/%m/%Y'));

INSERT INTO itemNF(id_notaFiscal, id_produto, quantidade)
            VALUES(            1,          1,         20),
                  (            1,          2,         5),
                  (            2,          3,         60),
                  (            2,          4,         3),
                  (            3,          1,         5),
                  (            3,          2,         1),
                  (            4,          3,         7),
                  (            4,          4,         6),
                  (            5,          1,         8),
                  (            5,          2,         10);

-- 5)	Realize uma seleção para mostrar todas as notas fiscais 
-- que possuam o valor total maior que R$ 100,00. (1,5 pts)

SELECT notaFiscal.ID, SUM(valorItem.valorItem) somaNF
  FROM notaFiscal,
       (SELECT itemNF.id_NotaFiscal idNota, 
			   (SELECT valor
				  FROM preco
				 WHERE id_produto = produto.id
				 ORDER BY data_inicial DESC
				 LIMIT 1)  * itemNF.quantidade valorItem
		  FROM itemNF,
			   produto
		 WHERE produto.id = itemNF.id_produto) valorItem
 WHERE notaFiscal.id = valorItem.idNota
 GROUP BY notaFiscal.ID
 HAVING SUM(valorItem.valorItem) > 100;

SELECT nota.id, nota.somaNF
  FROM (SELECT notaFiscal.ID, SUM(valorItem.valorItem) somaNF
		  FROM notaFiscal,
			   (SELECT itemNF.id_NotaFiscal idNota, 
					   (SELECT valor
						  FROM preco
						 WHERE id_produto = produto.id
						 ORDER BY data_inicial DESC
						 LIMIT 1)  * itemNF.quantidade valorItem
				  FROM itemNF,
					   produto
				 WHERE produto.id = itemNF.id_produto) valorItem
		 WHERE notaFiscal.id = valorItem.idNota
		 GROUP BY notaFiscal.ID) nota
 WHERE somaNF > 100;


SELECT notafiscal.id, 
       SUM(precoProduto.ultimoPreco * itemNF.quantidade) valorNF 
  FROM notaFiscal
	   JOIN itemNF
         ON itemNF.id_notaFiscal = notaFiscal.id
	   JOIN produto
         ON produto.id = itemNF.id_produto
	   JOIN (SELECT id_produto, (SELECT valor
								   FROM preco psub
								  WHERE data_inicial <= STR_TO_DATE('23/09/2021', '%d/%m/%Y')
								    AND ppai.id_produto = psub.id_produto
								  ORDER BY data_inicial DESC
								  LIMIT 1) ultimoPreco
		      FROM preco ppai
	         GROUP BY id_produto) precoProduto
         ON produto.id = precoProduto.id_produto
 GROUP BY notafiscal.id;

-- 6)	Altere o valor de 50% de seus produtos, acrescentando 49%
--  de aumento no valor deles. (1 pt)

UPDATE preco
   SET valor = valor * 1.49
 WHERE id IN (1, 2);

-- 7)	Refaça a seleção da questão 5 e analise os resultados 
-- coletados. (2 pts)
-- Porque os resultados foram diferentes?
SELECT notafiscal.id, 
       SUM(precoProduto.ultimoPreco * itemNF.quantidade) valorNF 
  FROM notaFiscal
	   JOIN itemNF
         ON itemNF.id_notaFiscal = notaFiscal.id
	   JOIN produto
         ON produto.id = itemNF.id_produto
	   JOIN (SELECT id_produto, (SELECT valor
								   FROM preco psub
								  WHERE data_inicial <= STR_TO_DATE('23/09/2021', '%d/%m/%Y')
								    AND ppai.id_produto = psub.id_produto
								  ORDER BY data_inicial DESC
								  LIMIT 1) ultimoPreco
		      FROM preco ppai
	         GROUP BY id_produto) precoProduto
         ON produto.id = precoProduto.id_produto
 GROUP BY notafiscal.id;
 -- Os valores totais das NFs são diferentes pois os produtos sofreram um acréscimo de 49% em seu valor.