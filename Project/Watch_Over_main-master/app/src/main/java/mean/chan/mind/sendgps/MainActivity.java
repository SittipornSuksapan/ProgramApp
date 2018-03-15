package mean.chan.mind.sendgps;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.StrictMode;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MainActivity extends AppCompatActivity {

    //Explicit
    private TextView latTextView, lngTextView;
    private EditText plateEditText;

    private LocationManager locationManager;
    private Criteria criteria;
    private boolean GPSABoolean, networkABoolean;
    private int timeAnInt = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //Bind widget
        bindWidget();

        //setup Location
        setupLocation();

        //Auto update
        autoUpdate();

    } //Main method

    public void clickSaveData(View view) {

        String strName = plateEditText.getText().toString().trim();

        if (strName.equals("")) {
            Toast.makeText(this,"กรุณากรอกชื่อสถานที่ด้วยครับ",
                    Toast.LENGTH_SHORT).show();
        } else {
            String strLat = latTextView.getText().toString();
            String strLng = lngTextView.getText().toString();
            updateValueToServer(strName,strLat,strLng);
        }

    } //clickSaveData

    private void updateValueToServer(String strName, String strLat, String strLng) {

        OkHttpClient okHttpClient = new OkHttpClient();
        RequestBody requestBody = new FormEncodingBuilder()
                .add("isAdd","true")
                .add("Name",strName)
                .add("Lat",strLat)
                .add("Lng",strLng)
                .build();
        Request.Builder builder = new Request.Builder();
        Request request = builder.url("http://androidthai.in.th/dom/addPlate.php").post(requestBody).build();
        Call call = okHttpClient.newCall(request);
        call.enqueue(new Callback() {
            @Override
            public void onFailure(Request request, IOException e) {

            }

            @Override
            public void onResponse(Response response) throws IOException {
                finish();
            }
        });

    }//Update Value

    private void autoUpdate() {

        timeAnInt +=1;


        //Chang Policy
        StrictMode.ThreadPolicy threadPolicy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(threadPolicy);

        //Get current time
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();
        String getTimeDate = dateFormat.format(date);
        Log.d("Test","Time ==>" +timeAnInt + "=" + getTimeDate);
        myLoop();

    }//Auto update

    private void myLoop() {
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                autoUpdate();
            }
        },1000); // minli second
    }

    @Override
    protected void onResume() {
        super.onResume();

        locationManager.removeUpdates(locationListener);

        String strLat = "Unknow";
        String strLng = "Unknow";
        Location networkLocation = requestLocation(LocationManager.NETWORK_PROVIDER,"No Internet");
        if (networkLocation != null) {
            strLat = String.format("%.7f",networkLocation.getLatitude());
            strLng = String.format("%.7f",networkLocation.getLongitude());
        }
       Location gpsLocation = requestLocation(LocationManager.GPS_PROVIDER,"No GPS Card");
        if (gpsLocation != null) {
            strLat = String.format("%.7f", gpsLocation.getLatitude());
            strLng = String.format("%.7f", gpsLocation.getLongitude());
        }
        latTextView.setText(strLat);
        lngTextView.setText(strLng);

    } // onResume

    @Override
    protected void onStart() {
        super.onStart();
        GPSABoolean = locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER);
        if (!GPSABoolean) {
            networkABoolean = locationManager.isProviderEnabled(LocationManager.NETWORK_PROVIDER);

            if (!networkABoolean) {
                Log.d("GPS", "Cannot Find Location");

            }
        }
    }

    @Override
    protected void onStop() {
        super.onStop();

        locationManager.removeUpdates(locationListener);

    }

    public Location requestLocation(String strProvider, String strError) {

        Location location = null;
        if (locationManager.isProviderEnabled(strProvider)) {


            locationManager.requestLocationUpdates(strProvider, 1000, 10, locationListener);
            location = locationManager.getLastKnownLocation(strProvider);

        } else {
            Log.d("GPS", strError);
        }


        return location;
    }


    public final LocationListener locationListener = new LocationListener() {
        @Override
        public void onLocationChanged(Location location) {
            latTextView.setText(String.format("%.7f",location.getLatitude()));
            lngTextView.setText(String.format("%.7f",location.getLongitude()));
        }

        @Override
        public void onStatusChanged(String provider, int status, Bundle extras) {

        }

        @Override
        public void onProviderEnabled(String provider) {

        }

        @Override
        public void onProviderDisabled(String provider) {

        }
    };


    private void setupLocation() {
        locationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
        criteria = new Criteria();
        criteria.setAccuracy(Criteria.ACCURACY_FINE);
        criteria.setAltitudeRequired(false);
        criteria.setBearingRequired(false);
    }

    private void bindWidget() {
        latTextView = (TextView) findViewById(R.id.textView3);
        lngTextView = (TextView) findViewById(R.id.textView5);
        plateEditText = (EditText) findViewById(R.id.editText);
    }
} //Main Class
