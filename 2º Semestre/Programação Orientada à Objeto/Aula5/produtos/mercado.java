import java.util.Scanner;

public class mercado
{
    public static void main(String arg[])
    {
        Scanner keyboard = new Scanner(System.in);
        produtos arroz = new produtos();
        produtos feijao = new produtos();
        System.out.println("Digite um preço para o arroz:");
        double price = keyboard.nextDouble();
        arroz.seta_preco(price);
        arroz.codigo = 1;
        
        System.out.println("Digite um preço parao feijão: ");
        price = keyboard.nextDouble();
        feijao.seta_preco(price);
        feijao.codigo = 2;
        
        System.out.println("O código do arroz é: " + arroz.codigo + " e o preço do arroz é = R$ " + arroz.retorna_preco());
        System.out.println("O código do feijão é: " + feijao.codigo + " e o preço do feijão é = R$ " + feijao.retorna_preco());
    }
}
