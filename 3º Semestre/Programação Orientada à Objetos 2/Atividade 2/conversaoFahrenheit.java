// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 1 - Escreva um programa em Java que leia uma temperatura em Fahrenheit, calcule e exiba seu valor em Celsius. Conversão: C = (F - 32) * (5 / 9).

import java.util.Scanner;

public class conversaoFahrenheit {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        System.out.println("Digite o valor em °F que gostaria de converter para °C: ");

        float f = keyboard.nextFloat();
        keyboard.close();
        float c = (float) ((f - 32)/1.800);

        System.out.println("O valor de " + f + "°F convertido para °C é de: " + c + "°C");
    }
}