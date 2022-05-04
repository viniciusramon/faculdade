/* 2.	Elabore um algoritmo que leia duas matrizes A e B do tipo 3x3 e calcule uma matriz R com sua multiplicação.
Obs: lógica do exercício na página 82 do livro Lógica de Programação. */
#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

#define tam 3

main()
{
	setlocale(LC_ALL,"");
	
    int A[tam][tam],B[tam][tam],C[tam][tam];
    int l=0,c=0,x=0,aux=0;
      
 	for(l=0;l<tam;l++)
   	{
    	for(c=0;c<tam;c++)
  		{
      		printf("valor da primeira matriz: ");
      		scanf("%d",&A[l][c]);
    	}
    }
                                      
                                      
      	for(l=0;l<tam;l++)
      	{
            for(c=0;c<tam;c++)
            {
                printf("valor da segunda matriz: ");
                scanf("%d",&B[l][c]);
            }
        }
                                      
                                                                     
      	for(l=0;l<tam;l++)
      	{
        	for(c=0;c<tam;c++)
            {
	            C[l][c] = 0;
	            
				for(x=0;x<tam;x++) 
				{
					aux +=  A[l][x] * B[x][c];
				}
	
				C[l][c] = aux;
				aux = 0;
                            
            }
    	}
                                      
                                      
      	for(l=0;l<tam;l++)
      	{
         	for(c=0;c<tam;c++)
          	{
            	printf("%d ",C[l][c]);
            }
        printf("\n");
        }
                                      
                                      
      while(1);
}
