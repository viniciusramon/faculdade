#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float nota1=0, nota2=0, media=0;
	
	while(1)
	{
		printf("\nDigite a primeira nota:");
		scanf("%f",&nota1);
		
		printf("\nDigite a segunda nota:");
		scanf("%f",&nota2);
		
		media=(nota1+nota2)/2;
		
		printf("\nA sua média é: %.2f\n",media);
		
	}
}
