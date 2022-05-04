package atividade2;

public class ClasseTeste {

    public static void main(String[] args) {
        
        Pessoa p1 = new Pessoa("Kleber Teste 1");
        p1.setIdade(11);
        p1.setAltura((float) 1.11);
        
        Pessoa p2 = new Pessoa(22);
        p2.setNome("Kleber Teste 2");
        p2.setAltura((float) 1.22);
        
        Pessoa p3 = new Pessoa((float) 1.33);
        p3.setNome("Kleber Teste 3");
        p3.setIdade(33);
        
        Pessoa p4 = new Pessoa("Kleber Teste 4", 44, (float) 1.44);
        
        System.out.println("o---------------------------------o");
        System.out.println("| Nome da Pessoa | Idade | Altura |");
        System.out.println("| " + p1.getNome() + " |  " + p1.getIdade() + "   |  " + p1.getAltura() + "  |");
        System.out.println("| " + p2.getNome() + " |  " + p2.getIdade() + "   |  " + p2.getAltura() + "  |");
        System.out.println("| " + p3.getNome() + " |  " + p3.getIdade() + "   |  " + p3.getAltura() + "  |");
        System.out.println("o---------------------------------o");
    }
    
}
