//	Nome: Vinicius Ramon	RA:0157/12-3
//	Exercício 4

import java.util.Scanner;

public class TabelaVerdade{
    public static void main(String[] args) {
        Scanner keyboard= new Scanner(System.in);
        System.out.println("Digite um valor para a: ");
        int a = keyboard.nextInt();
        System.out.println("Digite um valor para b: ");
        int b = keyboard.nextInt();
        if(a == 0 & b == 1 || a == 1 & b == 0){
            System.out.println("-----------------------------------------------------------------------------");
            System.out.println("A B S\n"+ a + " " + b + " " + "0");
            System.out.println("-----------------------------------------------------------------------------");
        }
        if((a == 0 || b == 1) || (a == 1 || b == 0)){
            System.out.println("-----------------------------------------------------------------------------");
            System.out.println("A B S\n"+a + " " + b + " " + "1");
            System.out.println("-----------------------------------------------------------------------------");
 	if((a == 0 || b == 1) || (a == 1 || b == 0)){
            System.out.println("-----------------------------------------------------------------------------");
            System.out.println("A B S\n"+a + " " + b + " " + "0");
            System.out.println("-----------------------------------------------------------------------------");
	if((a == 0 & b == 1) || (a == 1 & b == 0)){
            System.out.println("-----------------------------------------------------------------------------");
            System.out.println("A B S\n"+a + " " + b + " " + "1");
            System.out.println("-----------------------------------------------------------------------------");
        }
        else {
            System.out.println("Insira um valor entre 1 e 0");
        }
        keyboard.close();
     }
}

