/* Usando fun��o que n�o recebe par�metro e n�o retorna valor */
/* Toda fun��o void n�o retorna par�metros ou valores */
/* Fun��o � um bloco de c�digo que realiza tarefas espec�ficas */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

void somar()
{
	// bloco da fun��o somar()
	printf("\nBem Vindo a Fun��o SOMAR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	printf("\nO resultado da soma de x + y �: %.2f: ",x+y);
}

void subtrair()
{
	// bloco da fun��o subtrair()
	printf("\nBem Vindo a Fun��o SUBTRAIR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	printf("\nO resultado da subtra��o de x - y �: %.2f: ",x-y);
}

void multiplicar()
{
	// bloco da fun��o multiplicar()
	printf("\nBem Vindo a Fun��o MULTIPLICAR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	printf("\nO resultado da multiplica��o de x * y �: %.2f: ",x*y);
}

void dividir()
{
	// bloco da fun��o dividir()
	printf("\nBem Vindo a Fun��o DIVIDIR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	printf("\nO resultado da divis�o de x / y �: %.2f: ",x/y);
}

main()
{
	setlocale(LC_ALL,"");
	//bloco da fun��o main.
	//chama de fun��es.
	somar(); //chamada da fun��o somar
	subtrair(); // chamada da fun��o subtrair
	multiplicar(); // chamada da fun��o multiplicar
	dividir(); // chamada da fun��o dividir
	
}

