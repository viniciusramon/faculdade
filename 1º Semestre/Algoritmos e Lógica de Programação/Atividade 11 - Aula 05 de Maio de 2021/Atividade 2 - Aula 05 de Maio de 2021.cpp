/* Monte uma matriz 3X3 de n�meros inteiros, positivos ou negativos, somando a quantidade de positivos e a quantidade de negativos. Ao t�rmino mostre a quantidade de positivos e negativos. */

#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int matriz[3][3],pos=0,neg=0,zero=0,somapos=0,somaneg=0,i=0,j=0;
	//variavel i � usada pra linha
	for(i=0;i<3;i++)
	{
		// variavel j � usado para coluna
		for(j=0;j<3;j++)
		{
			printf("Entre com o valor: ");
			scanf("%d",&matriz[i][j]);
			
			//verifica se o n�mero na matriz � igual a zero
			if(matriz[i][j]==0)
			{
				zero++;
			}
			//verifica se o n�mero na matriz � positivo
			else if(matriz[i][j]>0)
			{
				pos++;
				somapos=somapos+matriz[i][j];
			}
			//verifica se o n�mero na matriz � negativo
			else if(matriz[i][j]<0)
			{
				neg++;
				somaneg=somaneg+matriz[i][j];
			}
		}
	}
	printf("\nQuantidade de zeros: %d",zero);
	printf("\nQuantidade de positivos: %d",pos);
	printf("\nQuantidade de negativos: %d",neg);
	printf("\nSoma de positivos: %d",somapos);
	printf("\nSoma de negativos: %d",somaneg);


	while(1);
}
	
