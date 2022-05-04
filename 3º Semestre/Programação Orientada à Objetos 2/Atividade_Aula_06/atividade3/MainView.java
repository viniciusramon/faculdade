package atividade3;

import java.util.ArrayList;
import java.util.Scanner;

public class MainView {

    public static void main(String[] args) {
        
        Scanner teclado = new Scanner(System.in);
        ArrayList<Alunos> arr = new ArrayList();
        
        System.out.println("Seja Bem-Vindo ao Cadastramento de Alunos");
        
        for(int i = 0; i < 3; i++){
            Alunos als = new Alunos();
            System.out.println("Aluno " + (i + 1) + "...");
            
            System.out.print("Digite Seu Nome: ");
            als.setNome(teclado.nextLine());
            
            System.out.print("Digite Seu Idade: ");
            als.setIdade(teclado.nextInt());
            teclado.nextLine(); //Para Limpar o Buffer
            
            System.out.print("Digite Seu Altura: ");
            als.setAltura(teclado.nextFloat());
            teclado.nextLine(); //Para Limpar o Buffer
            
            System.out.print("Digite Seu CPF: ");
            als.setCpf(teclado.nextInt());
            teclado.nextLine(); //Para Limpar o Buffer
            
            System.out.print("Digite Seu Curso: ");
            als.setCurso(teclado.next());
            teclado.nextLine(); //Para Limpar o Buffer
            
            arr.add(als);
            System.out.println("\n\n>>>ALUNO CADASTRADO<<<");
        }
        
        for(Alunos al : arr){
            System.out.println("\nCARREGANDO ALUNO: " + al.getNome().toUpperCase() + "\n"); // coloquei o toUpperCase so por estetic kkkk
            
            System.out.println("Nome: " + al.getNome());
            System.out.println("Idade: " + al.getIdade());
            System.out.println("Altura: " + al.getAltura());
            System.out.println("CPF: " + al.getCpf());
            System.out.println("Curso: " + al.getCurso());
            
            System.out.println("\n-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-");
        }
    }
    
}
