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
			printf("\nVoc� est� abaixo do peso! Seu IMC � de %.2f",imc);
		}
		else if((18.6<=imc)&&(imc<=24.9))
		{
			printf("\nParab�ns! Voc� est� no peso ideal! Seu IMC � de %.2f",imc);

		}
		else if((25.0<=imc)&&(imc<=29.9))
		{
			printf("\nVoc� est� levemente acima do peso ideal! Seu IMC � de %.2f",imc);

		}
		else if((30.0<=imc)&&(imc<=34.9))
		{
			printf("\nAten��o! Voc� est� no grau de obesidade 1! Seu IMC � de %.2f",imc);

		}
		else if((35.0<=imc)&&(imc<=39.9))
		{
			printf("\nAten��o! Voc� est� no grau de obesidade 2, obesidade SEVERA!!! Seu IMC � de %.2f",imc);

		}
		else 
		{
			printf("\nCuidado! Voc� est� no grau de obesidade 3, obesidade M�RBIDA, por favor, procure orienta��o m�dica! Seu IMC � de %.2f",imc);

		}
	}
	
}
