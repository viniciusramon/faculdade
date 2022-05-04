#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	float altura=0,peso=0,imc=0,imcgeral;
	int x=0;
		
	while(x<15)
	{
		printf("\nPaciente %d",x);
		printf("\nDigite sua altura: ");
		scanf("%f",&altura);
		printf("\nDigite seu peso: ");
		scanf("%f",&peso);
		
		imc=peso/(altura*altura);
		
		if(imc<17)
		{
			printf("\nSeu IMC foi de %.2f. Você está muito abaixo do peso!",imc);
		}
		else if(imc>=17 && imc<=18.49)
		{
			printf("\nSeu IMC foi de %.2f. Você está abaixo do peso!",imc);
		}
		else if(imc>=18.5 && imc<=24.99)
		{
			printf("\nSeu IMC foi de %.2f. Você está no peso ideal!",imc);
		}
		else if(imc>=25 && imc<=29.99)
		{
			printf("\nSeu IMC foi de %.2f. Você está acima do peso!",imc);
		}
		else if(imc>=30 && imc<=34.99)
		{
			printf("\nSeu IMC foi de %.2f. Você está com Obesidade 1!",imc);
		}
		else if(imc>=35 && imc<=39.99)
		{
			printf("\nSeu IMC foi de %.2f. Você está com Obesidade 2!",imc);
		}
		else
		{
			printf("\nSeu IMC foi de %.2f. Você está com Obesidade 3!",imc);
		}
		imcgeral=imcgeral+imc;
		x++;
	}
	printf("\nA média dos IMC's do grupo foi: %f",imcgeral/x);

}
