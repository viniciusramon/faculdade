/* Usando fun��o que recebe par�metro e n�o retorna valor */
/* Toda fun��o void n�o retorna par�metros ou valores */
/* Fun��o � um bloco de c�digo que realiza tarefas espec�ficas */
/* As fun��es que retornam par�metro devem ser do tipo do retorno */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

void somar(float x, float y)
{
	// bloco da fun��o somar()
	printf("\nBem Vindo a Fun��o SOMAR! ");
	printf("\nO resultado da soma de x + y �: %.2f: ",x+y);
	
}

void subtrair(float x, float y)
{
	// bloco da fun��o subtrair()
	printf("\nBem Vindo a Fun��o SUBTRAIR! ");
	printf("\nO resultado da subtra��o de x - y �: %.2f: ",x-y);
	
}

void multiplicar(float x, float y)
{
	// bloco da fun��o multiplicar()
	printf("\nBem Vindo a Fun��o MULTIPLICAR! ");
	printf("\nO resultado da multiplica��o de x * y �: %.2f: ",x*y);
	
}

void dividir(float x, float y)
{
	// bloco da fun��o dividir()
	printf("\nBem Vindo a Fun��o DIVIDIR! ");
	printf("\nO resultado da divis�o de x / y �: %.2f: ",x/y);
	
}

main()
{
	setlocale(LC_ALL,"");
	//bloco da fun��o main.
	//chama de fun��es.
	float x,y;
	
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	
	somar(x,y); //chamada da fun��o somar e guarda resultado na variavel soma

	subtrair(x,y); // chamada da fun��o subtrair e guarda resultado na variavel sub
	
	multiplicar(x,y); // chamada da fun��o multiplicar e guarda resultado na variavel mult
	
	dividir(x,y); // chamada da fun��o dividir e guarda resultado na variavel div

}

