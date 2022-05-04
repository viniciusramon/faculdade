/* Usando fun��o que recebe par�metro e retorna valor */
/* Toda fun��o void n�o retorna par�metros ou valores */
/* Fun��o � um bloco de c�digo que realiza tarefas espec�ficas */
/* As fun��es que retornam par�metro devem ser do tipo do retorno */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

float somar(float x, float y)
{
	// bloco da fun��o somar()
	printf("\nBem Vindo a Fun��o SOMAR! ");
	
	return(x+y);
}

float subtrair(float x, float y)
{
	// bloco da fun��o subtrair()
	printf("\nBem Vindo a Fun��o SUBTRAIR! ");
	
	
	return(x-y);
}

float multiplicar(float x, float y)
{
	// bloco da fun��o multiplicar()
	printf("\nBem Vindo a Fun��o MULTIPLICAR! ");
	
	return(x*y);
}

float dividir(float x, float y)
{
	// bloco da fun��o dividir()
	printf("\nBem Vindo a Fun��o DIVIDIR! ");
	
	return(x/y);
}

main()
{
	setlocale(LC_ALL,"");
	//bloco da fun��o main.
	//chama de fun��es.
	float soma, sub, mult, div;
	float x,y;
	
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	
	soma = somar(x,y); //chamada da fun��o somar e guarda resultado na variavel soma
	printf("\nO resultado da soma de x + y �: %.2f: ",soma);

	sub=subtrair(x,y); // chamada da fun��o subtrair e guarda resultado na variavel sub
	printf("\nO resultado da subtra��o de x - y �: %.2f: ",sub);
	
	mult=multiplicar(x,y); // chamada da fun��o multiplicar e guarda resultado na variavel mult
	printf("\nO resultado da multiplica��o de x * y �: %.2f: ",mult);
	
	div=dividir(x,y); // chamada da fun��o dividir e guarda resultado na variavel div
	printf("\nO resultado da divis�o de x / y �: %.2f: ",div);
}

