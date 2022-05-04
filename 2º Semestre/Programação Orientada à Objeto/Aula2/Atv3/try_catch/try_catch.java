/*
Aula 2 - Ex 3. Usando Try ... Catch ... escreva um programa em Java que
retorne se o parâmetro de linha de comandos entrado pelo usuário é um 
número ou não;

a.Caso seja um número o programa deve retornar "NEGATIVO" para números 
menores que 0 e "POSITIVO" para números maiores que 0;

 */
public class try_catch{
    public static void main(String args[]){
        try{
            int num = Integer.parseInt(args[0]);
            
            if(num == 0)
            {
                System.out.println("Resultado:");
                System.out.println("O número " + num + " é neutro");
            }
            else if(num > 0)
            {
                System.out.println("Resultado:");
                System.out.println("O número " + num + " é positivo");
            }
            else
            {
                System.out.println("Resultado:");
                System.out.println("O número " + num + " é negativo");
            }
        }
        
        catch(Exception error)
        {
            System.out.println("Parametro inválido, por favor insira um numero seja positivo ou negativo");
        }
        
    }
}