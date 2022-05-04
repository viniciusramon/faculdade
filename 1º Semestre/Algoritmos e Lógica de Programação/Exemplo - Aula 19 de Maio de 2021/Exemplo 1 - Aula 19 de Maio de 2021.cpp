/* Tabalhando com estrutura */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

//struct � utilizado para organizar dados
struct carteira
{
	int rg, cpf, hab, cartcred, cartdeb;
	char nome[60];
	float dinheiro;
	
}; struct carteira minhaCarteira;
//minhaCarteira � uma variav�l do tipo struct carteira. Utilizada para acessar a estrutura

void cadastra()
{
	printf("\nEntre com o RG: ");
	scanf("%d",&minhaCarteira.rg);
	printf("\nEntre com o CPF: ");
	scanf("%d",&minhaCarteira.cpf);
	printf("\nEntre com a Habilita��o de Motorista: ");
	scanf("%d",&minhaCarteira.hab);
	printf("\nEntre com o Cart�o de Cr�dito: ");
	scanf("%d",&minhaCarteira.cartcred);
	printf("\nEntre com o Cart�o de D�bito: ");
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
	printf("\nO n�mero do RG �: %d ",minhaCarteira.rg);
	printf("\nO n�mero do CPF �: %d ",minhaCarteira.cpf);
	printf("\nO n�mero da Habilita��o de Motorista �: %d ",minhaCarteira.hab);
	printf("\nO n�mero do Cart�o de Cr�dito �: %d ",minhaCarteira.cartcred);
	printf("\nO n�mero do Cart�o de D�bito �: %d ",minhaCarteira.cartdeb);
	printf("\nA quantidade de Dinheiro na carteira � de: R$ %.2f ",minhaCarteira.dinheiro);
	printf("\nO seu nome �: %s \n ",minhaCarteira.nome);
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
		printf("\nEntre com a op��o: ");
		scanf("%d",&op);
		
		switch(op)
		{
			case 1: cadastra(); break;
			case 2: exibe(); break;
			case 3: exit(1);
			default: printf("\nOp��o inv�lida!\n");
		}
	}
}
