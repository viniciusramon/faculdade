package com.example.bd_interno_einstein_2022;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class criarDBinterno extends SQLiteOpenHelper {

    private static int VERSAO = 1;

    public criarDBinterno(Context contexto){

        super(contexto, "RH.db", null, VERSAO);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        String comandoSQL = "CREATE TABLE funcionario("+
                "_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,"+
                " nome VARCHAR(50)," +
                " salario FLOAT);";
        sqLiteDatabase.execSQL(comandoSQL);

    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS funcionario");
        onCreate(sqLiteDatabase);

    }
}