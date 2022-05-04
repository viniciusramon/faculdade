#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float altura=0, peso=0, imc=0;
	
	while(1)
	{
		printf("\nDigite a sua altura: ");
		scanf("%f",&altura);
		
		printf("\nDigite o seu peso: ");
		scanf("%f",&peso);
		
		imc=peso/(altura*altura);
		
		if(imc<=18.5)
		{
			printf("\nVocê está abaixo do peso! Seu IMC é de %.2f",imc);
		}
		else if((18.6<=imc)&&(imc<=24.9))
		{
			printf("\nParabéns! Você está no peso ideal! Seu IMC é de %.2f",imc);

		}
		else if((25.0<=imc)&&(imc<=29.9))
		{
			printf("\nVocê está levemente acima do peso ideal! Seu IMC é de %.2f",imc);

		}
		else if((30.0<=imc)&&(imc<=34.9))
		{
			printf("\nAtenção! Você está no grau de obesidade 1! Seu IMC é de %.2f",imc);

		}
		else if((35.0<=imc)&&(imc<=39.9))
		{
			printf("\nAtenção! Você está no grau de obesidade 2, obesidade SEVERA!!! Seu IMC é de %.2f",imc);

		}
		else 
		{
			printf("\nCuidado! Você está no grau de obesidade 3, obesidade MÓRBIDA, por favor, procure orientação médica! Seu IMC é de %.2f",imc);

		}
	}
	
}
