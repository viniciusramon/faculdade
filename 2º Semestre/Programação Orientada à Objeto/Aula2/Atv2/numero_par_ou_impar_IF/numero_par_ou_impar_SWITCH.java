/*
Aula 2 - Ex 2.Faça dois programas que retornem se o número lido do parâmetro
de linha de comandos é par ou ímpar:

a. Usando a estrutura IF;

b. Usando a estrutura SWITCH;

 */

public class numero_par_ou_impar_SWITCH{
    public static void main (String args[]){ 
        
        // Declaração das Variavéis
        int n1 = Integer.parseInt(args[0]); // Variavel n1 recebe o primeiro argumento em string e converte para inteiro e armazena na posição 0 do vetor args
        int result = n1%2; // Realiza a divisão do valor armazenado em n1 por 2 e armazena o resultado na variavel result 
      
        // Estrutura SWITCH
        switch(result) 
        {
        // Exibição dos resultados
        case 0: // Caso o resultado da divisão armazenado na variavel result seja igual a 0(zero) ele entra no case 0
            System.out.println("Resultados: ");
            System.out.println("O número: " + n1 + " é par");
            break;
    
        case 1: /// Caso o resultado da divisão armazenado na variavel result seja igual a 1(um) ele entra no case 1
        // Exibição dos resultados
        System.out.println("Resultados: ");
        System.out.println("O número: " + n1 + " é impar");
        }
    }   
}