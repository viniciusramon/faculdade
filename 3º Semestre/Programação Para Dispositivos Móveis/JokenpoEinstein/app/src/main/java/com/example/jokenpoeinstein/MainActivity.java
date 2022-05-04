package com.example.jokenpoeinstein;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_main);
    }

    public void Iniciar(View x){
        Intent chamaTela = new Intent(this, Jogar.class);
        startActivity(chamaTela);

        //fechar a tela atual
        finish();
    }
}