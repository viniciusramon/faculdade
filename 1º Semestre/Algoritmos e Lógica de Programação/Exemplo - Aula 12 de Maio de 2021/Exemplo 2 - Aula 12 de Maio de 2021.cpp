/* Usando fun��o que n�o recebe par�metro e retorna valor */
/* Toda fun��o void n�o retorna par�metros ou valores */
/* Fun��o � um bloco de c�digo que realiza tarefas espec�ficas */
/* As fun��es que retornam par�metro devem ser do tipo do retorno */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

float somar()
{
	// bloco da fun��o somar()
	printf("\nBem Vindo a Fun��o SOMAR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	return(x+y);
}

float subtrair()
{
	// bloco da fun��o subtrair()
	printf("\nBem Vindo a Fun��o SUBTRAIR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	return(x-y);
}

float multiplicar()
{
	// bloco da fun��o multiplicar()
	printf("\nBem Vindo a Fun��o MULTIPLICAR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	return(x*y);
}

float dividir()
{
	// bloco da fun��o dividir()
	printf("\nBem Vindo a Fun��o DIVIDIR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	return(x/y);
}

main()
{
	setlocale(LC_ALL,"");
	//bloco da fun��o main.
	//chama de fun��es.
	float soma, sub, mult, div;
	
	soma = somar(); //chamada da fun��o somar e guarda resultado na variavel soma
	printf("\nO resultado da soma de x + y �: %.2f: ",soma);

	sub=subtrair(); // chamada da fun��o subtrair e guarda resultado na variavel sub
	printf("\nO resultado da subtra��o de x - y �: %.2f: ",sub);
	
	mult=multiplicar(); // chamada da fun��o multiplicar e guarda resultado na variavel mult
	printf("\nO resultado da multiplica��o de x * y �: %.2f: ",mult);
	
	div=dividir(); // chamada da fun��o dividir e guarda resultado na variavel div
	printf("\nO resultado da divis�o de x / y �: %.2f: ",div);
}

