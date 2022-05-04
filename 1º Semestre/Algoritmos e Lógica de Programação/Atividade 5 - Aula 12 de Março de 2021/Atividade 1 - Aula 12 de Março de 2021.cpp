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
			printf("\nVocê está apto a tirar sua habilitação!!");
		}
		else
		{
			printf("\nVocê não está apto a tirar sua habilitação!!");

		}
	}
}
