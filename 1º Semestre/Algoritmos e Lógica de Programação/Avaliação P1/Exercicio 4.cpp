#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
 	float salario=0,bonus=0,pontos=0;
	
 	while(1)
	{
	   printf("\nDigite o valor do salário: R$ ");
       scanf("%f",&salario);
       printf("\nDigite a quantidade de pontos realizadas: ");
       scanf("%f",&pontos);
	   
	   	if(pontos>=1000)
	   	{
	   	printf("\nO seu salário final é de: R$%.2f",bonus=salario+500);
   		}
    	else if((500<=pontos)&&(pontos<=999))
	   	{
	   	printf("\nO seu salário final é de: R$%.2f",bonus=salario+300);
   		}
   		else
   		{
   		printf("\nDesculpe mas você não atingiu a pontuação minima para conseguir o bonûs");
		}
   	}
}

