#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
    float notas[5], media_geral=0;
    int i=0;
      
    for(i=0;i<5; i++)
    {
    	printf("\nDigite a nota do aluno: ");
        scanf("%f",&notas[i]);
    }
      
    for(i=0;i<5;i++)
    {
    	printf("\nNota do aluno %i: %.2f", i,notas[i]);
	  	media_geral = media_geral + notas[i];
      	
	}
	
	printf("\nMedia das notas: %.2f", media_geral/i);
	
	while(1);
         
}

