#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float anos, dias;
	
	while(1)
	{
		printf("\nDigite sua idade em anos:");
		scanf("%f",&anos);
	
		dias=anos*365;
	
		printf("\nSua idade em dias é %0.f",dias);
	}
}
