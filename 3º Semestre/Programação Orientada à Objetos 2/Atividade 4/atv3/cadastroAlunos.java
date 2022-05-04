import java.util.Scanner;

public class cadastroAlunos{

    public static void main(String[] args) {
        
        Scanner keyboard = new Scanner(System.in);

        alunos aluno1 = new alunos();
        alunos aluno2 = new alunos();
        alunos aluno3 = new alunos();

        System.out.println("Cadastro de Alunos");
        
        System.out.print("Digite seu nome: ");
        aluno1.setNome(keyboard.nextLine());

        System.out.print("Digite sua idade: ");
        aluno1.setIdade(keyboard.nextInt());
        keyboard.nextLine();

        System.out.print("Digite sua altura: ");
        aluno1.setAltura(keyboard.nextFloat());
        keyboard.nextLine();

        System.out.print("Digite seu RA: ");
        aluno1.setRA(keyboard.next());
        keyboard.nextLine();

        System.out.print("Digite seu curso: ");
        aluno1.setCurso(keyboard.next());
        keyboard.nextLine();

        System.out.println("");

        System.out.print("Digite seu nome: ");
        aluno2.setNome(keyboard.nextLine());

        System.out.print("Digite sua idade: ");
        aluno2.setIdade(keyboard.nextInt());
        keyboard.nextLine();

        System.out.print("Digite sua altura: ");
        aluno2.setAltura(keyboard.nextFloat());
        keyboard.nextLine();

        System.out.print("Digite seu RA: ");
        aluno2.setRA(keyboard.nextLine());
        keyboard.nextLine();

        System.out.print("Digite seu curso: ");
        aluno2.setCurso(keyboard.next());
        keyboard.nextLine();

        System.out.println("");

        System.out.print("Digite seu nome: ");
        aluno3.setNome(keyboard.nextLine());

        System.out.print("Digite sua idade: ");
        aluno3.setIdade(keyboard.nextInt());
        keyboard.nextLine();

        System.out.print("Digite sua altura: ");
        aluno3.setAltura(keyboard.nextFloat());
        keyboard.nextLine();

        System.out.print("Digite seu RA: ");
        aluno3.setRA(keyboard.nextLine());
        keyboard.nextLine();

        System.out.print("Digite seu curso: ");
        aluno3.setCurso(keyboard.next());
        keyboard.nextLine();

        keyboard.close();

        System.out.println("");

        System.out.println("Alunos Cadastrados: ");
            System.out.println("Nome: " + aluno1.getNome());
            System.out.println("Idade: " + aluno1.getIdade());
            System.out.println("Altura: " + aluno1.getAltura());
            System.out.println("RA: " + aluno1.getRA());
            System.out.println("Curso: " + aluno1.getCurso());

        System.out.println("");

        System.out.println("Alunos Cadastrados: ");
            System.out.println("Nome: " + aluno2.getNome());
            System.out.println("Idade: " + aluno2.getIdade());
            System.out.println("Altura: " + aluno2.getAltura());
            System.out.println("RA: " + aluno2.getRA());
            System.out.println("Curso: " + aluno2.getCurso());

        System.out.println("");

        System.out.println("Alunos Cadastrados: ");
            System.out.println("Nome: " + aluno3.getNome());
            System.out.println("Idade: " + aluno3.getIdade());
            System.out.println("Altura: " + aluno3.getAltura());
            System.out.println("RA: " + aluno3.getRA());
            System.out.println("Curso: " + aluno3.getCurso());
    }
}