import aula9.pratica.Animal;
import aula9.pratica.Papagaio;
import aula9.pratica.Cachorro;
import aula9.pratica.Cavalo;
import aula9.pratica.Gato;

public class Aula9 {

    public static void main(String[] args) {
        
        //Animal animal = new Animal();
        //System.out.println(animal.emitirSom());
        
        Papagaio loro = new Papagaio();
        System.out.println(loro.emitirSom());
        loro.setNome("NomeDoLoro");
        
        Cachorro dog = new Cachorro();
        System.out.println(dog.amamentar());
        
        Gato cat = new Gato();
        cat.setNome("NomeDoGato");
        System.out.println(cat.amamentar());
        System.out.println(cat.emitirSom());
        
        Cavalo c = new Cavalo();
        c.setNome("NomeDoCavalo");
        System.out.println(c.amamentar());
        System.out.println(c.getNome() + " "+ c.emitirSom());
        			  			System.out.println("------------------------------------");
        
        Integer i = new Integer(0);
        
        System.out.println(Integer.MIN_VALUE);
        String s = new String("qualquer");
        
        System.out.println(Animal.MAX_VALUE);
    }
    
}