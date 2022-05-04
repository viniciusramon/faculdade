import java.util.Scanner;

public class mediaAlunoApRp {

    public static void main(String[] args){
        
        String situacao;
        double nota1, nota2, media;
        Scanner teclado = new Scanner(System.in);
        
        System.out.print("Informe a 1a. nota: ");
        nota1 = teclado.nextDouble();
        teclado.nextLine(); 
        
        System.out.print("Informe a 2a nota: ");
        nota2 = teclado.nextDouble();
        teclado.nextLine(); 
        
        media = (nota1 + nota2) / 2;
        
        situacao = "\nMedia = " + media + "\nSituação: ";
        
        if(media < 5)
        	situacao += "Reprovado";
        else if(media < 7)
        	situacao += "Exame";
        else
        	situacao += "Aprovado";
        
        System.out.println(situacao);
    }
    
}
