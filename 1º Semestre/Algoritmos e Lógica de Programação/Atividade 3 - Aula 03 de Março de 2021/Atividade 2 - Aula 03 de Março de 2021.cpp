#include <stdio.h>
#include <locale.h> //Biblioteca que permite exibir caracteres com acentos

main()
{
	setlocale(LC_ALL,""); // Fun��o que permite exibir os caracteres com acentos

	char turma1='A', turma2='B';
	float media1=8.75, media2=9.75;
	int aluno1=50, aluno2=45;
	
	printf("\n A turma %c obteve m�dia %.2f na avalia��o de Programa��o Estruturada em um total de %d alunos. \n",turma1,media1,aluno1);
	
	printf("\n Jo�o da turma %c em um total de %d alunos, obteve a melhor nota, que foi %.2f. \n",turma2,aluno2,media2);
	
	while(1);	
}
