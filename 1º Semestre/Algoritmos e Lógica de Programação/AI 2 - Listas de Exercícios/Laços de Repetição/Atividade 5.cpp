#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int n=0,i=0;	
	
	for(i=0;i<=20;i++)
		{
			n=i*i;
			printf("\n%d ao quadrado é = %d",i,n);
		}
		
	while(1);
}
