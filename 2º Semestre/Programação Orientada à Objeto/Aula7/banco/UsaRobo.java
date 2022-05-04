class UsaRobo
{
    public static void main(String arg[])
    {
        RoboSimples C3PO = new RoboSimples("C3PO", 20, 10, 'S');
        RoboSimples R2D2 = new RoboSimples("R2D2");
        RoboSimples semNome = new RoboSimples();
        
        C3PO.move(10);
        R2D2.mudaDirecao('E');
        R2D2.move();
        
        System.out.println(C3PO);
        System.out.println(R2D2);
        System.out.println(semNome);
    }
}
