/* Usando função que não recebe parâmetro e não retorna valor */
/* Toda função void não retorna parâmetros ou valores */
/* Função é um bloco de código que realiza tarefas específicas */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

void somar()
{
	// bloco da função somar()
	printf("\nBem Vindo a Função SOMAR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	printf("\nO resultado da soma de x + y é: %.2f: ",x+y);
}

void subtrair()
{
	// bloco da função subtrair()
	printf("\nBem Vindo a Função SUBTRAIR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	printf("\nO resultado da subtração de x - y é: %.2f: ",x-y);
}

void multiplicar()
{
	// bloco da função multiplicar()
	printf("\nBem Vindo a Função MULTIPLICAR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	printf("\nO resultado da multiplicação de x * y é: %.2f: ",x*y);
}

void dividir()
{
	// bloco da função dividir()
	printf("\nBem Vindo a Função DIVIDIR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	printf("\nO resultado da divisão de x / y é: %.2f: ",x/y);
}

main()
{
	setlocale(LC_ALL,"");
	//bloco da função main.
	//chama de funções.
	somar(); //chamada da função somar
	subtrair(); // chamada da função subtrair
	multiplicar(); // chamada da função multiplicar
	dividir(); // chamada da função dividir
	
}

