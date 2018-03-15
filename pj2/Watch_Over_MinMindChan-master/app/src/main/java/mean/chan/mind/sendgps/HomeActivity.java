package mean.chan.mind.sendgps;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class HomeActivity extends AppCompatActivity implements View.OnClickListener {

    //Explict
    private Button button;
    private TextView textView;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        initialView();

        clickController();

    }// Main Method

    private void clickController() {
        button.setOnClickListener(HomeActivity.this);
        textView.setOnClickListener(HomeActivity.this);
    }

    private void initialView() {
        button = (Button) findViewById(R.id.btnContHome);
        textView = (TextView) findViewById(R.id.txtSignInHome);

    }

    @Override
    public void onClick(View view) {
        //For Button
        if (view == button) {
            startActivity(new Intent(HomeActivity.this, CreateAccountActivity.class));
        }

        //For TextView
        if (view == textView) {
            startActivity(new Intent(HomeActivity.this, LoginActivity.class));
        }

    }// OnClick
} // Main Class
