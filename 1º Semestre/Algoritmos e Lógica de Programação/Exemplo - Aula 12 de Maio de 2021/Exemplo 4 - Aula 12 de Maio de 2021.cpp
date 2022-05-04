/* Usando função que recebe parâmetro e não retorna valor */
/* Toda função void não retorna parâmetros ou valores */
/* Função é um bloco de código que realiza tarefas específicas */
/* As funções que retornam parâmetro devem ser do tipo do retorno */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

void somar(float x, float y)
{
	// bloco da função somar()
	printf("\nBem Vindo a Função SOMAR! ");
	printf("\nO resultado da soma de x + y é: %.2f: ",x+y);
	
}

void subtrair(float x, float y)
{
	// bloco da função subtrair()
	printf("\nBem Vindo a Função SUBTRAIR! ");
	printf("\nO resultado da subtração de x - y é: %.2f: ",x-y);
	
}

void multiplicar(float x, float y)
{
	// bloco da função multiplicar()
	printf("\nBem Vindo a Função MULTIPLICAR! ");
	printf("\nO resultado da multiplicação de x * y é: %.2f: ",x*y);
	
}

void dividir(float x, float y)
{
	// bloco da função dividir()
	printf("\nBem Vindo a Função DIVIDIR! ");
	printf("\nO resultado da divisão de x / y é: %.2f: ",x/y);
	
}

main()
{
	setlocale(LC_ALL,"");
	//bloco da função main.
	//chama de funções.
	float x,y;
	
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	
	somar(x,y); //chamada da função somar e guarda resultado na variavel soma

	subtrair(x,y); // chamada da função subtrair e guarda resultado na variavel sub
	
	multiplicar(x,y); // chamada da função multiplicar e guarda resultado na variavel mult
	
	dividir(x,y); // chamada da função dividir e guarda resultado na variavel div

}

