class TestaConstantes
{
    public static void main(String arg[])
    {
        Constantes const1 = new Constantes();
        Constantes const2 = new Constantes();
        System.out.println(const1.raizDe2 == const2.raizDe2);
        System.out.println(const1.raizDe3 == const2.raizDe3);
        System.out.println(const1.raizDe5 == const2.raizDe5);
        double raizDe10 = Constantes.raizDe2 * Constantes.raizDe5;
        System.out.println("Raiz de 10 = " + raizDe10);
    }
}