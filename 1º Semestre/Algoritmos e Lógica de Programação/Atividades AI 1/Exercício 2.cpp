/*

Nome: Vinicius Ramon Da Costa Reis
RA: 0157/12-3

Exercício para Atividade AI 1

Exercício 2 - Faça um programa em C que calcule a área de um terreno. O usuário deve entrar com a largura e o comprimento do terreno.

*/
#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float largura=0, comprimento=0, area=0;
	
	while(1)
	{
		printf("\nDigite a largura do terreno:");
		scanf("%f",&largura);
		
		printf("\nDigite o comprimento do terreno:");
		scanf("%f",&comprimento);
		
		area=largura*comprimento;
		
		printf("\nA área do terreno é: %.2f m²\n",area);
		
	}
}
