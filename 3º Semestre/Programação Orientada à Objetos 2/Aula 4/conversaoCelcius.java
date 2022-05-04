import java.util.Scanner;

public class conversaoCelcius{
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        System.out.println ("Insira o valor em ºF para ser convertido em ºC: ");
        
        float f = keyboard.nextFloat();
        keyboard.close();
        float c = (float) ((f - 32)/1.800);

        System.out.println ("O valor de " + f + "ºF convertido para Celcius é: " + c + "ºC");
    }
}