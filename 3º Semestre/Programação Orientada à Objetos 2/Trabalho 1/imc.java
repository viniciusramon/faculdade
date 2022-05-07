/* 	Nome: Vinicius Ramon		            RA:0157/12-3
    Nome: Diego da Cruz Possidonio          RA: 0040/21-1
    Nome: Lucas da Silva Garbuyo            RA: 0401/21-1
    Nome: Thiago pereira da Silva           RA: 0234/21-1
    Nome: Caike Alexandrino dos Santos      RA: 0487/21-1
    Nome: Miguel Krebsky Ossna              RA: 0315/21-1
    Nome: Gabriel Castilho Rodrigues        RA: 0213/21-1

	Trabalho 1 - Inserir Excessão no exercicio de IMC
    */

import java.util.Scanner;

public class imc {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        try {
            System.out.println("Digite o seu peso: ");
            float peso = keyboard.nextFloat();

            System.out.println("Digite a sua altura: ");
            float altura = keyboard.nextFloat();

            keyboard.close();

            float resultado = peso / (altura * altura);

            if (resultado < 18.5) {
                System.out.println("O seu IMC é de: " + resultado);
                System.out.println("Você está abaixo do peso ideal!");
            } else if ((18.5 < resultado) && (resultado < 24.9)) {
                System.out.println("O seu IMC é de: " + resultado);
                System.out.println("Você está com o peso ideal!");
            } else if ((25 < resultado) && (resultado < 29.9)) {
                System.out.println("O seu IMC é de: " + resultado);
                System.out.println("Você está com o sobrepeso!");
            } else if ((30 < resultado) && (resultado < 34.9)) {
                System.out.println("O seu IMC é de: " + resultado);
                System.out.println("Você está com obesidade de grau 1!");
            } else if ((35 < resultado) && (resultado < 39.9)) {
                System.out.println("O seu IMC é de: " + resultado);
                System.out.println("Você está com obesidade de grau 2!");
            } else {
                System.out.println("O seu IMC é de: " + resultado);
                System.out.println("Você está com obesidade de grau 3!");
            }
        } catch (Exception error) {
            System.out.println(
                    "Parametro inválido, por favor verifique se você não inseriu letra ou caracter especial no lugar de numero, ponto no lugar de virgula ou algum numero negativo");
        }
    }
}
