#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
 	float salario=0,bonus=0,pontos=0;
	
 	while(1)
	{
	   printf("\nDigite o valor do sal�rio: R$ ");
       scanf("%f",&salario);
       printf("\nDigite a quantidade de pontos realizadas: ");
       scanf("%f",&pontos);
	   
	   	if(pontos>=1000)
	   	{
	   	printf("\nO seu sal�rio final � de: R$%.2f",bonus=salario+500);
   		}
    	else if((500<=pontos)&&(pontos<=999))
	   	{
	   	printf("\nO seu sal�rio final � de: R$%.2f",bonus=salario+300);
   		}
   		else
   		{
   		printf("\nDesculpe mas voc� n�o atingiu a pontua��o minima para conseguir o bon�s");
		}
   	}
}

