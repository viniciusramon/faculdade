// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 4 - Fazer um programa que leia os seguintes dados fornecidos pelo teclado:
//  → quilometragem percorrida por um carro;
//  → consumo, em litros, do combustível gasto;
//  → o preço do litro de combustível.
//  O programa deve calcular e imprimir o consumo médio em km/l e o custo por quilômetro.

import java.util.Scanner;

public class consumoCarro {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        System.out.println("Digite a quilometragem percorrida: ");
        float km = keyboard.nextFloat();

        System.out.println("Digite o consumo do combustível: ");
        float litro = keyboard.nextFloat();

        System.out.println("Digite o preço do combustível: ");
        float preco = keyboard.nextFloat();

        keyboard.close();

        float consumoCarro = km/litro;
        float custoKm = litro*preco;

        System.out.println("O seu carro consome em média " + consumoCarro + " Km/L e o custo por Km é de " + custoKm);

    }
}
