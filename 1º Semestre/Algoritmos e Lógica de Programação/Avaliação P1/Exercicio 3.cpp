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
		
		if(imc<=18.4)
		{
			printf("\nVoc� est� abaixo do peso ideal! Seu IMC � de %.2f",imc);
		}
		else if((18.5<=imc)&&(imc<=30))
		{
			printf("\nParab�ns! Voc� est� no peso ideal! Seu IMC � de %.2f",imc);

		}
		else 
		{
			printf("\nCuidado! Voc� est� no grau de obesidade 3, obesidade M�RBIDA, por favor, procure orienta��o m�dica! Seu IMC � de %.2f",imc);

		}
	}
	
}
