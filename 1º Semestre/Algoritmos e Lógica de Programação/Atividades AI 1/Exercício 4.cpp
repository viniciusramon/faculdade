/*

Nome: Vinicius Ramon Da Costa Reis
RA: 0157/12-3

Exerc�cio para Atividade AI 1

Exerc�cio 4 - Fa�a um programa em C que solicite ao usu�rio a sua idade. Apto a tirar habilita��o: idade >= 18.

*/
#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int idade=0;
	
	while(1)
	{
		printf("\nDigite a sua Idade: ");
		scanf("%i",&idade);
		
		if(idade>=18)
		{
			printf("\nVoc� est� apto a tirar sua habilita��o!!");
		}
		else
		{
			printf("\nVoc� n�o est� apto a tirar sua habilita��o!!");

		}
	}
}
