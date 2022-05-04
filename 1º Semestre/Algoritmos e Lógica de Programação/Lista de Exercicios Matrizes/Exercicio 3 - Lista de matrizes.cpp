/* 3. O tempo que um determinado avião dispensa para percorrer o trecho entre duas localidades distintas esta disponível através da tabela
a.	Construa um algoritmo que leia a tabela anterior e informe ao usuário o tempo necessário para percorrer duas cidades por ele fornecidas 
até o momento em que ele fornecer duas cidades iguais (origem e destino) */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

#define tam 7

main()
{
	setlocale(LC_ALL,"");
	
    int city[tam][tam]{{0,2,11,6,15,11,1},
					   {2,0,7,12,4,2,15},
					   {11,7,0,11,8,3,13},	
					   {6,12,11,0,10,2,1},
					   {15,4,8,10,0,5,13},
					   {11,2,3,2,5,0,14},					   					   
					   {1,15,13,1,13,14,0}};
    int l=0,c=0;
    int origem=1;
    int destino=0;
    
		while(origem!=destino)
    	{
	    	printf("\nDigite a cidade de origem: ");
	    	scanf("%d",&origem);
	    	printf("\nDigite a cidade de destino: ");
	    	scanf("%d",&destino);
	    	
	    	l=origem;
	    	c=destino;
	    	
	    	if(l<=tam && c<=tam)
	    	{
				printf("\nO tempo de viagem é de: %d horas ",city[origem-1][destino-1]);	
			}
			else
			{
				printf("\nViagem indisponivel! ");
			}
			
	  	}

	
	printf("\nVocê está na mesma cidade");                        
    
	while(1);
}
