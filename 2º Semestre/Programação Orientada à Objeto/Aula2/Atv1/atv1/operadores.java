/*
Aula 2 - Ex 1. Faça um programa que mostre todas as operações
possíveis com dois números lidos dos parâmetros de linha de
comandos. Veja os erros que acontecem caso você não passe os
parâmetros ou caso os parâmetros não sejam números;

 */

public class operadores{
    public static void main (String args[]){ 
        
        // Declaração das Variavéis
        int n1 = Integer.parseInt(args[0]); // Variavel n1 recebe o primeiro argumento em string e converte para inteiro e armazena na posição 0 do vetor args
        int n2 = Integer.parseInt(args[1]); // Variavel n2 recebe o primeiro argumento em string e converte para inteiro e armazena na posição 1 do vetor args
  
        // Operações matemáticas
        int soma = n1 + n2; // Variavél soma realiza a soma entre os valores recebidos e armazenados nas variavéis n1 e n2
        int sub = n1 - n2; // Variavél sub realiza a subtação entre os valores recebidos e armazenados nas variavéis n1 e n2
        int mult = n1 * n2; // Variavél mult realiza a multiplicação entre os valores recebidos e armazenados nas variavéis n1 e n2
        float div = n1 / n2; // Variavél div realiza a divisão entre os valores recebidos e armazenados nas variavéis n1 e n2
        
        // Exibição dos resultados
        System.out.println("Resultados: ");
        System.out.println("O resultado da soma é: " + soma);
        System.out.println("O resultado da subtração é: " + sub);
        System.out.println("O resultado da multiplicação é: " + mult);
        System.out.println("O resultado da divisão é: " + div);              
    }   
}