
#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

#define tamanhoTexto 4
#define qtdLetras 26

int main(){
	
	setlocale(LC_ALL,"");	
	
    int i = 0;
    int chave = 0;
    char texto[tamanhoTexto];
    
	printf("Digite o texto a ser criptografado: ");
	
	for(i = 0; i < tamanhoTexto; i++){
		scanf("%c", &texto[i]);
		}
		
	printf("Digite a chave: ");
	scanf("%d", &chave);
	
	if(chave > 0){
		for (i = 0; i < tamanhoTexto; i++){
			texto[i] = 'a' + (texto[i] - 'a' + chave) % qtdLetras;
			}
		}
	
	else if(chave < 0){
		for (i = 0; i < tamanhoTexto; i++){
			texto[i] = 'z' + (texto[i] - 'z' + chave) % qtdLetras;
		    }
		}
	
	for (i = 0; i < tamanhoTexto; i++){
		printf("%c", texto[i]);
		}
}



