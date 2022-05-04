#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int days=0;
	float pricedays=0, km=0, pricekm=0, finalprice=0;
	
	while(1)
	{
		printf("\nDigite a quantidade de dias que o carro ficou alugado: ");
		scanf("%d",&days);
		
		printf("\nDigite a quantidade de Km's percorridos com o carro: ");
		scanf("%f",&km);
		
		pricedays=days*60;
		pricekm=km*0.15;
		finalprice=pricedays+pricekm;
		
		printf("\nO valor total dos dias a serem pagos é de: R$ %.2f\nO valor total do Km a ser pago é de: R$ %.2f\nO valor total da conta a ser paga é de: R$ %.2f",pricedays,pricekm,finalprice);
		
	}
}
