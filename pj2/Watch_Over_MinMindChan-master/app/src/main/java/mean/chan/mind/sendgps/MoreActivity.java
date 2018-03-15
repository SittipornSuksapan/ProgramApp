package mean.chan.mind.sendgps;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class MoreActivity extends AppCompatActivity implements View.OnClickListener {


    private String[] loginStrings;
    private Button button;

    private static final String PREF_NAME = "watch";
    SharedPreferences settings;
    SharedPreferences.Editor editor;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_more);

        settings = getSharedPreferences(PREF_NAME, 0);


        getValueFromIntent();
        //Initial View
        initialView();

        //Controller
        controller();

        backController();

        TextView textView = (TextView) findViewById(R.id.textView3);
        textView.setText(loginStrings[1]);
        TextView textView2 = (TextView) findViewById(R.id.textView5);
        textView2.setText(loginStrings[2]);

    }   // Main Method

    private void getValueFromIntent() {


        loginStrings = getIntent().getStringArrayExtra("Login");
        String tag = "PROFILE";
        Log.d(tag, "ID_parent ==>" + loginStrings[0]);
        Log.d(tag, "ID_parent ==>" + loginStrings[1]);
        Log.d(tag, "ID_parent ==>" + loginStrings[2]);

    }

    private void controller() {
        button.setOnClickListener(this);
    }

    private void initialView() {
        button = (Button) findViewById(R.id.btnLogin);
    }

    @Override
    public void onClick(View view) {


        //For Login
        if (view == button) {

            editor = settings.edit();
            editor.clear();
            editor.commit();
            Intent i = new Intent(MoreActivity.this, LoginActivity.class);
            startActivity(i);
            finish();
        }

    }   // onClick

    private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }





}   // Main Class
