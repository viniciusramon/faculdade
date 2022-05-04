package com.example.revisaoeinstein3;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {

    ImageView imagem;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        imagem = findViewById(R.id.imagem);
    }

    public void trocaImagem(View v){
        imagem.setImageDrawable(getResources().getDrawable(R.drawable.img1,null));
    }

    public void trocaTela(View v){
        Intent tela = new Intent(MainActivity.this, MainActivity2.class);
        startActivity(tela);
    }
}