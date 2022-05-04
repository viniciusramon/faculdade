/*5. Faça um programa em C que crie uma estrutura Aluno. Criar uma função para cadastro dos dados (cadastrar()), uma função para exibição dos dados (exibir()) e a função principal (main()). 
A função principal deve conter um menu de opções para escolha do usuário (cadastrar, exibir e sair) */

/* Tabalhando com estrutura */
#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

//struct é utilizado para organizar dados
struct cadastroAluno
{
	char ra[20];
	char nome[60],curso[60],email[100];
	char celular[30];
	
}; struct cadastroAluno aluno[2];
//minhaCarteira é uma variavél do tipo struct carteira. Utilizada para acessar a estrutura

int cadastra(int i)
{
	fflush(stdin);
	if(i<2)
	{
		printf("\nInformações do Aluno %d ",i+1);
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
		printf("\nO nome do aluno %d é: %s \n ",indice,aluno[indice].nome);
		printf("\nO número do RA do aluno %d é: %s ",indice,aluno[indice].ra);
		printf("\nO E-mail do aluno %d é: %s ",indice,aluno[indice].email);
		printf("\nO Curso do aluno %d é: %s ",indice,aluno[indice].curso);
		printf("\nO Celular do aluno %d é: %s ",indice,aluno[indice].celular);
		system("pause");
	}
	else
	{
		printf("\nAluno não cadastrado");
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
		printf("\nEntre com a opção: ");
		scanf("%d",&op);
		
		switch(op)
		{
			case 1: i = cadastra(i); break;
			case 2: printf("\nDigite o índice do aluno que deseja exibir os dados: ");
					scanf("%d",&indice);
					exibe(indice); break;
			case 3: exit(1);
			default: printf("\nOpção inválida!\n");
		}
	}
}
