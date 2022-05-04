package com.example.jokenpoeinstein;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.view.View;
import android.widget.Toast;

import java.util.Random;


public class Jogar extends AppCompatActivity {

    // Opções para jogar
    RadioButton rbPedra, rbPapel, rbTesoura;

    // Campo de batalha
    ImageView ivCampo;

    // contagem de placar
    TextView tvTotal, tvVitorias, tvEmpates, tvDerrotas;
    int contaTotal, contaVitorias, contaEmpates, contaDerrotas;

    // variavel usada para zerar a escolha do novo jogo
    RadioGroup rgEscolher;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_jogar);

        rbPedra = findViewById(R.id.rbPedra);
        rbPapel = findViewById(R.id.rbPapel);
        rbTesoura = findViewById(R.id.rbTesoura);
        ivCampo = findViewById(R.id.ivCampo);
        tvTotal = findViewById(R.id.tvTotal);
        tvVitorias = findViewById(R.id.tvVitorias);
        tvEmpates = findViewById(R.id.tvEmpates);
        tvDerrotas = findViewById(R.id.tvDerrotas);
        rgEscolher = findViewById(R.id.rgEscolher);

        contaTotal = 0;
        contaVitorias = 0;
        contaEmpates = 0;
        contaDerrotas = 0;

        }

        public void escolher(View v){
            int escolhaCPU, escolhaJogador;
            escolhaCPU = 0;
            escolhaJogador = 0;

            // cada vez que eu clicar no "faça sua escolha", é uma jogada. Logo, acrescenta 1 no contaTotal;
            contaTotal++;

            // 1 é pedra, 2 é papel e 3 é tesoura
            if(rbPedra.isChecked()){
                escolhaJogador = 1;
            }
            else if(rbPapel.isChecked()){
                escolhaJogador = 2;
            }
            else if(rbTesoura.isChecked()){
                escolhaJogador = 3;
            }
            else{
                // mostra uma pequena pop-up por 3 segundos.
                Toast.makeText(this, "Pedra, Papel ou Tesoura devem ser selecionados", Toast.LENGTH_SHORT).show();
            }


            // se ele tiver escolhido alguma opção, passa por aqui
            if(escolhaJogador > 0){
                // faz a cpu esolher
                Random rand = new Random();
                // segredo: escolha entre 0 e 2.9999999.
                // como 0 não é aceito(nem 2.99...), escolhe entre 1 e 3.
                escolhaCPU = rand.nextInt(3) + 1;

                // condições de empates
                if(escolhaJogador == 1 && escolhaCPU == 1){
                    contaEmpates++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.pedra_pedra));
                }
                else if(escolhaJogador == 2 && escolhaCPU == 2){
                    contaEmpates++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.papel_papel));
                }
                else if(escolhaJogador == 3 && escolhaCPU == 3){
                    contaEmpates++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.tesoura_tesoura));
                }

                // condições de derrotas
                else if(escolhaJogador == 1 && escolhaCPU == 2){
                    contaDerrotas++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.pedra_papel));
                }
                else if(escolhaJogador == 2 && escolhaCPU == 3){
                    contaDerrotas++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.papel_tesoura));
                }
                else if(escolhaJogador == 3 && escolhaCPU == 1){
                    contaDerrotas++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.tesoura_pedra));
                }

                // condições de vitorias
                else if(escolhaJogador == 1 && escolhaCPU == 3){
                    contaVitorias++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.pedra_tesoura));
                }
                else if(escolhaJogador == 2 && escolhaCPU == 1){
                    contaVitorias++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.papel_pedra));
                }
                else if(escolhaJogador == 3 && escolhaCPU == 2){
                    contaVitorias++;
                    // troca imagem
                    ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.tesoura_papel));
                }

                tvTotal.setText("Total Jogos: " + contaTotal);
                tvVitorias.setText("Vitórias: " + contaVitorias);
                tvEmpates.setText("Empates: " + contaEmpates);
                tvDerrotas.setText("Derrotas: " + contaDerrotas);
            }
    }

    public void novo(View v){
        rgEscolher.clearCheck();
        ivCampo.setImageDrawable(getResources().getDrawable(R.drawable.campo_batalha));
    }
    public void chamaInstrucoes(View v){
        Intent chamaTela = new Intent(this, Intrucoes.class);
        startActivity(chamaTela);
    }


}