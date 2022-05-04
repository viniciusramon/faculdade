#include<stdio.h>
#include<locale.h>
main()
{
	setlocale(LC_ALL,"");
	int vetorA[5],vetorB[5],vetorC[5],i=0;
		
	for(i=0;i<5;i++)
	{
		printf("\nDigite o valor: ");
		scanf("%d",&vetorA[i]);
	}
	for(i=0;i<5;i++)
	{
		printf("\nDigite o valor: ");
		scanf("%d",&vetorB[i]);
	}
	for(i=0;i<5;i++)
	{
		vetorC[i] = vetorA[i]+vetorB[i];
	}
	for(i=0;i<5;i++)
	{
		printf("\nA soma dos valores do índice %d: %d",i,vetorC[i]);
	}
	while(1);
}
