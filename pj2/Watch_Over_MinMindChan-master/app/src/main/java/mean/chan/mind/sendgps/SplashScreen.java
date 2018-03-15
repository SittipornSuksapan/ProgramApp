package mean.chan.mind.sendgps;

import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class SplashScreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);

        //Sound Effect
//        MediaPlayer mediaPlayer = MediaPlayer.create(SplashScreen.this,
//                R.raw.intro_tata);
//        mediaPlayer.start();

        //Post Delay & Intent to HomeActivity
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                startActivity(new Intent(SplashScreen.this, LoginActivity.class));
                finish();
            }
        }, 2000);

    }   // Main Method

}   // Main Class
