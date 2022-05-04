/*

Nome: Vinicius Ramon Da Costa Reis
RA: 0157/12-3

Exerc�cio para Atividade AI 1

Exerc�cio 8 - Fa�a um programa em C que permita que o usu�rio possa converter Real para outras moedas, da seguinte forma:

Caso 1: converter Real para D�lar Americano

Caso 2: converter Real para Euro

Caso 3: converter Real para Libra

Caso 4: converter Real para Peso

*/
#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
 	float real=0,dolar=0,euro=0,libra=0,pesos=0;
	int op=0;
	
 	while(1)
	 {
	 	printf("\nDigite 1 para converter Real (R$) para D�lar Americano($).");
		printf("\nDigite 2 para converter Real (R$) para Euro(EUR).");	
		printf("\nDigite 3 para converter Real (R$) para Libra(�).");	
		printf("\nDigite 4 para converter Real (R$) para Pesos($).\n");	
		scanf("%i",&op);
	  	   
	   switch (op)
	   {
	   	case 1:
	   		printf("\nDigite o valor em Real a ser convertido: R$ ");
      		scanf("%f",&real);
	   		printf("\nDigite o valor da cota��o do Dolar do dia: $ ");
	   		scanf("%f",&dolar);
        	printf("\nO Valor de R$%.2f convertido � de $%.2f",real,(1/dolar)*real);
        break;
        
        case 2:
        	printf("\nDigite o valor em Real a ser convertido: R$ ");
            scanf("%f",&real);
        	printf("\nDigite o valor da cota��o do Euro do dia: EUR ");
	   		scanf("%f",&euro);
        	printf("\nO Valor de R$%.2f convertido � de EUR %.2f",real,(1/euro)*real);
        break;
        
        case 3:
        	printf("\nDigite o valor em Real a ser convertido: R$ ");
            scanf("%f",&real);
        	printf("\nDigite o valor da cota��o da Libra do dia: � ");
	   		scanf("%f",&libra);
        	printf("\nO Valor de R$%.2f convertido � de �%.2f",real,(1/libra)*real);
        break;
        
        case 4:
        	printf("\nDigite o valor em Real a ser convertido: R$ ");
            scanf("%f",&real);
        	printf("\nDigite o valor da cota��o do Pesos do dia: $ ");
	   		scanf("%f",&pesos);
        	printf("\nO Valor de R$%.2f convertido � de $%.2f",real,(1/pesos)*real);
   		break;
   		
	   	default:
   	   	printf("\nOperador inv�lido");
   	   }
    }
}
