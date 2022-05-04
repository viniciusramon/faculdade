#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float tempC=0, tempF=0;
	
	while(1)
	{
		printf("\nDigite a temperatura em °C:");
		scanf("%f",&tempC);
		
		tempF=(tempC*1.8)+32;
		
		printf("\nA temperatura de %.0f °C convertida para °F é: %.0f °F\n",tempC,tempF);
		
	}
}
