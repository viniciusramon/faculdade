package Polimorfismo;

public class funcionario {

    private String nome;
    private double salario;

    public double ganhoAnual() {
        double ganho = this.salario * 12;
        return ganho;
    }

    public void exibeDados() {
        System.out.print("Nome: " + nome + " Salário: " + salario);
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setSalario(double salario) {
        this.salario = salario;

    }

    public double getSalario() {
        return salario;
    }
}
