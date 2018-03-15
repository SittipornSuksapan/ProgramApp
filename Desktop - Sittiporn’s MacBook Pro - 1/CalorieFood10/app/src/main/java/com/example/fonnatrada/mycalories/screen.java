package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

import caloriefood.projectandroid.com.caloriefood.R;


public class screen extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_screen);

       Handler myHandler = new Handler();
        myHandler.postDelayed(new Runnable() {
            @Override
            public void run(){

                Intent goMain = new Intent(screen.this,ProfileActivity.class);
                startActivity(goMain);
                finish();
            }
        }, 3000);
    }
}
