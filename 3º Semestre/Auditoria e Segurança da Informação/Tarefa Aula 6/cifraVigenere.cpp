#include<stdio.h>
#include<string.h>
#define MAX 200

int main()
{
    //variaveis de entrada
        char texto_claro[MAX];
            printf("\n Escreva o texto claro: ");
            gets(texto_claro);
            strlwr(texto_claro);
        char chave[MAX];
            printf("\n Escreva a chave: ");
            gets(chave);
            strlwr(chave);
    //variaveis internas do programa
        //contadores
        int i,j,
        //medidas de tamanho
        m = strlen(texto_claro),
        m2 = strlen(chave),n,
        //ids, s�o inteiros que correspondem aos valores ascii dos chars
        id_texto, id_chave, id_texto_cifrado, id_texto_descifrado;

    //variaveis de saida
        char texto_cifrado[m],texto_descifrado[m];

    //Criptografando
    printf("\n Frase cifrada: \n");
        for(i = 0,j=0; i < m; i++){
            if (texto_claro!= ' '){
                id_texto = texto_claro - 'a'; //-'a' -> subtrai 97 do range de contagem das letras, que vai de 0 a 25 ao inv�s de 97 a 122 do ascii
                id_chave = chave[j % m2] - 'a';// mesmo processo
                id_texto_cifrado = ((id_texto + id_chave )%26) + 'a'; //volta o id calculado ao range normal da tabela ascii
                texto_cifrado = id_texto_cifrado;
                j++;
            }else texto_cifrado = texto_claro; //copia os espa�os
        }
    puts(texto_cifrado);

    //Descriptografando
    printf("\n Frase descifrada: \n");
    for(i = 0,j=0; i < m; i++){
            if (texto_cifrado!= ' '){
                id_texto = texto_cifrado - 'a'; //-'a' -> subtrai 97 do range de contagem das letras, que vai de 0 a 25 ao inv�s de 97 a 122 do ascii
                id_chave = chave[j % m2] - 'a';// mesmo processo
                if(id_texto >= id_chave)
                    id_texto_descifrado = ((id_texto - id_chave)) + 'a'; //subtrai o valor da chave do valor do texto, e soma 'a' para voltar o id calculado ao range normal da tabela ascii
                else id_texto_descifrado = 'z' + ((id_texto - id_chave)) + 1; //a subtra��o da linha acima passou do a, e o valor da negativo, ent�o ele volta do z pra tr�s e soma 1 pq o valor 0 tem q ser contado
                texto_descifrado = id_texto_descifrado;
                j++;
            }else texto_descifrado = texto_cifrado; //copia os espa�os
        }
    puts(texto_descifrado);
    return 0;
}
