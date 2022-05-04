/*

Nome: Vinicius Ramon Da Costa Reis
RA: 0157/12-3

Exercício para Atividade AI 1

Exercício 7 - Faça um programa em C, após a conversão de graus Celsius para Fahrenheit, apresente a situação da temperatura corporal, sendo temperatura está elevada(>=104 ºF) ou normal (<104 ºF)

*/
#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float c=0,f=0;
	
	printf("\nDigite o valor da sua temperatura corporal em °C: ");
	scanf("%f",&c);
	
	f=(c*1.8)+32;
		
	if(f>=104)
	{
		printf("\nSua temperatura está elevada! Temperatura: %.2f°",f);
	}
	
	else
	{
		printf("\nSua temperatura está normal! Temperatura: %.2f°",f);
	}

}
