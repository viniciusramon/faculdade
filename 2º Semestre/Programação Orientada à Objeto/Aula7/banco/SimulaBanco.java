//Executavel Simulador de Banco
class SimulaBanco
{
    public static void main(String arg[])
    {
    SimuladordeBanco c1 = new SimuladordeBanco(1);
    SimuladordeBanco c2 = new SimuladordeBanco(2);
    SimuladordeBanco c3 = new SimuladordeBanco(3);
    SimuladordeBanco c4 = new SimuladordeBanco(4);
    SimuladordeBanco c5 = new SimuladordeBanco(5);
    
    c1.proximoAtendimento();
    c2.proximoAtendimento();
    c3.proximoAtendimento();
    c4.proximoAtendimento();
    c5.proximoAtendimento();
    c1.proximoAtendimento();
    c2.proximoAtendimento();
    c3.proximoAtendimento();
    c1.proximoAtendimento();
    c2.proximoAtendimento();
    c1.proximoAtendimento();
    c1.proximoAtendimento();
    c1.proximoAtendimento();
    c1.proximoAtendimento();
    }
}
