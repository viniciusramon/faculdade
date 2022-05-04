class Converte
{
    public static void main(String args[])
    {
        ConversaoUnidade conv = new ConversaoUnidade();
        System.out.println("20 pés são = " + conv.pes2cm(20) + " centímetros");
        System.out.println("5 polegadas são = " + conv.pol2cm(5) + " centímetros");
        System.out.println("20 pés são = " + ConversaoUnidade.pes2cm(20) + "centímetros");
        System.out.println("5 polegadas são = " + ConversaoUnidade.pol2cm(5) + "centímetros");
    }
}