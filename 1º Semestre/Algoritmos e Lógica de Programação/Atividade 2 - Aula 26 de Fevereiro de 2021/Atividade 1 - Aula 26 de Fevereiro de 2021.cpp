#include <stdio.h>
#include <locale.h> //Biblioteca que permite exibir caracteres com acentos

main()
{
	setlocale(LC_ALL,""); // Fun��o que permite exibir os caracteres com acentos
	
	int evento; // Variavel do tipo Inteiro
	char corrida; // Variavel do tipo Caracter
	float tempo; // Variavel do tipo Float pois tempo � um dado real(fracionado)
	
	evento = 5; // Define o valor da variavel evento
	corrida = 'C'; // Define o valor da variavel corrida
	tempo = 27.25; // define o valor da variavel tempo
	
	printf("O tempo vitorioso na eliminat�ria %i \n",evento); // Exibe o texto junto com o dado da variavel "corrida"
	printf("da competi��o %c foi %.2f .",corrida, tempo); // Exibe o texto junto com os dados da variavel "evento" e "tempo"
	
	while(1);
}
