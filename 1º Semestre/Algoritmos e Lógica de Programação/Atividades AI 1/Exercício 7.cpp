/*

Nome: Vinicius Ramon Da Costa Reis
RA: 0157/12-3

Exerc�cio para Atividade AI 1

Exerc�cio 7 - Fa�a um programa em C, ap�s a convers�o de graus Celsius para Fahrenheit, apresente a situa��o da temperatura corporal, sendo temperatura est� elevada(>=104 �F) ou normal (<104 �F)

*/
#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float c=0,f=0;
	
	printf("\nDigite o valor da sua temperatura corporal em �C: ");
	scanf("%f",&c);
	
	f=(c*1.8)+32;
		
	if(f>=104)
	{
		printf("\nSua temperatura est� elevada! Temperatura: %.2f�",f);
	}
	
	else
	{
		printf("\nSua temperatura est� normal! Temperatura: %.2f�",f);
	}

}
