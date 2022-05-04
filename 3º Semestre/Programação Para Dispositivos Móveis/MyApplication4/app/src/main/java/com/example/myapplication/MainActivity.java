package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText txtOrigem;
    TextView txtDestino;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        txtOrigem =findViewById(R.id.txtOrigem);
        txtDestino = findViewById(R.id.txtDestino);
    }

    public void copiarTexto(View v){
        txtDestino.setText(txtOrigem.getText().toString());
    }
}