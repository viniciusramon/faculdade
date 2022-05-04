// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 6 - Crie um programa em java que peça para o usuário digitar uma frase, logo em seguida informar a quantidade de letras digitadas e quantas letras 'a' tem na frase. Exemplo: 
//  Entrada => “Frase de teste apenas”
//  Saída => “A frase possui 18 letras e 3 letras ‘a’ ”

import java.util.Scanner;

public class contadorLetras {

    public static void main(String[] args) {
        
        Scanner keyboard = new Scanner(System.in);

        String frase = keyboard.nextLine();

        int l=0;
        int a=0;
        
        int total = frase.length();

        System.out.println("Digite a frase: ");

        for(int i=0;i<frase.length();i++){
            if(frase.charAt(i) != " "){
                l++;
            }
            if(frase.charAt(i).ToUppercase() = 'A')
            a++;
        }

    }
    
}
