package Encapsulamento;

import java.util.ArrayList;
import java.util.Scanner;

public class carroTeste {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        ArrayList<carro> listaCarros = new ArrayList();

        System.out.println("Seja Bem-Vindo ao Cadastramento de Carros");

        for (int i = 0; i < 2; i++) {
            carro carro = new carro();
            System.out.println("Carro " + (i + 1) + "...");

            System.out.print("Digite a marca do carro: ");
            carro.setMarca(teclado.nextLine());

            System.out.print("Digite o modelo do carro: ");
            carro.setModelo(teclado.nextLine());

            System.out.print("Digite a cor do carro: ");
            carro.setCor(teclado.nextLine());

            System.out.print("Digite o combustível do carro: ");
            carro.setCombustivel(teclado.nextLine());

            listaCarros.add(carro);
            System.out.println("\n\n>>>CARRO CADASTRADO<<<\n");
        }

        teclado.close();

        System.out.println("\nCARREGANDO VEÍCULOS: \n");

        for (carro carro : listaCarros) {

            System.out.println("Marca: " + carro.getMarca());
            System.out.println("Modelo: " + carro.getModelo());
            System.out.println("Cor: " + carro.getCor());
            System.out.println("Combustível: " + carro.getCombustivel());

            System.out.println("\n" + carro.getModelo());
            carro.ligar();
            carro.acelerar();
            carro.frear();
            System.out.println("\n");
        }
    }

}
