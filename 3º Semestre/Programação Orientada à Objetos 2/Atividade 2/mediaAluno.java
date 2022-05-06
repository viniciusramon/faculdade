// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 6 - Calcular a média final de um aluno. Verificar a situação do aluno com base na seguinte regra:
//  - média >= 7,0 → Aluno aprovado.
//  - média >= 5,0 e < 7,0 → Aluno de exame.
//  - média < 5,0 → Aluno reprovado.
//  Exibir na tela nome do aluno, sua média e a sua situação conforme tabela acima.

import java.util.Scanner;

public class mediaAluno {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        System.out.println("Digite o nome do Aluno(a): ");
        String nome = keyboard.next();

        System.out.println("Digite a primeira nota: ");
        float n1 = keyboard.nextFloat();

        System.out.println("Digite a segunda nota: ");
        float n2 = keyboard.nextFloat();

        keyboard.close();

        float media = (n1+n2)/2;

        if(media >= 7){
            System.out.println(nome);
            System.out.println("Sua média é de: " + media);
            System.out.println("Você está aprovado!");
        }
        else if ((5 <= media) && (media < 7)){
            System.out.println(nome);
            System.out.println("Sua média é de: " + media);
            System.out.println("Você está de exame!");
        }
        else{
            System.out.println(nome);
            System.out.println("Sua média é de: " + media);
            System.out.println("Você está reprovado!");
        }
    }
}
