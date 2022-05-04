/* 7 - Crie um programa em C que leia um vetor de 30 números inteiros e gere um segundo vetor cujas posições pares são o dobro do vetor original e as ímpares o triplo. */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

main()
{
	
		setlocale(LC_ALL,"");
		
		int vetor[30],vetor2[30],vetor3[30],i=0;
		
		for(i=0;i<30;i++)
		{
			printf("Digite um valor: ");
			scanf("%d",&vetor[i]);
		}
		
		printf("\n");

		for(i=0;i<30;i++)
		{
			if(vetor[i]%2==0)
			{
				vetor2[i]=2*vetor[i];
				printf("%d ",vetor2[i]);
			}
			
			else
			{
				vetor3[i]=3*vetor[i];
				printf("%d ",vetor3[i]);
			}
		}
		
	while(1);

}
					
			

