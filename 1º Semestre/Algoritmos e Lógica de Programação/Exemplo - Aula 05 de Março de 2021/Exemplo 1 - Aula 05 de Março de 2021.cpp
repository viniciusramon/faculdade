#include <stdio.h>
#include <locale.h> // Biblioteca para aparecer caracteres com acentos

main()
{
	setlocale(LC_ALL,""); // Fun��o para fazer com que os caracteres com acentos sejam exibidos corretamente
	
	float salario, bonus; // Declara��o de variaveis tipo Float
 	float final; // Declara��o de variaveis tipo Float
	while(1)
	{
		printf("\nEntre com o sal�rio: "); // Imprime/ Exibe o texto na tela
		scanf("%f",&salario); // Armazena o dado digitado no endere�o de memoria da variavel salario

		printf("\nEntre com o valor do b�nus: "); // Imprime/ Exibe o texto na tela
		scanf("%f",&bonus);// Armazena o dado digitado no endere�o de memoria da variavel bonus
		final=salario+bonus;// A variavel final faz a soma entre os valores das variaveis salario e bonus
		printf("\nO sal�rio do funcion�rio com o b�nus foi: R$ %.2f \n",final);// Imprime/ Exibe o texto na tela do valor da variavel final da soma das variaveis salario + bonus
	
	//	bonus = salario+600; // A variavel bonus acrescenta o valor 600 na variavel salario
	//	printf("\nO sal�rio do funcion�rio com o b�nus foi: R$ %.2f \n",bonus); // Imprime/ Exibe o texto na tela do valor final do salario + bonus
	}
	
}
