/* 3 - Fa�a um programa em C que preencha um vetor de 10 posi��es de inteiro. 
	Ap�s o preenchimento, fa�a a ordena��o do vetor (ordem crescente). */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

main()
{
	
		setlocale(LC_ALL,"");
		
		int vetorA[10],temp=0,j=0,i=0;
		
		for(i=0;i<10;i++)
		{
			printf("\nDigite um n�mero: ");
			scanf("%d",&vetorA[i]);
		}
		
		for(i=0;i<10;i++)
		{
			for(j=i+1;j<10;j++)
			{
				if(vetorA[i]>vetorA[j])
				{
					temp=vetorA[i];
					vetorA[i]=vetorA[j];
					vetorA[j]=temp;
				}
			}
		}
		for(i=0;i<10;i++)
		{
			printf("\n %d",vetorA[i]);
		}
				
		while(1);
	
}
