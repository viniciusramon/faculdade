package Polimorfismo;

public class tecnico extends funcionario {

    private double bonus = 100;

    public double ganhoAnual() {
        double ganho = (super.getSalario() + bonus) * 12;
        return ganho;
    }
}
