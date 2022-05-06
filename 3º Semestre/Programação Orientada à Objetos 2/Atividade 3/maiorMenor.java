// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 2 - Você deverá criar uma classe em Java, que peça para o usuário digitar 10 números e após os devidos testes seja informado qual foi o maior e o menor valor digitado.

import java.util.Scanner;

public class maiorMenor {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner (System.in);

        int num;
        int menor = 0;
        int maior = 0;
        int temp = 0;
    

        for(int i=0;i<10;i++){

            System.out.println("Digite um número: ");

            num = keyboard.nextInt();

            if(i==0){
                maior = num;
                menor = num;
            }

            if(num >= maior){
                temp = num;
                maior = temp;
            }
            else if(num <= menor){
                temp = num;
                menor = temp;
            }                

        }

        keyboard.close();

        if(maior != menor ){
            System.out.println("O maior valor é " + maior + " e o menor valor é " + menor);
        }
        else if(maior == menor){
            System.out.println("O maior e menor valor são iguais " + menor);
        }
        
    }
    
}
