#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	while(1)
	{
		setlocale(LC_ALL,"");
		
		float num1=0, num2=0, soma=0, div=0, sub=0, mult=0;
		int mod=0, x=0, y=0;
		
		printf("Entre com o primeiro numero: ");
		scanf("%f",&num1);
		
		printf("\nEntre com o segundo numero: ");
		scanf("%f",&num2);
		
		soma=num1+num2;
		sub=num1-num2;
		div=num1/num2;
		mult=num1*num2;
		x=num1;
		y=num2;
		mod=x%y;
		
		printf("\nA soma dos valores �: %.2f",soma);
		printf("\nA subtra��o dos valores �: %.2f",sub);
		printf("\nA multiplica��o dos valores �: %.2f",mult);
		printf("\nA divis�o dos valores �: %.2f",div);
		printf("\nO resto da divis�o dos valores �: %d \n",mod);
	
	}
}
