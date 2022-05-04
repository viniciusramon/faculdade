#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	float vetor[5],valorbusca, encontrado=0;
	int i=0;
		
	for(i=0;i<=4;i++)
	{
		printf("\nDigite o valor: ");
		scanf("%f",&vetor[i]);
	}
		printf("\nEntre com o valor a ser buscado: ");
		scanf("%f",&valorbusca);

	for(i=0;i<=4;i++)
	{
		if(valorbusca==vetor[i])
		{
			encontrado=1;
			printf("\nValor %.2f encontrado no índice %i",valorbusca,i);
		}
	}
	if(encontrado==0)
	{
		printf("\nValor não encontrado");
	}
	while(1);
}
	

