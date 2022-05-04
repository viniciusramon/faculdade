#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
 	float num1, num2;
	char op;
	
 	while(1)
	{
	   printf("\nDigite um número, operador, número: ");
       scanf("%f %c %f", &num1, &op, &num2);
	   
	   switch (op)
	   {
	   	case '+':
        printf("\nsoma = %.2f",num1+num2);
        break;
        
        case '-':
        printf("\nsub = %.2f",num1-num2);
        break;
        
        case'*':
        printf("\nmult = %.2f",num1*num2);
        break;
        
        case '/':
		printf("\ndiv = %.2f",num1/num2);
   		break;
   		
	   	default:
   	   	printf("\nOperador inválido");
   	   }
    }
}
