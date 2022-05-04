#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
 	float real=0,dolar=0,euro=0,libra=0,pesos=0;
	int op=0;
	
 	while(1)
	 {
	 	printf("\nDigite 1 para converter Real (R$) para Dólar Americano($).");
		printf("\nDigite 2 para converter Real (R$) para Euro(EUR).");	
		printf("\nDigite 3 para converter Real (R$) para Libra(£).");	
		printf("\nDigite 4 para converter Real (R$) para Pesos($).\n");	
		scanf("%i",&op);
	  	   
	   switch (op)
	   {
	   	case 1:
	   		printf("\nDigite o valor em Real a ser convertido: R$ ");
      		scanf("%f",&real);
	   		printf("\nDigite o valor da cotação do Dolar do dia: $ ");
	   		scanf("%f",&dolar);
        	printf("\nO Valor de R$%.2f convertido é de $%.2f",real,(1/dolar)*real);
        break;
        
        case 2:
        	printf("\nDigite o valor em Real a ser convertido: R$ ");
            scanf("%f",&real);
        	printf("\nDigite o valor da cotação do Euro do dia: EUR ");
	   		scanf("%f",&euro);
        	printf("\nO Valor de R$%.2f convertido é de EUR %.2f",real,(1/euro)*real);
        break;
        
        case 3:
        	printf("\nDigite o valor em Real a ser convertido: R$ ");
            scanf("%f",&real);
        	printf("\nDigite o valor da cotação da Libra do dia: £ ");
	   		scanf("%f",&libra);
        	printf("\nO Valor de R$%.2f convertido é de £%.2f",real,(1/libra)*real);
        break;
        
        case 4:
        	printf("\nDigite o valor em Real a ser convertido: R$ ");
            scanf("%f",&real);
        	printf("\nDigite o valor da cotação do Pesos do dia: $ ");
	   		scanf("%f",&pesos);
        	printf("\nO Valor de R$%.2f convertido é de $%.2f",real,(1/pesos)*real);
   		break;
   		
	   	default:
   	   	printf("\nOperador inválido");
   	   }
    }
}
