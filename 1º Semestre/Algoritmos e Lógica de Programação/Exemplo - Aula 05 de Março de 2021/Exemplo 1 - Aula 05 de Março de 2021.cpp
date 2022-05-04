#include <stdio.h>
#include <locale.h> // Biblioteca para aparecer caracteres com acentos

main()
{
	setlocale(LC_ALL,""); // Função para fazer com que os caracteres com acentos sejam exibidos corretamente
	
	float salario, bonus; // Declaração de variaveis tipo Float
 	float final; // Declaração de variaveis tipo Float
	while(1)
	{
		printf("\nEntre com o salário: "); // Imprime/ Exibe o texto na tela
		scanf("%f",&salario); // Armazena o dado digitado no endereço de memoria da variavel salario

		printf("\nEntre com o valor do bônus: "); // Imprime/ Exibe o texto na tela
		scanf("%f",&bonus);// Armazena o dado digitado no endereço de memoria da variavel bonus
		final=salario+bonus;// A variavel final faz a soma entre os valores das variaveis salario e bonus
		printf("\nO salário do funcionário com o bônus foi: R$ %.2f \n",final);// Imprime/ Exibe o texto na tela do valor da variavel final da soma das variaveis salario + bonus
	
	//	bonus = salario+600; // A variavel bonus acrescenta o valor 600 na variavel salario
	//	printf("\nO salário do funcionário com o bônus foi: R$ %.2f \n",bonus); // Imprime/ Exibe o texto na tela do valor final do salario + bonus
	}
	
}
