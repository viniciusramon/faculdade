#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	int num1=0, num2=0;
	
	while(1)
	{
		printf("\nDigite o primeiro n�mero: ");
		scanf("%d",&num1);
		
		printf("\nDigite o segundo n�mero: ");
		scanf("%d",&num2);
		
		if(num1>num2)
		{
			printf("\nO n�mero digitado de maior valor �: %d",num1);
		}
		else if (num1<num2)
		{
			printf("\nO n�mero digitado de maior valor �: %d",num2);
		}
		else
		{
			printf("\nOs n�meros digitados s�o iguais: %d",num1);
		}
		
	}
}
