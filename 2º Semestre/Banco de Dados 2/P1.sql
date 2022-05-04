Prova P1
Pessoal, esta é a nossa P1. Façam o upload do arquivo .SQL. Coloquem um comentário com o número de cada questão que fizerem para facilitar a correção.

Dica: Armazene o SQL em um arquivo texto e o salve em seu pen-drive. Assim, caso o computador apresente problemas, você não perderá o que já fez da prova.

1)	Criar o banco de dados prova_2309 (1 pt)

2)	Criar as tabelas da seguinte especificação (Já normalizada em 3FN): (2 pts)

a.	Fornecedor (ID, Nome)

b.	Produto (ID, Nome, Id_Fornecedor)

c.	Preco (ID, ID_Produto, Data_Inicial, Valor)

d.	NotaFiscal (ID, Nome_Cliente, Data)

e.	ItemNF (ID, ID_NotaFiscal, ID_Produto, Quantidade)

Os tipos de dados, bem como as Chaves Primárias e Estrangeiras devem ser especificados pelo analista (aluno).

3)	Eliminar o campo "Nome_Cliente" da tabela NotaFiscal e acrescentar a seguinte tabela: (1 pt)

a.	Cliente (ID, Nome, CPF_CNPJ, Endereco)

Não se esqueça de criar a Chave Estrangeira ligando Cliente e NotaFiscal.

4)	Insira dados nas tabelas especificadas na questão 2. Deve conter no mínimo 5 vendas (notas fiscais) emitidas. (1,5 pts)

5)	Realize uma seleção para mostrar todas as notas fiscais que possuam o valor total maior que R$ 100,00. (1,5 pts)

6)	Altere o valor de 50% de seus produtos, acrescentando 49% de aumento no valor deles. (1 pt)

7)	Refaça a seleção da questão 5 e analise os resultados coletados. (2 pts)

Porque os resultados foram diferentes?