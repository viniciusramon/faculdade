#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int idade=0;
	
	while(1)
	{
		printf("\nDigite a sua Idade: ");
		scanf("%i",&idade);
		
		if(idade>=18)
		{
			printf("\nVoc� est� apto a tirar sua habilita��o!!");
		}
		else
		{
			printf("\nVoc� n�o est� apto a tirar sua habilita��o!!");

		}
	}
}
