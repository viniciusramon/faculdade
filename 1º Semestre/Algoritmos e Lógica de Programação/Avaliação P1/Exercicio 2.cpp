#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	int num1=0, num2=0;
	
	while(1)
	{
		printf("\nDigite o primeiro número: ");
		scanf("%d",&num1);
		
		printf("\nDigite o segundo número: ");
		scanf("%d",&num2);
		
		if(num1>num2)
		{
			printf("\nO número digitado de maior valor é: %d",num1);
		}
		else if (num1<num2)
		{
			printf("\nO número digitado de maior valor é: %d",num2);
		}
		else
		{
			printf("\nOs números digitados são iguais: %d",num1);
		}
		
	}
}
