/*
 2. Faça uma classe que receba três números (A, B e C) e calcule a fórmula 
 de Báskara com esses números;
*/

import java.util.Scanner;
import java.text.DecimalFormat;
import java.util.InputMismatchException;

public class baskara
{
    public static void main(String args[]) 
    {
        //Variáveis de controle para os valores que serão informados.
        boolean trueValueA = false;
        boolean trueValueB = false;
        boolean trueValueC = false;
        
        //Variáveis que vão receber os dados informados
        double valueA = 0.00;
        double valueB = 0.00;
        double valueC = 0.00;
        
        System.out.println("Digite o número de A");
        do{
            try{
                Scanner numA = new Scanner(System.in);
                valueA = numA.nextDouble();
                trueValueA = true;
            }
            catch(NumberFormatException | InputMismatchException ex){
                System.out.println("O parametro informado não é um número!");
                System.out.println("Digite um novo valor que seja um número!");
            }
        }while(!trueValueA);
        
        System.out.println("Digite o número de B");
        do{
            try{
                Scanner numB = new Scanner(System.in);
                valueB = numB.nextDouble();
                trueValueB = true;
            }
            catch(NumberFormatException | InputMismatchException ex){
                System.out.println("O parametro informado não é um número!");
                System.out.println("Digite um novo valor que seja um número!");
            }
        }while(!trueValueB);
        
        System.out.println("Digite o número para C");
        do{
            try{
                Scanner numC = new Scanner(System.in);
                valueC = numC.nextDouble();
                trueValueC = true;
            }
            catch(NumberFormatException | InputMismatchException ex){
                System.out.println("O parametro informado não é um número!");
                System.out.println("Digite um novo valor que seja um número!");
            }
        }while(!trueValueC);

        // Caso a raíz quadrada de delta não seja exata, o resultado final 
        // terá apenas 2 casas decimais;
        DecimalFormat arredondamento = new DecimalFormat("#.00");
        
        // O valor de Delta será irá preencher a variável
        double d = Math.pow(valueB, 2) - 4 * valueA * valueC;
        double rd = Math.sqrt(d);
        
        //Variável para o controle de resultados;
        double result1 = 0.00;
        double result2 = 0.00;
        
        //Realiza o calcúlo final com do báskara.
        if(d < 0){
            System.out.println("Seu delta não possui raiz!");
            System.exit(0);
        }
        if(d == 0){
            result1 = (-valueB + rd) / 2 * valueA;
        }
        else{
            result1 = (-valueB + rd) / 2 * valueA;
            result2 = (-valueB - rd) / 2 * valueA;
        }
        
        String value1 = arredondamento.format(result1);
        String value2 = arredondamento.format(result2);
        
        System.out.println("\n");
        System.out.println("-----------------------------------------------");
        
        if(result2 == 0){
            System.out.println("O resultado para a equação de segundo grau de bhaskara será: ");
            System.out.println(value1);
        }
        else{
            System.out.println("Os resultados para a equação de segundo grau de bhaskara será: ");
            System.out.println("Resultado 1: " + value1);
            System.out.println("Resultado 2: " + value2);
        }
    }
}
