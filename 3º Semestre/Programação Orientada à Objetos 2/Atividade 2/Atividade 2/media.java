// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 5 - Calcular a média aritmética e a média ponderada de 3 valores. Para o cálculo da média ponderada, deve ser fornecido também os pesos. Usar como valor de entrada para os pesos: 4, 4 e 2. Para calcular a média ponderada dividam por 3.

import java.util.Scanner;

public class media {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        System.out.println("Digite a primeira nota: ");
        float n1 = keyboard.nextFloat();

        System.out.println("Digite a segunda nota: ");
        float n2 = keyboard.nextFloat();

        System.out.println("Digite a terceira nota: ");
        float n3 = keyboard.nextFloat();

        keyboard.close();

        float mediaA = (n1+n2+n3)/3;
        float mediaP = ((n1*4)+(n2*4)+(n3*2))/3;

        System.out.println("Sua média aritmetica é de: " + mediaA);
        System.out.println("Sua média ponderada é de: " + mediaP);
    }
}
