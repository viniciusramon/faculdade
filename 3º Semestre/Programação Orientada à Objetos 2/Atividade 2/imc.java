// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 3 - Elabore uma classe que realiza o cálculo do peso ideal. O peso ideal é dado pelo IMC (Índice de Massa Corporal). Considere a tabela seguinte:

import java.util.Scanner;

public class imc {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        System.out.println("Digite o seu peso: ");
        float peso = keyboard.nextFloat();

        System.out.println("Digite a sua altura: ");
        float altura = keyboard.nextFloat();

        keyboard.close();

        float resultado = peso/(altura*altura);

        if(resultado < 18.5){
            System.out.println("O seu IMC é de: " + resultado);
            System.out.println("Você está abaixo do peso ideal!");
        }
        else if ((18.5 < resultado) && (resultado < 24.9)){
            System.out.println("O seu IMC é de: " + resultado);
            System.out.println("Você está com o peso ideal!");
        }
        else if ((25 < resultado) && (resultado < 29.9)){
            System.out.println("O seu IMC é de: " + resultado);
            System.out.println("Você está com o sobrepeso!");
        }
        else if ((30 < resultado) && (resultado < 34.9)){
            System.out.println("O seu IMC é de: " + resultado);
            System.out.println("Você está com obesidade de grau 1!");
        }
        else if ((35 < resultado) && (resultado < 39.9)){
            System.out.println("O seu IMC é de: " + resultado);
            System.out.println("Você está com obesidade de grau 2!");
        }
        else{
            System.out.println("O seu IMC é de: " + resultado);
            System.out.println("Você está com obesidade de grau 3!");
        }
    }
}
