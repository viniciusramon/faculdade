/*

Nome: Vinicius Ramon Da Costa Reis
RA: 0157/12-3

Exercício para Atividade AI 1

Exercício 3 - Faça um programa em C que a partir do grau Celsius converta para grau Fahrenheit.
Use: F = (C * 1.8) + 32.

*/
#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float tempC=0, tempF=0;
	
	while(1)
	{
		printf("\nDigite a temperatura em °C:");
		scanf("%f",&tempC);
		
		tempF=(tempC*1.8)+32;
		
		printf("\nA temperatura de %.0f °C convertida para °F é: %.0f °F\n",tempC,tempF);
		
	}
}
