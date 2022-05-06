public class Gato extends Mamifero {
    
    String raca;

    @Override
    public String amamentar() {
        return "amamentando 1";
    }

    @Override
    public String emitirSom() {
        return this.getNome() + ": Miau";
    }
    
}
