#include <stdio.h>
#include <stdlib.h>


int main() {
  int x, y, z;
  
  printf("Digite 3 numeros diferentes: ");
  scanf("%i%i%i",&x, &y, &z);
  
  printf("Ordem crescente:\n");
  
  if (x < y && y < z)
  
      printf("%i\n%i\n%i\n",x, y, z);
      
  else if (x < z && z < y)
  
      printf("%i\n%i\n%i\n", x, z, y);
      
  
  else if (y < x && x < z)
  
      printf("%i\n%i\n%i\n",y, x, z);
  
  
  else if (y < z && z < x)
  
      printf("%i\n%i\n%i\n",y, z, x);
      
  else if (z < x && x < y)
      
      printf("%i\n%i\n%i\n",z, x, y);
  
  else
      
      printf("%i\n%i\n%i\n",z, y, x);
  
       
}
