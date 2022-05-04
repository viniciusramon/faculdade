package com.example.aula_3_jogo_da_velha;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AutomaticZenRule;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    String vezJogador;
    int[] jogadas = {-1, -2 , -3, -4, -5, -6, -7, -8, -9};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        vezJogador = "X";
    }

    public void clickJogo(View v){
        Button botaoClicado = findViewById(v.getId());

        botaoClicado.setText(vezJogador);

        botaoClicado.setTextSize(70);

        int codigoVez = 0;

        if(vezJogador == "X"){
            codigoVez = 1;
        }

        if(v.getId() == R.id.bt0){
            jogadas[0] = codigoVez;
        }
        else if(v.getId() == R.id.bt1){
            jogadas[1] = codigoVez;
        }
        else if(v.getId() == R.id.bt2){
            jogadas[2] = codigoVez;
        }
        else if(v.getId() == R.id.bt3){
            jogadas[3] = codigoVez;
        }
        else if(v.getId() == R.id.bt4){
            jogadas[4] = codigoVez;
        }
        else if(v.getId() == R.id.bt5){
            jogadas[5] = codigoVez;
        }
        else if(v.getId() == R.id.bt6){
            jogadas[6] = codigoVez;
        }
        else if(v.getId() == R.id.bt7){
            jogadas[7] = codigoVez;
        }
        else if(v.getId() == R.id.bt8) {
            jogadas[8] = codigoVez;
        }

        botaoClicado.setEnabled(false);

       /* Button bt0 = findViewById(R.id.bt0);
        Button bt1 = findViewById(R.id.bt1);
        Button bt2 = findViewById(R.id.bt2);
        Button bt3 = findViewById(R.id.bt3);
        Button bt4 = findViewById(R.id.bt4);
        Button bt5 = findViewById(R.id.bt5);
        Button bt6 = findViewById(R.id.bt6);
        Button bt7 = findViewById(R.id.bt7);
        Button bt8 = findViewById(R.id.bt8);
        */

        if(( jogadas[0] ==  jogadas[1]) && ( jogadas[1] ==  jogadas[2])){
            ganhou();
        }
        else if(( jogadas[3] ==  jogadas[4]) && ( jogadas[4] ==  jogadas[5])){
            ganhou();
        }
        else if(( jogadas[6] ==  jogadas[7]) && ( jogadas[7] ==  jogadas[8])){
            ganhou();
        }
        else if(( jogadas[0] ==  jogadas[3]) && ( jogadas[3] ==  jogadas[6])){
            ganhou();
        }
        else if(( jogadas[1] ==  jogadas[4]) && ( jogadas[4] ==  jogadas[7])){
            ganhou();
        }
        else if(( jogadas[2] ==  jogadas[5]) && ( jogadas[5]==  jogadas[8])){
            ganhou();
        }
        else if(( jogadas[0] ==  jogadas[4]) && ( jogadas[4] ==  jogadas[8])){
            ganhou();
        }
        else if(( jogadas[2] ==  jogadas[4]) && ( jogadas[4] ==  jogadas[6])){
            ganhou();
        }

        if(vezJogador.equals("X")){
            vezJogador = "O";
        }
        else{
            vezJogador = "X";
        }

    }

    public void ganhou(){
        Button temp;

        temp = findViewById(R.id.bt0);
        temp.setEnabled(false);

        temp = findViewById(R.id.bt1);
        temp.setEnabled(false);

        temp = findViewById(R.id.bt2);
        temp.setEnabled(false);

        temp = findViewById(R.id.bt3);
        temp.setEnabled(false);

        temp = findViewById(R.id.bt4);
        temp.setEnabled(false);

        temp = findViewById(R.id.bt5);
        temp.setEnabled(false);

        temp = findViewById(R.id.bt6);
        temp.setEnabled(false);

        temp = findViewById(R.id.bt7);
        temp.setEnabled(false);

        temp = findViewById(R.id.bt8);
        temp.setEnabled(false);

        // tempo do Toast
        // LENGTH_SHORT = 3s
        // LENGTH_LONG = 10s
        Toast.makeText(this, "O Jogador " + vezJogador + " ganhou!", Toast.LENGTH_SHORT).show();

    }

    public void clickReset(View v){

        Button temp;

        temp = findViewById(R.id.bt0);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        temp = findViewById(R.id.bt1);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        temp = findViewById(R.id.bt2);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        temp = findViewById(R.id.bt3);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        temp = findViewById(R.id.bt4);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        temp = findViewById(R.id.bt5);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        temp = findViewById(R.id.bt6);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        temp = findViewById(R.id.bt7);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        temp = findViewById(R.id.bt8);
        temp.setText("Jogar!");
        temp.setTextSize(14);
        temp.setEnabled(true);

        vezJogador = "X";
        jogadas = new int[]{-1, -2 , -3, -4, -5, -6, -7, -8, -9};


    }
}