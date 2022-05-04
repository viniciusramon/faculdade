/* Cálculo de IMC utilizando funções */

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

float calculaIMC(float peso, float altura)
{
	float imc=0;
	imc=peso/(altura*altura);
	return imc;
}

void resultado(float imc)
{
	if(imc<18.5)
	{
		printf("\nSeu IMC é de %2.f, você está abaixo do peso",imc);	
	}
	else if(imc>=18.6 && imc <=24.9)
	{
		printf("\nSeu IMC é de %2.f, você está no peso ideal",imc);	
	}
	else if(imc>=25 && imc <=29.9)
	{
		printf("\nSeu IMC é de %2.f, você está levemente acima do peso",imc);	
	}
	else if(imc>=30 && imc <=34.9)
	{
		printf("\nSeu IMC é de %2.f, você está acima do peso com obesidade de grau I",imc);	
	}
	else if(imc>=35 && imc <=39.9)
	{
		printf("\nSeu IMC é de %2.f, você está acima do peso com obesidade de grau II",imc);	
	}
	else
	{
		printf("\nSeu IMC é de %2.f, você está acima do peso com obesidade de grau III",imc);	
	}

}

main()
{
	while(1)
	{
		setlocale(LC_ALL,"");
		float peso=0,altura=0,imc=0;
		
		printf("\nDigite sua altura: ");
		scanf("%f",&altura);
		printf("\nDigite seu peso: ");
		scanf("%f",&peso);
		
		imc=calculaIMC(peso,altura);
		
		resultado(imc);		
	}
}
