
public class teste {
    public static void main(String[] args) {

        pessoa person1 = new pessoa("Vinicius Ramon");
        person1.setIdade(27);
        person1.setAltura((float) 1.82);
        
        pessoa person2 = new pessoa(22);
        person2.setNome("Ana Paula");
        person2.setAltura((float) 1.64);

        pessoa person3 = new pessoa((float) 1.70);
        person3.setNome("Professor Leandro");
        person3.setIdade(42);

        pessoa person4 = new pessoa("Pedro Coordenador", 32, (float) 1.68);

        System.out.println("");
        System.out.println("Nome: " + person1.getNome() + ", Idade: " + person1.getIdade() + ", Altura: " + person1.getAltura());
        System.out.println("Nome: " + person2.getNome() + ", Idade: " + person2.getIdade() + ", Altura: " + person2.getAltura());
        System.out.println("Nome: " + person3.getNome() + ", Idade: " + person3.getIdade() + ", Altura: " + person3.getAltura());
        System.out.println("Nome: " + person4.getNome() + ", Idade: " + person4.getIdade() + ", Altura: " + person4.getAltura());
        System.out.println("");
    }
}
