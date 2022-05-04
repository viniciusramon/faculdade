/* Usando função que recebe parâmetro e retorna valor */
/* Toda função void não retorna parâmetros ou valores */
/* Função é um bloco de código que realiza tarefas específicas */
/* As funções que retornam parâmetro devem ser do tipo do retorno */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

float somar(float x, float y)
{
	// bloco da função somar()
	printf("\nBem Vindo a Função SOMAR! ");
	
	return(x+y);
}

float subtrair(float x, float y)
{
	// bloco da função subtrair()
	printf("\nBem Vindo a Função SUBTRAIR! ");
	
	
	return(x-y);
}

float multiplicar(float x, float y)
{
	// bloco da função multiplicar()
	printf("\nBem Vindo a Função MULTIPLICAR! ");
	
	return(x*y);
}

float dividir(float x, float y)
{
	// bloco da função dividir()
	printf("\nBem Vindo a Função DIVIDIR! ");
	
	return(x/y);
}

main()
{
	setlocale(LC_ALL,"");
	//bloco da função main.
	//chama de funções.
	float soma, sub, mult, div;
	float x,y;
	
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	
	soma = somar(x,y); //chamada da função somar e guarda resultado na variavel soma
	printf("\nO resultado da soma de x + y é: %.2f: ",soma);

	sub=subtrair(x,y); // chamada da função subtrair e guarda resultado na variavel sub
	printf("\nO resultado da subtração de x - y é: %.2f: ",sub);
	
	mult=multiplicar(x,y); // chamada da função multiplicar e guarda resultado na variavel mult
	printf("\nO resultado da multiplicação de x * y é: %.2f: ",mult);
	
	div=dividir(x,y); // chamada da função dividir e guarda resultado na variavel div
	printf("\nO resultado da divisão de x / y é: %.2f: ",div);
}

