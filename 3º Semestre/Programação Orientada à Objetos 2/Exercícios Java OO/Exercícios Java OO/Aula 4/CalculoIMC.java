import java.util.Scanner;

public class CalculoIMC {

   public static void main(String[] args){

        Scanner teclado = new Scanner(System.in);
        
        System.out.println("Digite seu peso: ");
        float peso = teclado.nextFloat();
        
        System.out.println("Digite sua altura: ");
        float altura = teclado.nextFloat();
        
        float imc = peso / (altura * altura);

        System.out.println("\nSeu IMC é: " + imc);
        
        if(imc < 18.5) 
        	{System.out.println("Abaixo do peso !");
        }
        else if(imc >= 18.6 && imc <= 24.9) 
        	{System.out.println("\nPeso normal !");
        	}
        else if(imc >= 25.0 && imc <= 29.9)
        	{System.out.println("\nSobrepeso !");
        	}
        else if(imc >= 30.0 && imc <= 34.9)
        	{System.out.println("\nObesidade de grau I");
        	}
        else if(imc >= 35.0 && imc <= 39.9)
        	{System.out.println("\nObesidade de grau II");
        	}
        else if(imc >= 40.0)
        	{System.out.println("\nObesidade de grau III");
        	}
    }
}