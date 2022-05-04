import java.util.Scanner;

public class pesagem
{
    public static void main(String arg[])
    {
        Scanner keyboard = new Scanner(System.in);
        pessoas vinicius = new pessoas();
        pessoas fernando = new pessoas();
        
        System.out.println("Digite o seu nome:");
        String name = keyboard.nextLine();
        vinicius.set_name(name);        
        
        System.out.println("Digite a sua idade:");
        int age = keyboard.nextInt();
        vinicius.set_age(age);
        
        System.out.println("Digite o seu peso:");
        float weight = keyboard.nextFloat();
        vinicius.set_weight(weight);
        
        System.out.println("Digite a sua altura:");
        float high = keyboard.nextFloat();
        vinicius.set_high(high);
        
        /*System.out.println("Digite o seu nome:");
        name = keyboard.nextLine();
        fernando.set_name(name);        
        
        System.out.println("Digite a sua idade:");
        age = keyboard.nextInt();
        fernando.set_age(age);
        
        System.out.println("Digite o seu peso:");
        weight = keyboard.nextFloat();
        fernando.set_weight(weight);
        
        System.out.println("Digite a sua altura:");
        high = keyboard.nextFloat();
        fernando.set_high(high);*/
        
        System.out.println("Seu nome é: " + vinicius.name);
        System.out.println("Sua idade é: " + vinicius.age);
        System.out.println("Seu peso é: " + vinicius.weight);
        System.out.println("Sua altura é: " + vinicius.high);
        //System.out.println("Seu IMC é: " + vinicius.imc);
        
        System.out.println("Seu nome é: " + fernando.name);
        System.out.println("Sua idade é: " + fernando.age);
        System.out.println("Seu peso é: " + fernando.weight);
        System.out.println("Sua altura é: " + fernando.high);
        //System.out.println("Seu IMC é: " + fernando.imc);

    }
}
