/* 2- Fa�a um programa em C que gere letras aleat�rias e permita ao usu�rio adivinhar.

Obs: utilizar a fun��o rand() � secreto = rand()%26 + �a� */

#include<stdio.h>
#include<stdlib.h> /* Para usar a fun��o rand() */
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
				printf("\n%c � incorreto. Tente novamente\n",resp);
				tentativas++;
				printf("\nDigite uma letra entre 'A' e 'Z': ");
				fflush(stdin);
				scanf("%c",&resp);
			}
			printf("\n%c � a letra correta!!\n",resp);
			printf("\nVoc� acertou em %d tentativas\n",tentativas);
			printf("\nVoc� deseja jogar novamente? (s/n): ");
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
					printf("\nComando inv�lido, digite novamente (s/n): ");
					scanf("%c",&ch);
				}
			}
		}
		printf("\nAt� logo e boa sorte!\n");
		system("pause");
		return 0;
}
