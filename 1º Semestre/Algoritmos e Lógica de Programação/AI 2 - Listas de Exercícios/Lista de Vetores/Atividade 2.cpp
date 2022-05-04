/* 2- Faça um programa em C que gere letras aleatórias e permita ao usuário adivinhar.

Obs: utilizar a função rand() – secreto = rand()%26 + ‘a’ */

#include<stdio.h>
#include<stdlib.h> /* Para usar a função rand() */
#include<locale.h>

main()
{
	
		setlocale(LC_ALL,"");
		char ch='s', resp=' ', secret;
		int tentativas=0;
		
		while(ch=='s')
		{
			secret=rand()%26+'a';
			tentativas=1;
			printf("\nDigite uma letra entre 'A' e 'Z': ");
			scanf("%c",&resp);
			
			while(resp!=secret)
			{
				printf("\n%c é incorreto. Tente novamente\n",resp);
				tentativas++;
				printf("\nDigite uma letra entre 'A' e 'Z': ");
				fflush(stdin);
				scanf("%c",&resp);
			}
			printf("\n%c é a letra correta!!\n",resp);
			printf("\nVocê acertou em %d tentativas\n",tentativas);
			printf("\nVocê deseja jogar novamente? (s/n): ");
			fflush(stdin);
			scanf("%c",&ch);
			fflush(stdin);

			if(ch=='s')
			{	
				fflush(stdin);
				printf("\nBem-Vindo novamente!");
			}
			else if((ch!='s')&&(ch!='n'))
			{
				while((ch!='s')&&(ch!='n'))
				{
					printf("\nComando inválido, digite novamente (s/n): ");
					scanf("%c",&ch);
				}
			}
		}
		printf("\nAté logo e boa sorte!\n");
		system("pause");
		return 0;
}
