package com.example.revisaoeinstein;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText txtA, txtB, txtC;
    TextView txtDelta, txtX1, txtX2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        txtA = findViewById(R.id.txtA);
        txtB = findViewById(R.id.txtB);
        txtC = findViewById(R.id.txtC);

        txtDelta = findViewById(R.id.txtDelta);
        txtX1 = findViewById(R.id.txtX1);
        txtX2 = findViewById(R.id.txtX2);

    }

    public void calcularEquacao(View v){

        float a = Float.valueOf(txtA.getText().toString());
        float b = Float.valueOf(txtB.getText().toString());
        float c = Float.valueOf(txtC.getText().toString());

        float delta = (b*b)-4*a*c;
        float X1 = (float) ((-b + Math.sqrt(delta))/(2*a));
        float X2 = (float) ((-b - Math.sqrt(delta))/(2*a));

        txtDelta.setText("Valor Delta: " + delta);
        txtX1.setText("Valor X1: " + X1);
        txtX2.setText("Valor X2: " + X2);


    }

}