/* 4. Construa um programa em C que efetue a leitura, soma e impressão do resultado entre duas matrizes inteiras que comportem 25 elementos.
Obs: utilizar três matrizes: matrizA, matrizB, matrizsoma */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
      int A[25][25],B[25][25],C[25][25];
      int l,c;
      
      for(l=0;l<25;l++)
      {
                      for(c=0;c<25;c++)
                      {
                                      printf("valor da primeira matriz: ");
                                      scanf("%d",&A[l][c]);
                                      }
                                      }
                                      
                                      
      for(l=0;l<25;l++)
      {
                      for(c=0;c<25;c++)
                      {
                                      printf("valor da segunda matriz: ");
                                      scanf("%d",&B[l][c]);
                                      }
                                      }
                                      
                                                                     
      for(l=0;l<25;l++)
      {
                      for(c=0;c<25;c++)
                      {
                                      C[l][c]=A[l][c]+B[l][c];
                                      }
                                      }
                                      
                                      
      for(l=0;l<25;l++)
      {
                      for(c=0;c<25;c++)
                      {
                                      printf("%d ",C[l][c]);
                                      }
                                      printf("\n");
                                      }
                                      
                                      
      while(1);
}
