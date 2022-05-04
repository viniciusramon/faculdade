package com.example.bd_interno_einstein_2022;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    EditText txtTelaNome, txtTelaSalario;
    ListView listaFunc;
    String telaId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        txtTelaNome = findViewById(R.id.txtTelaNome);
        txtTelaSalario = findViewById(R.id.txtTelaSalario);
        listaFunc = findViewById(R.id.listaFunc);

        preencheLista();
    }

    public void preencheLista(){
        final Cursor resultadoSelect;
        String[] camposBD = {"_id", "nome", "salario"};
        int[] camposLayout = {R.id.txtLayoutId, R.id.txtLayoutNome, R.id.txtLayoutSalario};

        SQLiteDatabase db;
        criarDBinterno meuBD = new criarDBinterno(getBaseContext());
        // Estou lento no select = getReadableDatabase
        // Se fosse alterar/incluir/excluir seria getWriteableDatabase
        db = meuBD.getReadableDatabase();

        resultadoSelect = db.query("funcionario", camposBD, null, null, null, null, null);

        if(resultadoSelect != null){
            resultadoSelect.moveToFirst();
        }

        db.close();

        // Aqui que a mágica acontece = transforma o cursor resultadoSelect no formato do layout layout_bd_interno

        SimpleCursorAdapter adaptadorTela = new SimpleCursorAdapter(getBaseContext(), R.layout.layout_bd_interno, resultadoSelect,
                camposBD, camposLayout, 0);
        listaFunc.setAdapter(adaptadorTela);

        //onClick da lista
        listaFunc.setOnItemClickListener(
                new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                        int contadorLinha = 0;
                        for(resultadoSelect.moveToFirst(); !resultadoSelect.isAfterLast();
                            resultadoSelect.moveToNext()){
                            if(contadorLinha == i){
                                telaId = resultadoSelect.getString(0); // 0 é _id
                                txtTelaNome.setText(resultadoSelect.getString(1)); // 1 é nome
                                txtTelaSalario.setText(resultadoSelect.getString(2)); // 2 é salario
                            }
                            contadorLinha++;
                        }
                    }
                }
        );

    }

    public void operacoes(View v){
        SQLiteDatabase bd;
        long resultado;
        ContentValues valoresCampos = new ContentValues();

        if(v.getId() == R.id.btnInserir){
            criarDBinterno meuBD = new criarDBinterno(getBaseContext());
            bd =meuBD.getWritableDatabase();

            valoresCampos.put("nome", txtTelaNome.getText().toString());
            valoresCampos.put("salario", txtTelaSalario.getText().toString());

            resultado = bd.insert("funcionario", null, valoresCampos);
            bd.close();

            if(resultado == -1){
                Toast.makeText(this, "Erro ao inserir!", Toast.LENGTH_SHORT).show();
            }
            else{
                Toast.makeText(this, "Inserido com sucesso!", Toast.LENGTH_SHORT).show();
            }
        }

        else if(v.getId() == R.id.btnAlterar)
        {
            criarDBinterno meuBD = new criarDBinterno(getBaseContext());
            bd = meuBD.getWritableDatabase();

            valoresCampos.put("nome", txtTelaNome.getText().toString());
            valoresCampos.put("salario", txtTelaSalario.getText().toString());

            resultado = bd.update("funcionario", valoresCampos, "_id = " + telaId, null);

            if(resultado == -1){
                Toast.makeText(this, "Erro ao inserir!", Toast.LENGTH_SHORT).show();
            }
            else{
                Toast.makeText(this, "Alterado com sucesso!", Toast.LENGTH_SHORT).show();
            }
        }

        else if(v.getId() == R.id.btnExcluir)
        {
            criarDBinterno meuBD = new criarDBinterno(getBaseContext());
            bd = meuBD.getWritableDatabase();

            resultado = bd.delete("funcionario","_id = " + telaId,null);

            if(resultado == -1){
                Toast.makeText(this, "Erro ao inserir!", Toast.LENGTH_SHORT).show();
            }
            else{
                Toast.makeText(this, "Excluido com sucesso!", Toast.LENGTH_SHORT).show();
            }
        }

        else if(v.getId() == R.id.btnLimpar)
        {
            telaId = "";
            txtTelaNome.setText("");
            txtTelaSalario.setText("");
        }

        preencheLista();
    }
}