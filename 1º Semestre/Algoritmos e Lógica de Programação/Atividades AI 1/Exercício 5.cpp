/*

Nome: Vinicius Ramon Da Costa Reis
RA: 0157/12-3

Exerc�cio para Atividade AI 1

Exerc�cio 5 - Fa�a um programa em C que calcule a situa��o de aprova��o ou reprova��o de acordo com as seguintes regras:

Aprovado: media >= 6 e frequ�ncia >= 75

Reprovado: media < 5 e frequ�ncia < 75

*/
#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float nota1=0,nota2=0,media=0;
	int freq=0;
	
	while(1)
	{
		printf("\nDigite a primeira nota: ");
		scanf("%f",&nota1);
		
		printf("\nDigite a segunda nota: ");
		scanf("%f",&nota2);	
		
		printf("\nDigite a frequ�ncia o aluno: ");
		scanf("%i",&freq);	
		
		media=(nota1+nota2)/2;
		
		if((media>=6)&&(freq>=75))
		{
			printf("\nVoc� est� APROVADO!!");
		}
		else
		{
			printf("\nVoc� est� REPROVADO!!");

		}
	}
}
