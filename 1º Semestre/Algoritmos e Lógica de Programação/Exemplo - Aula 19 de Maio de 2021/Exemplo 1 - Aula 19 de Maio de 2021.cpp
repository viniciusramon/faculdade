/* Tabalhando com estrutura */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

//struct é utilizado para organizar dados
struct carteira
{
	int rg, cpf, hab, cartcred, cartdeb;
	char nome[60];
	float dinheiro;
	
}; struct carteira minhaCarteira;
//minhaCarteira é uma variavél do tipo struct carteira. Utilizada para acessar a estrutura

void cadastra()
{
	printf("\nEntre com o RG: ");
	scanf("%d",&minhaCarteira.rg);
	printf("\nEntre com o CPF: ");
	scanf("%d",&minhaCarteira.cpf);
	printf("\nEntre com a Habilitação de Motorista: ");
	scanf("%d",&minhaCarteira.hab);
	printf("\nEntre com o Cartão de Crédito: ");
	scanf("%d",&minhaCarteira.cartcred);
	printf("\nEntre com o Cartão de Débito: ");
	scanf("%d",&minhaCarteira.cartdeb);	
	printf("\nEntre com a quantidade de Dinheiro: ");
	scanf("%f",&minhaCarteira.dinheiro);
	printf("\nEntre com o nome: ");
	fflush(stdin);
	gets(minhaCarteira.nome);				
}

void exibe()
{
	fflush(stdin);
	printf("\nO número do RG é: %d ",minhaCarteira.rg);
	printf("\nO número do CPF é: %d ",minhaCarteira.cpf);
	printf("\nO número da Habilitação de Motorista é: %d ",minhaCarteira.hab);
	printf("\nO número do Cartão de Crédito é: %d ",minhaCarteira.cartcred);
	printf("\nO número do Cartão de Débito é: %d ",minhaCarteira.cartdeb);
	printf("\nA quantidade de Dinheiro na carteira é de: R$ %.2f ",minhaCarteira.dinheiro);
	printf("\nO seu nome é: %s \n ",minhaCarteira.nome);
	system("pause");
}

main()
{
	setlocale(LC_ALL,"");
	int op;
	
	while(op!=3)
	{
		system("cls");
		printf("\nDigite 1 para Cadastrar");
		printf("\nDigite 2 para Exibir");
		printf("\nDigite 3 para Sair");
		printf("\nEntre com a opção: ");
		scanf("%d",&op);
		
		switch(op)
		{
			case 1: cadastra(); break;
			case 2: exibe(); break;
			case 3: exit(1);
			default: printf("\nOpção inválida!\n");
		}
	}
}
