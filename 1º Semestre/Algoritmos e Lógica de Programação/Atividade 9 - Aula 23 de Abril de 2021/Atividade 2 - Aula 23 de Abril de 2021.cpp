#include<stdio.h>
#include<locale.h>
main()
{
	setlocale(LC_ALL,"");
	float vetor[10],maior=0,menor=0,media=0;
	int i=0;
	
	for(i=0;i<10;i++)
	{
		printf("\nDigite o valor: ");
		scanf("%f",&vetor[i]);
		maior=vetor[i];
		menor=vetor[i];
		media=(media+vetor[i]);
	}
		
	for(i=0;i<10;i++)	
	{
		if(vetor[i]<=menor)
		{
			menor=vetor[i];
			
		}
		else if(vetor[i]>=maior)
		{
			maior=vetor[i];
		}
	}
	
	printf("\nA media dos geral dos elementos é: %.2f, o maior número foi %.2f e o menor número foi %.2f",media/i,maior,menor);
	
	while(1);
}
