#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	float pontos=0,salario=0,ms=0,mp=0;
	int i=0,cont=0;
			
	while(1)
	{
		for(i=0;i<20;i++)
		{
			printf("\nFuncion�rio %d",i);
			printf("\nDigite seu sal�rio: R$ ");
			scanf("%f",&salario);
			printf("\nDigite sua quantidade de pontos: ");
			scanf("%f",&pontos);
		
			if(pontos>=1000)
			{
				printf("\nVoc� teve um b�nus de R$500,00 e seu sal�rio final foi de R$%.2f. Parab�ns!",salario+500);
			}
			else if(pontos>=500 && pontos<=999)
			{
				printf("\nVoc� teve um b�nus de R$300,00 e seu sal�rio final foi de R$%.2f. Parab�ns!",salario+300);
			}
			else if(pontos>=100 && pontos<=499)
			{
				printf("\nVoc� teve um b�nus de R$100,00 e seu sal�rio final foi de R$%.2f. Parab�ns!",salario+100);
			}
			else if(pontos>=1 && pontos<=99)
			{
				printf("\nVoc� teve um b�nus de R$25,00 e seu sal�rio final foi de R$%.2f. Parab�ns!",salario+25);
			}
			else
			{
				printf("\nVoc� n�o atingiu os requisitos para ter b�nus sentimos muito! O seu sal�rio final foi de R$%.2f.",salario);
			}
			ms=ms+salario;
			mp=mp+pontos;
			cont++;
		}
		printf("\nA m�dia total dos salarios foi de R$%.2f e a m�dia total de pontos foi de %.2f",ms/cont,mp/cont);
	}

}
