
/*
 4. Construa uma classe que contenha um método executável que receba o nome 
 completo do usuário e mostre em linhas separadas o nome e o(s) sobrenome(s) 
 do usuário;
 */

import java.util.Scanner;
import java.text.DecimalFormat;
import java.util.InputMismatchException;

public class nome_sobrenome
{
    public static void main(String args[]) 
    {
        Scanner read = new Scanner(System.in);
        
        System.out.println("Digite seu Nome e Sobreneome");
        String name = read.nextLine();
        String lastName = name.trim();
        String splitedName[] = lastName.split(" ");
        
        System.out.println("");
        
        for(int i = 0; i < splitedName.length; i++)
        {
            System.out.println(splitedName[i]);
        }
    }
}
