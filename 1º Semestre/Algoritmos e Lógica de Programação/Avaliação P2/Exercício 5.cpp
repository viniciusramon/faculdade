/*5. Fa�a um programa em C que crie uma estrutura Aluno. Criar uma fun��o para cadastro dos dados (cadastrar()), uma fun��o para exibi��o dos dados (exibir()) e a fun��o principal (main()). 
A fun��o principal deve conter um menu de op��es para escolha do usu�rio (cadastrar, exibir e sair) */

/* Tabalhando com estrutura */
#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

//struct � utilizado para organizar dados
struct cadastroAluno
{
	char ra[20];
	char nome[60],curso[60],email[100];
	char celular[30];
	
}; struct cadastroAluno aluno[2];
//minhaCarteira � uma variav�l do tipo struct carteira. Utilizada para acessar a estrutura

int cadastra(int i)
{
	fflush(stdin);
	if(i<2)
	{
		printf("\nInforma��es do Aluno %d ",i+1);
		printf("\nEntre com o Nome: ");
		gets(aluno[i].nome);	
		printf("\nEntre com o RA: ");
		gets(aluno[i].ra);
		printf("\nEntre com o E-mail: ");
		gets(aluno[i].email);
		printf("\nEntre com o Curso: ");
		gets(aluno[i].curso);
		printf("\nEntre com o Celular: ");
		gets(aluno[i].celular);		
	}
	else
	{
		printf("\nArmazenamento cheio!");
	}
	
	return i+1;
				
}

void exibe(int indice)
{
	fflush(stdin);
	if(indice<2)
	{
		printf("\nO nome do aluno %d �: %s \n ",indice,aluno[indice].nome);
		printf("\nO n�mero do RA do aluno %d �: %s ",indice,aluno[indice].ra);
		printf("\nO E-mail do aluno %d �: %s ",indice,aluno[indice].email);
		printf("\nO Curso do aluno %d �: %s ",indice,aluno[indice].curso);
		printf("\nO Celular do aluno %d �: %s ",indice,aluno[indice].celular);
		system("pause");
	}
	else
	{
		printf("\nAluno n�o cadastrado");
	}
	
}

main()
{
	setlocale(LC_ALL,"");
	int op,i,indice;
	
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
			case 1: i = cadastra(i); break;
			case 2: printf("\nDigite o �ndice do aluno que deseja exibir os dados: ");
					scanf("%d",&indice);
					exibe(indice); break;
			case 3: exit(1);
			default: printf("\nOp��o inv�lida!\n");
		}
	}
}
