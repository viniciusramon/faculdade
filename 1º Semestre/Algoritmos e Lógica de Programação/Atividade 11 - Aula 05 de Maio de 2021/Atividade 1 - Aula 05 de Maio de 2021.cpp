/* Monte um programa que guarde 10 valores em um vetor, apresente ele na ordem informada e depois na ordem inversa. */

#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int vetor1[10],vetor2[10],i=0,j=0,aux=0;
	
	for(i=0;i<10;i++)
	{
		printf("Digite um valor: ");
		scanf("%d",&vetor1[i]);
	}
	/* imprimi na ordem informada */
	for(i=0;i<10;i++)
	{
		printf("%d ",vetor1[i]);
	}
	
	printf("\n");
	
	/* imprimi na ordem inversa */
	for(i=9;i>=0;i--)
	{
		// vetor2[i]=vetor1[i];
		printf("%d ",vetor1[i]);

	}
	
	while(1);
	
}
