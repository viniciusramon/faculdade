package com.example.calculadora;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private EditText txtV1;
    private EditText txtV2;
    private TextView txtV3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txtV1 = findViewById(R.id.txtV1);
        txtV2 = findViewById(R.id.txtV2);
        txtV3 = findViewById(R.id.txtV3);
    }
    public void Somar(View v){
        double valor1 = Double.parseDouble(txtV1.getText().toString());
        double valor2 = Double.parseDouble(txtV2.getText().toString());
        txtV3.setText(String.valueOf(valor1 + valor2));
    }
    public void Subtrair(View v){
        double valor1 = Double.parseDouble(txtV1.getText().toString());
        double valor2 = Double.parseDouble(txtV2.getText().toString());
        txtV3.setText(String.valueOf(valor1 - valor2));
    }
    public void Multiplicar(View v){
        double valor1 = Double.parseDouble(txtV1.getText().toString());
        double valor2 = Double.parseDouble(txtV2.getText().toString());
        txtV3.setText(String.valueOf(valor1 * valor2));
    }
    public void Dividir(View v){
        double valor1 = Double.parseDouble(txtV1.getText().toString());
        double valor2 = Double.parseDouble(txtV2.getText().toString());
        txtV3.setText(String.valueOf(valor1 / valor2));
    }
}