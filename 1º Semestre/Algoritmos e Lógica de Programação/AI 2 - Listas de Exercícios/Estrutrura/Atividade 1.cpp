/* Tabalhando com estrutura */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

//struct é utilizado para organizar dados
struct cadastroAluno
{
	char rg[20],ra[20], cpf[20];
	char nome[60],turma[60],semestre[50];
	char endereco[100],telefone[30],dataNascimento[20];
	
}; struct cadastroAluno aluno[2];
//minhaCarteira é uma variavél do tipo struct carteira. Utilizada para acessar a estrutura

int cadastra(int i)
{
	fflush(stdin);
	if(i<2)
	{
		printf("\nInformações do Aluno %d ",i+1);
		printf("\nEntre com o RG: ");
		gets(aluno[i].rg);
		printf("\nEntre com o RA: ");
		gets(aluno[i].ra);
		printf("\nEntre com o CPF: ");
		gets(aluno[i].cpf);
		printf("\nEntre com a Turma: ");
		gets(aluno[i].turma);
		printf("\nEntre com o Semestre: ");
		gets(aluno[i].semestre);
		fflush(stdin);
		printf("\nEntre com o Endereço: ");
		gets(aluno[i].endereco);
		fflush(stdin);			
		printf("\nEntre com o telefone: ");
		gets(aluno[i].telefone);
		printf("\nEntre com a data de nascimento: ");
		gets(aluno[i].dataNascimento);
		printf("\nEntre com o nome: ");
		fflush(stdin);
		gets(aluno[i].nome);
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
		printf("\nO número do RG do aluno %d é: %s ",indice,aluno[indice].rg);
		printf("\nO número do RA do aluno %d é: %s ",indice,aluno[indice].ra);
		printf("\nO número do CPF do aluno %d é: %s ",indice,aluno[indice].cpf);
		printf("\nA turma do aluno %d é: %s ",indice,aluno[indice].turma);
		printf("\nO semestre do aluno %d é: %s ",indice,aluno[indice].semestre);
		printf("\nO endereço do aluno %d é: %s ",indice,aluno[indice].endereco);
		printf("\nO telefone do aluno %d é: %s ",indice,aluno[indice].telefone);
		printf("\nA data de nascimento do aluno %d é: %s ",indice,aluno[indice].dataNascimento);	
		printf("\nO nome do aluno %d é: %s \n ",indice,aluno[indice].nome);
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
