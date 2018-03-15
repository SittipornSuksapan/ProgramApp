package mean.chan.mind.sendgps;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;

public class InfoContactActivity extends AppCompatActivity {

    private String[] loginStrings;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_info_contact);

        //Back
        backController();

        getValueFromIntent();
    }

    private void getValueFromIntent() {
        loginStrings = getIntent().getStringArrayExtra("Login");
        String tag = "17JulyV1";
        Log.d(tag, "ID_parent ==>" + loginStrings);

    }

    private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(InfoContactActivity.this, SwipeContactActivity.class);
                intent.putExtra("Login", loginStrings);
                startActivity(intent);
                finish();
            }
        });
    }
}
