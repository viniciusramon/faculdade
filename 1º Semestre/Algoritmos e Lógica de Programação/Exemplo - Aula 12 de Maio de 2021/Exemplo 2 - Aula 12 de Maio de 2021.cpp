/* Usando função que não recebe parâmetro e retorna valor */
/* Toda função void não retorna parâmetros ou valores */
/* Função é um bloco de código que realiza tarefas específicas */
/* As funções que retornam parâmetro devem ser do tipo do retorno */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

float somar()
{
	// bloco da função somar()
	printf("\nBem Vindo a Função SOMAR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	return(x+y);
}

float subtrair()
{
	// bloco da função subtrair()
	printf("\nBem Vindo a Função SUBTRAIR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	return(x-y);
}

float multiplicar()
{
	// bloco da função multiplicar()
	printf("\nBem Vindo a Função MULTIPLICAR! ");
	float x,y;
	printf("\nEntre com o valor de x: ");
	scanf("%f",&x);
	printf("\nEntre com o valor de y: ");
	scanf("%f",&y);	
	return(x*y);
}

float dividir()
{
	// bloco da função dividir()
	printf("\nBem Vindo a Função DIVIDIR! ");
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
	//bloco da função main.
	//chama de funções.
	float soma, sub, mult, div;
	
	soma = somar(); //chamada da função somar e guarda resultado na variavel soma
	printf("\nO resultado da soma de x + y é: %.2f: ",soma);

	sub=subtrair(); // chamada da função subtrair e guarda resultado na variavel sub
	printf("\nO resultado da subtração de x - y é: %.2f: ",sub);
	
	mult=multiplicar(); // chamada da função multiplicar e guarda resultado na variavel mult
	printf("\nO resultado da multiplicação de x * y é: %.2f: ",mult);
	
	div=dividir(); // chamada da função dividir e guarda resultado na variavel div
	printf("\nO resultado da divisão de x / y é: %.2f: ",div);
}

