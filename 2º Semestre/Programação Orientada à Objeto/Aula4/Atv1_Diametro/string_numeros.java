/*
3. Construa uma classe que contenha um método executável que receba uma String
e dois números, a classe deve retornar a substring entre os valores passados;
 */

import java.util.Scanner;
import java.text.DecimalFormat;
import java.util.InputMismatchException;

public class string_numeros
{public static void main(String args[]) {
        //Variáveis de controle para os valores que serão informados.
        boolean trueNumber1 = false;
        boolean trueNumber2 = false;
        
        //Variáveis de controle para os números que serão informados
        int v1 = 0;
        int v2 = 0;
        
        System.out.println("Informe o número para texto desejado");
        Scanner message = new Scanner(System.in);
        String text = message.nextLine();
        
        System.out.println("Informe o 1º número");
        do{
            try{
                Scanner number1 = new Scanner(System.in);
                v1 = number1.nextInt();
                trueNumber1 = true;
            }
            catch(NumberFormatException | InputMismatchException ex){
                System.out.println("Valor informado não é um número!");
                System.out.println("Insira um novo valor!");
            }
        }while(!trueNumber1);
        
        System.out.println("Informe o 2º número");
        do{
            try{
                Scanner number2 = new Scanner(System.in);
                v2 = number2.nextInt();
                trueNumber2 = true;
            }
            catch(NumberFormatException | InputMismatchException ex){
                System.out.println("Valor informado não é um número!");
                System.out.println("Digite um novo valor!");
            }
        }while(!trueNumber2);

        //Realiza a formatação com a substring.
        String textFormat = text.substring(v1, v2);
        
        System.out.println("O resultado é:");
        System.out.println("Original: " + text);
        System.out.println("Com Substring: " + textFormat);
    }
}
