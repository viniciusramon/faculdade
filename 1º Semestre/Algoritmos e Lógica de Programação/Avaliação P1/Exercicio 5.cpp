#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
 	int x=0,y=0,z=0,tmp=0;
	
 	while(1)
	{
	   printf("\nDigite o primeiro n�mero: ");
       scanf("%d",&x);
       printf("\nDigite o segundo n�mero: ");
       scanf("%d",&y);
	   printf("\nDigite o terceiro n�mero: ");
       scanf("%d",&z);
       
    if (x > z) 
	{
        tmp = z;
        z = x;
        x = tmp;
    }
    if (x > y) 
	{
        tmp = y;
        y = x;
        x = tmp;
    }
    if (y > z) 
	{
        tmp = z;
        z = y;
        y = tmp;
    }
    printf("%d %d %d", x, y, z);
	} 		
}

