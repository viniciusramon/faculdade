#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float nota1=0,nota2=0,media=0;
	int freq=0;
	
	while(1)
	{
		printf("\nDigite a primeira nota: ");
		scanf("%f",&nota1);
		
		printf("\nDigite a segunda nota: ");
		scanf("%f",&nota2);	
		
		printf("\nDigite a frequência o aluno: ");
		scanf("%i",&freq);	
		
		media=(nota1+nota2)/2;
		
		if((media>=6)&&(freq>=75))
		{
			printf("\nVocê está APROVADO!!");
		}
		else
		{
			printf("\nVocê está REPROVADO!!");

		}
	}
}
