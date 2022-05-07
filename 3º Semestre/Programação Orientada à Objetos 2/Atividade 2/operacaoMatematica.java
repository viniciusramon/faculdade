// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 2 - Você deverá criar um programa em Java, que peça para o usuário digitar dois números e escolher qual operação matemática deseja aplicar aos números digitados (soma, subtração, multiplicação e divisão).

import java.util.Scanner;

public class operacaoMatematica {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        System.out.println("Digite o primeiro número: ");
        float n1 = keyboard.nextFloat();

        System.out.println("Digite o segundo número: ");
        float n2 = keyboard.nextFloat();

        System.out.println("Digite a operação matemática que deseja fazer: ");
        String op = keyboard.next();

        keyboard.close();

        float resultado = 0;

        switch (op) {
            case "*": resultado = n1*n2; break;
            case "/": resultado = n1/n2; break;
            case "+": resultado = n1+n2; break;
            case "-": resultado = n1-n2; break;
            default: System.out.println("Operação inválida!!");;
            }

        System.out.println("O resultado da operação é: " + resultado);
    }
}
