#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	int x=0;
		
	for(x=36;x>0;x/=2)
	{
		printf("\n%d",x);
	}
	while(1);
}
