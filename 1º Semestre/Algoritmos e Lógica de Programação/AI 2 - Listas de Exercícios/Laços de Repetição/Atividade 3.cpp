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
			printf("\nFuncionário %d",i);
			printf("\nDigite seu salário: R$ ");
			scanf("%f",&salario);
			printf("\nDigite sua quantidade de pontos: ");
			scanf("%f",&pontos);
		
			if(pontos>=1000)
			{
				printf("\nVocê teve um bônus de R$500,00 e seu salário final foi de R$%.2f. Parabéns!",salario+500);
			}
			else if(pontos>=500 && pontos<=999)
			{
				printf("\nVocê teve um bônus de R$300,00 e seu salário final foi de R$%.2f. Parabéns!",salario+300);
			}
			else if(pontos>=100 && pontos<=499)
			{
				printf("\nVocê teve um bônus de R$100,00 e seu salário final foi de R$%.2f. Parabéns!",salario+100);
			}
			else if(pontos>=1 && pontos<=99)
			{
				printf("\nVocê teve um bônus de R$25,00 e seu salário final foi de R$%.2f. Parabéns!",salario+25);
			}
			else
			{
				printf("\nVocê não atingiu os requisitos para ter bônus sentimos muito! O seu salário final foi de R$%.2f.",salario);
			}
			ms=ms+salario;
			mp=mp+pontos;
			cont++;
		}
		printf("\nA média total dos salarios foi de R$%.2f e a média total de pontos foi de %.2f",ms/cont,mp/cont);
	}

}
