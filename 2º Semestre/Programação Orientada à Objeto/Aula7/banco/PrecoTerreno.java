class PrecoTerreno
{
    public static void main(String argumentos[])
    {
        double preco;
        System.out.print("O preço do terreno N1 é = ");
        preco = PrecoDoTerreno(450,1);
        System.out.println(preco);
        System.out.print("O preço do terreno Q2 é = ");
        preco = PrecoDoTerreno(475,4);
        System.out.println(preco);
        System.out.print("O preço do terreno F3 é = ");
        preco = PrecoDoTerreno(525,2);
        System.out.println(preco);
    }
    
    public static double PrecoDoTerreno(double area, int local)
    {
        double preco = 0;
        if(local == 1) preco = area * 22.00;
        if(local == 2) preco = area * 27.00;
        if(local == 3) preco = area * 29.50;
        if(local == 4) preco = area * 31.50;
        if(local == 5) preco = area * 34.50;
        return preco;
    }
}
