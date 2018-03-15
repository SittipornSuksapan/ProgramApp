package mean.chan.mind.sendgps;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.app.NotificationCompat;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Toast;

import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

import org.json.JSONArray;
import org.json.JSONObject;

public class FirstActivity extends AppCompatActivity {

    //Explicit
    private ListView listView;
    private String[] nameStrings, lngStrings, idStrings,latStrings;
    private String[] loginStrings;


    private static final String PREF_NAME = "watch";
    SharedPreferences settings;
    SharedPreferences.Editor editor;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_first);

        listView = (ListView) findViewById(R.id.listView);
        settings = getSharedPreferences(PREF_NAME, 0);
        getValueFromIntent();

        //Synchronize JSON
        synJSON();

        //Loop Check User
        loopCheckUser();

        backController();

        //initButtomBar();

        inFo();

    }   // Main Method

    private void getValueFromIntent() {

        loginStrings = getIntent().getStringArrayExtra("Login");
    }


    //นี่คือ เมทอด ที่หาระยะ ระหว่างจุด
    private static double distance(double lat1, double lon1, double lat2, double lon2) {
        double theta = lon1 - lon2;
        double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));
        dist = Math.acos(dist);
        dist = rad2deg(dist);
        dist = dist * 60 * 1.1515 * 1.609344;


        return (dist);
    }

    private static double deg2rad(double deg) {
        return (deg * Math.PI / 180.0);
    }

    private static double rad2deg(double rad) {
        return (rad * 180 / Math.PI);
    }

//    public class ConnectedLocalUser extends AsyncTask<Void, Void, String> {
//
//        @Override
//        protected String doInBackground(Void... voids) {
//
//            try {
//
//                OkHttpClient okHttpClient = new OkHttpClient();
//                Request.Builder builder = new Request.Builder();
//                Request request = builder.url("http://swiftcodingthai.com/watch/php_get_last.php").build();
//                Response response = okHttpClient.newCall(request).execute();
//                return response.body().string();
//
//            } catch (Exception e) {
//                e.printStackTrace();
//                return null;
//            }
//        }   // doInBack
//
//        @Override
//        protected void onPostExecute(String s) {
//            super.onPostExecute(s);
//            Log.d("22April", "JSON ==> " + s);
//
//            try {
//
//                JSONArray jsonArray = new JSONArray(s);
//                JSONObject jsonObject = jsonArray.getJSONObject(0);
//                String strLat = jsonObject.getString("Lat");
//                String strLng = jsonObject.getString("Lng");
//
//                for (int i = 0; i < latStrings.length; i++) {
//
//                    double douLatPlate = Double.parseDouble(latStrings[i]);
//                    double douLngPlate = Double.parseDouble(lngStrings[i]);
//                    double douLatUser = Double.parseDouble(strLat);
//                    double douLngUser = Double.parseDouble(strLng);
//
//                    double currentDistance = distance(douLatPlate,
//                            douLngPlate, douLatUser, douLngUser);
//
//                    Log.d("23April", "current Dis ==> " + currentDistance);
//
//                    if (currentDistance < 0.3) {
//                        myNotification(); //สามารถเปลี่ยนแปลงได้ถ้าอยากให้ออกตอนร้อง
//                    }
//
//                }   // for
//
//
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//
//        }   // onPost
//
//    }   // Connected Class

    private void myNotification(String loc,String name) {

        editor = settings.edit();
        editor.putString(loc, "yes");
        editor.commit();

        Toast.makeText(this, "เข้าในพื้นที่ " + name + " แล้ว" , Toast.LENGTH_SHORT).show();

        NotificationCompat.Builder builder = new NotificationCompat.Builder(this);
        builder.setSmallIcon(R.drawable.build2);
        builder.setTicker("Driving Better");
        builder.setWhen(System.currentTimeMillis());
        builder.setContentTitle("เข้าในพื้นที่แล้ว");
        builder.setContentText("เข้าในพื้นที่ " + name + " แล้ว");
        builder.setAutoCancel(false);


        Uri soundUri = RingtoneManager.getDefaultUri(Notification.DEFAULT_SOUND);
        builder.setSound(soundUri);

        android.app.Notification notification = builder.build();
        NotificationManager notificationManager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        notificationManager.notify(1000, notification);

    }   // myNotification

    private void myNotificationOut(String loc,String name) {

        editor = settings.edit();
        editor.putString(loc, "");
        editor.commit();
        Toast.makeText(this,"ออกจากพื้นที่ " + name + " แล้ว", Toast.LENGTH_SHORT).show();

        NotificationCompat.Builder builder = new NotificationCompat.Builder(this);
        builder.setSmallIcon(R.drawable.build2);
        builder.setTicker("Driving Better");
        builder.setWhen(System.currentTimeMillis());
        builder.setContentTitle("ออกจากพื้นที่แล้ว");
        builder.setContentText("ออกจากพื้นที่ " + name + " แล้ว" );
        builder.setAutoCancel(false);


        Uri soundUri = RingtoneManager.getDefaultUri(Notification.DEFAULT_SOUND);
        builder.setSound(soundUri);

        android.app.Notification notification = builder.build();
        NotificationManager notificationManager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        notificationManager.notify(1000, notification);

    }   // myNotification

    private void loopCheckUser() {

//        ConnectedLocalUser connectedLocalUser = new ConnectedLocalUser();
//        connectedLocalUser.execute();

        try {

            String[] loginStrings = getIntent().getStringArrayExtra("Login");

            GetLocationWhereIdParent getLocationWhereIdParent = new GetLocationWhereIdParent(this);
            getLocationWhereIdParent.execute(loginStrings[0]);

            String strJSON = getLocationWhereIdParent.get();

            JSONArray jsonArray = new JSONArray(strJSON);
            JSONObject jsonObject = jsonArray.getJSONObject(0);
            String strLat = jsonObject.getString("Lat");
            String strLng = jsonObject.getString("Lng");


            for (int i = 0; i < latStrings.length; i++) {

                double douLatPlate = Double.parseDouble(latStrings[i]);
                double douLngPlate = Double.parseDouble(lngStrings[i]);
                double douLatUser = Double.parseDouble(strLat);
                double douLngUser = Double.parseDouble(strLng);

                double currentDistance = distance(douLatPlate,
                        douLngPlate, douLatUser, douLngUser);
                Log.d("23April", "douLatPlate Dis ==> " + douLatPlate);
                Log.d("23April", "douLngPlate Dis ==> " + douLngPlate);
                Log.d("23April", "douLatUser Dis ==> " + douLatUser);
                Log.d("23April", "douLngUser Dis ==> " + douLngUser);

                Log.d("23April", "current Dis ==> " + currentDistance);

                if (currentDistance < 0.3) {

                    if (settings.getString("in"+douLatPlate+"_"+douLngPlate, "").equals("")) {
                        myNotification("in"+douLatPlate+"_"+douLngPlate,nameStrings[i]); //สามารถเปลี่ยนแปลงได้ถ้าอยากให้ออกตอนร้อง
                    } else {

                    }


                } else {

                    if (settings.getString("in"+douLatPlate+"_"+douLngPlate, "").equals("")) {

                    } else {
                        myNotificationOut("in"+douLatPlate+"_"+douLngPlate,nameStrings[i]); //สามารถเปลี่ยนแปลงได้ถ้าอยากให้ออกตอนร้อง
                    }
                }

            }   // for


        } catch (Exception e) {
            e.printStackTrace();
        }


        //Delay
        Handler handler = new Handler();
        int intTime = 5000; // หน่วงเป็นเวลา 5 วินาที
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                loopCheckUser();
            }
        }, intTime);

    }   // loopCheckUser

    @Override
    protected void onRestart() {
        super.onRestart();
        synJSON();
    }

    @Override
    protected void onResume() {
        super.onResume();
        synJSON();
    }

    private void synJSON() {
        MySynJSON mySynJSON = new MySynJSON();
        mySynJSON.execute();
    }

    //Create Inner Class
    public class MySynJSON extends AsyncTask<Void, Void, String> {

        @Override
        protected String doInBackground(Void... voids) {

            try {

                OkHttpClient okHttpClient = new OkHttpClient();
                RequestBody requestBody = new FormEncodingBuilder()
                        .add("isAdd", "true")
                        .add("id_Parent", loginStrings[0])
                        .build();
                Request.Builder builder = new Request.Builder();
                Request request = builder.url("http://androidthai.in.th/dom/getPlate.php").post(requestBody).build();
                Response response = okHttpClient.newCall(request).execute();
                return response.body().string();

                /*
                OkHttpClient okHttpClient = new OkHttpClient();
                Request.Builder builder = new Request.Builder();
                Request request = builder.url("http://androidthai.in.th/dom/getPlate.php").build();
                Response response = okHttpClient.newCall(request).execute();
                return response.body().string();
                */

            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }

        }   // doInBack

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            Log.d("21April", "JSON ==> " + s);

            try {

                JSONArray jsonArray = new JSONArray(s);

//                final String[] nameStrings = new String[jsonArray.length()];
                nameStrings = new String[jsonArray.length()];
                latStrings = new String[jsonArray.length()];
                lngStrings = new String[jsonArray.length()];
                idStrings = new String[jsonArray.length()];

                for (int i = 0; i < jsonArray.length(); i++) {

                    JSONObject jsonObject = jsonArray.getJSONObject(i);
                    nameStrings[i] = jsonObject.getString("Name");
                    latStrings[i] = jsonObject.getString("Lat");
                    lngStrings[i] = jsonObject.getString("Lng");
                    idStrings[i] = jsonObject.getString("id");

                    Log.d("21April", "Name ==> " + i + " == " + nameStrings[i]);

                }   // for

                Log.d("21April", "Name length ==> " + nameStrings.length);


                PlateAdapter plateAdapter = new PlateAdapter(FirstActivity.this, nameStrings);
                listView.setAdapter(plateAdapter);

                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

                        //เลือกสถานที่ไปแสดงในหน้า PlateMapsActivity
                        Intent intent = new Intent(FirstActivity.this, PlateMapsActivity.class);

                        //Intent intent = new Intent(FirstActivity.this, MyServiceActivity.class);
                        intent.putExtra("Login", loginStrings);
                        intent.putExtra("Name", nameStrings[i]);
                        intent.putExtra("Lat", latStrings[i]);
                        intent.putExtra("Lng", lngStrings[i]);
                        intent.putExtra("id", idStrings[i]);

                        startActivity(intent);

                        finish();
                    }   // onItem
                });


            } catch (Exception e) {
                e.printStackTrace();
            }

        }   // onPost

    }   // MySynJSON class

    public void clickAddPlate(View view) {

        String tag = "1234";
        Intent intent = new Intent(FirstActivity.this, SearchPlaceActivity.class);
        intent.putExtra("Login", loginStrings);
        startActivity(intent);
        Log.d("21April", "Name length ==> " + loginStrings[0]);
        finish();
    }

    private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent intent = new Intent(FirstActivity.this, MyServiceActivity.class);
                intent.putExtra("Login", loginStrings);
                finish();
            }
        });
    }

    private void inFo() {

        String tag = "INFO";
        Log.d(tag, "SUCCESS");

        ImageView infoImageView = (ImageView) findViewById(R.id.imvInfo);
        infoImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(FirstActivity.this, InfoPlaceActivity.class);
                startActivity(intent);
            }
        });
    }

}   // Main Class