import java.util.ArrayList;
import java.util.Scanner;

public class testeAnimal {
	 public static void main(String[] args) {
	        
	        Scanner teclado = new Scanner(System.in);
	        ArrayList<pessoa> vet = new ArrayList();
	        
	      for(int i = 0; i < 3; i++){
	            pessoa cadastro = new pessoa();
	            System.out.println( (i + 1) + "ª Pessoa --");
	            
	            System.out.print("Nome: ");
	            cadastro.setNome(teclado.nextLine());
	            
	            System.out.print("Idade: ");
	            cadastro.setIdade(teclado.nextInt());
	                        
	            System.out.print("Altura: ");
	            cadastro.setAltura(teclado.nextFloat());
	            
	            System.out.print("CPF: ");
	            cadastro.setCpf(teclado.nextInt());
	                        
	            System.out.print("Curso: ");
	            cadastro.setCurso(teclado.next());

	            // Limpa o Buffer
	            teclado.nextLine(); 
	            
	            vet.add(cadastro);
	            System.out.println("Cadastrado com sucesso !");
	        }
	        
	      	System.out.println("\n --Listando Cadastro de Pessoas --\n");
	        for(pessoa cadastro : vet){
	        	System.out.println("-----------");	
	            System.out.println("Nome: " + cadastro.getNome());
	            System.out.println("Idade: " + cadastro.getIdade());
	            System.out.println("Altura: " + cadastro.getAltura());
	            System.out.println("CPF: " + cadastro.getCpf());
	            System.out.println("Curso: " + cadastro.getCurso());
	            
	        }

	 }
}