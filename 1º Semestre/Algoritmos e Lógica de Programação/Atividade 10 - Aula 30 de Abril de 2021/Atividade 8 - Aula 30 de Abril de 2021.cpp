/* 8 - Construa um programa em C que permita informar dados para 2 vetores inteiros de 20 posições 
e apresente o conjunto de união dos vetores. 
Lembrando que conjunto de união são todos os elementos que existem em ambos os vetores, 
mas sem repetição (cada número pode aparecer uma única vez no resultado). */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

#define TAM_VETOR 3

main(){
	
	setlocale(LC_ALL,"");
	int vetor1[TAM_VETOR],vetor2[TAM_VETOR],vetor3[2*TAM_VETOR];
	int i=0,j=0,k=0,tamAtual=0;
        
        //Recebe o valor do primeiro vetor
        for(i=0;i<TAM_VETOR;i++)
        {
            printf("Digite um valor: ");
            scanf("%d",&vetor1[i]);
        }
        
        //Recebe o valor do segundo vetor
        for(i=0;i<TAM_VETOR;i++)
        {
            printf("Digite um valor: ");
            scanf("%d",&vetor2[i]);
        }
        
        printf("\n");
        
        //Exibe o valor do primeiro vetor
        printf("\nVetor 1: ");

        for(i=0;i<TAM_VETOR;i++)
        {
            printf("%d ",vetor1[i]);
        }
        
        printf("\n");
    
        //Exibe o valor do segundo vetor
        printf("\nVetor 2: ");

        for(i=0;i<TAM_VETOR;i++)
        {
            printf("%d ",vetor2[i]);
        }
        
        printf("\n");
              
        //Realiza o cálculo da União dos dois vetores
        for(i=0;i<TAM_VETOR;i++)
        {
           	for(j=0;j<TAM_VETOR;j++)
			   {
	        	if(vetor1[i]!=vetor2[j])
	            {
	                for(k=0;k<tamAtual;k++)
	                {
	                	if(vetor1[i]==vetor3[k])
	                	{
	                		break;
						}
					}
					if(k==tamAtual)
					{
						vetor3[tamAtual]=vetor1[i];
						tamAtual++;
					}
	        
				}
			}
		}
		
		for(i=0;i<TAM_VETOR;i++)
        {
           	for(j=0;j<TAM_VETOR;j++)
			   {
	        	if(vetor1[i]!=vetor2[j])
	            {
	                for(k=0;k<tamAtual;k++)
	                {
	                	if(vetor2[j]==vetor3[k])
	                	{
	                		break;
						}
					}
					if(k==tamAtual)
					{
						vetor3[tamAtual]=vetor2[j];
						tamAtual++;
					}
	        
				}
			}
		}			
		
        //Exibe o resultado da união dos dois vetores
       	printf("\nResultado União: ");
       	for(i=0;i<tamAtual;i++)
       	{
       		printf("%d ",vetor3[i]);
		}
    
    while(1);

}
