#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int num=0, mult1=0, mult2=0;
	
	while(1)
	{
		printf("\nDigite um n�mero: ");
		scanf("%d",&num);
		
		mult1=num*2;
		mult2=num*3;
		
		printf("\nO dobro de %d � %d e o triplo � %d",num,mult1,mult2);
	}
}
