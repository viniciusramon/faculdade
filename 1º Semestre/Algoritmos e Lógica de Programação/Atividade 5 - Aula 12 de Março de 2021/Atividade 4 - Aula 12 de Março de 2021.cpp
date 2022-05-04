#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float c=0,f=0;
	
	printf("\nDigite o valor em °C: ");
	scanf("%f",&c);
	
	f=(c*1.8)+32;
		
	if(f>=104)
	{
		printf("\nSua temperatura está elevada! Temperatura: %.2f°",f);
	}
	
	else
	{
		printf("\nSua temperatura está normal! Temperatura: %.2f°",f);
	}

}
