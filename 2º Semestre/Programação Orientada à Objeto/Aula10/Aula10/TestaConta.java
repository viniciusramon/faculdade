public class TestaConta
{
    public static void main (String[] args){
        Conta conta = new ContaPoupanca();
        conta.setSaldo(1000);
        conta.imprimeExtrato();
    }
}