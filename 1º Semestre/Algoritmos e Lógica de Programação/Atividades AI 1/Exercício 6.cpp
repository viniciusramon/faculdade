/*

Nome: Vinicius Ramon Da Costa Reis
RA: 0157/12-3

Exerc�cio para Atividade AI 1

Exerc�cio 6 - Fa�a um programa em C que verifique se o n�mero digitado � par ou �mpar.

*/
#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float num=0;
	int result=0, resultfinal=0;
	
	while(1)
	{
		printf("\nDigite um n�mero: ");
		scanf("%f",&num);
		
		result=num;
		resultfinal=result%2;
				
		if(resultfinal==1)
		{
			printf("\nO n�mero digitado � IMPAR!!");
		}
		else
		{
			printf("\nO n�mero digitado � PAR!!");

		}
	}
}
