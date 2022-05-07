package Polimorfismo;

public class testeFuncionario {

    public static void main(String[] args) {
        funcionario f = new tecnico();
        f.setNome("Nickerson");
        f.setSalario(1000);
        f.exibeDados();

        System.out.println(f.ganhoAnual());

        funcionario f2 = new funcionario();
        f2.setSalario(1000);
        System.out.println(f2.ganhoAnual());
    }

}
