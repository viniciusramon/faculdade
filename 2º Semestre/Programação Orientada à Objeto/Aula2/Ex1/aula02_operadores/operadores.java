/*
 * Aula 2 - Exemplo Operadores
 */

public class operadores{
    public static void main (String args[]){
        if(args.length == 1){
            int x = 99999;
            try{
                 x = Integer.parseInt(args[0]);
            }
            catch(NumberFormatException error){
                System.out.println("Use números e não letras seu idiota!");
            }
            switch(x){
                case 0: System.out.println("zero"); break;
                case 1: System.out.println("um"); break;
                case 2: System.out.println("dois"); break;
                default: System.out.println("sei lá, se vira irmão!");
            }
        }
        else{
            System.out.println("Número de argumentos inválidos!");
        }
        
        /*System.out.println(args.length);
        String a = "1";
        String b = "2";
        System.out.println(a+b);
        System.out.println(Integer.parseInt(a) + Integer.parseInt(b));
        */
       
        /*System.out.println(args.length);
        if(args.length == 1){
            System.out.println("Um");
        }
        else{
            System.out.println("Número de argumentos inválidos!");
        }*/
        
        /*int valor = (int)(Math.random()*5);
        if(valor>0){
            System.out.println("Valor maior que zero = " + valor);
        }
        else{
            System.out.println("Valor menor ou igual a zero = " + valor);
        }*/
        
        /* float lado1, lado2, lado3;
        lado1 = 3;
        lado2 = lado1 + 1;
        lado3 = 4;
        boolean igualdade12, igualdade23;
        igualdade12 = (lado1 == lado2);
        igualdade23 = (lado2 == lado3);
        System.out.println("Lado1 é igual ao lado 2?");
        System.out.println(igualdade12);
        System.out.println("Lado1 é igual ao lado 2?");
        System.out.println(igualdade23);
        boolean equilatero;
        equilatero = (igualdade12 == igualdade23);
        System.out.println("Triangulo equilatero? " + equilatero); */
    }
    
}