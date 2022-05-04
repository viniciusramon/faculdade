import java.util.Scanner;

class mercado{
    public static void main(String arg[]){
        Scanner t = new Scanner(System.in);
        produtos arroz = new produtos();
        produtos feijao = new produtos();
        produtos macarrao = new produtos();
        
        double maior = 0;
        double menor = 0;
        
        System.out.println("Digite um preço para o arroz: ");
        double p = t.nextDouble();
        arroz.seta_preco(p);
        
        System.out.println("Digite um preço para o feijão: ");
        p = t.nextDouble();
        feijao.seta_preco(p);
        
        System.out.println("Digite um preço para o macarrão: ");
        p = t.nextDouble();
        macarrao.seta_preco(p);
        
        if((arroz.retorna_preco() > feijao.retorna_preco()) && (arroz.retorna_preco() > macarrao.retorna_preco()))
        {
            maior = arroz.retorna_preco();
        }
        
        if((arroz.retorna_preco() < feijao.retorna_preco()) && (arroz.retorna_preco() < macarrao.retorna_preco()))
        {
            menor = arroz.retorna_preco();
        }
        
        if((feijao.retorna_preco() > arroz.retorna_preco()) && (feijao.retorna_preco() > macarrao.retorna_preco()))
        {
            maior = feijao.retorna_preco();
        }
        
        if((feijao.retorna_preco() < arroz.retorna_preco()) && (feijao.retorna_preco() < macarrao.retorna_preco()))
        {
            menor = feijao.retorna_preco();
        }
        
        if((macarrao.retorna_preco() > arroz.retorna_preco()) && (macarrao.retorna_preco() > feijao.retorna_preco()))
        {
            maior = macarrao.retorna_preco();
        }    
        
        if((macarrao.retorna_preco() < arroz.retorna_preco()) && (macarrao.retorna_preco() < feijao.retorna_preco()))
        {
            menor = macarrao.retorna_preco();
        }
        System.out.println("O produto mais caro custa R$ " + maior + " e o produto mais barato custa R$ " + menor);
    }
}