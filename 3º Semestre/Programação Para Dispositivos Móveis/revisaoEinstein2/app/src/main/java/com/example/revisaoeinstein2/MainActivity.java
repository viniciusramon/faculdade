package com.example.revisaoeinstein2;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText txtNome, txtSalarioBruto, txtFGTS, txtINSS;
    TextView txtSalarioLiquido;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        txtNome = findViewById(R.id.txtNome);
        txtSalarioBruto = findViewById(R.id.txtSalarioBruto);
        txtFGTS = findViewById(R.id.txtFGTS);
        txtINSS = findViewById(R.id.txtINSS);

        txtSalarioLiquido = findViewById(R.id.txtSalarioLiquido);
    }

    public void calculaSalario(View v){
        float salarioBruto = Float.valueOf(txtSalarioBruto.getText().toString());
        float fgts = Float.valueOf(txtFGTS.getText().toString());
        float inss = Float.valueOf(txtINSS.getText().toString());
        float salarioliquido = salarioBruto - fgts - inss;
        txtSalarioLiquido.setText(txtNome.getText() + ", seu salário líquido é: R$" + salarioliquido);
    }
}