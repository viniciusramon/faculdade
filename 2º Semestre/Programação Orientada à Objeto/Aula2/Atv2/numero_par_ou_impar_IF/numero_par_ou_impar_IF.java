/*
Aula 2 - Ex 2.Faça dois programas que retornem se o número lido do parâmetro
de linha de comandos é par ou ímpar:

a. Usando a estrutura IF;

b. Usando a estrutura SWITCH;

 */

public class numero_par_ou_impar_IF{
    public static void main (String args[]){ 
        
        // Declaração das Variavéis
        int n1 = Integer.parseInt(args[0]); // Variavel n1 recebe o primeiro argumento em string e converte para inteiro e armazena na posição 0 do vetor args
          
        // Estrutura IF
        // Operações matemáticas
        if((n1 %2) == 0) // Realiza a divisão do valor armazenado em n1 por 2 e caso o resto seja igual a 0(zero) ele entra no if 
        {
        // Exibição dos resultados
        System.out.println("Resultados: ");
        System.out.println("O número: " + n1 + " é par");
        }
        else // Realiza a divisão do valor armazenado em n1 por 2 e caso o resto seja diferente de 0(zero) ele entra no else 
        {
        // Exibição dos resultados
        System.out.println("Resultados: ");
        System.out.println("O número: " + n1 + " é impar");
        }
    }   
}