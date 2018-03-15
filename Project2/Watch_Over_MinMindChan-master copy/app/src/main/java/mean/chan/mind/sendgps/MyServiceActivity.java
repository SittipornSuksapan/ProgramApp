package mean.chan.mind.sendgps;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.roughike.bottombar.BottomBar;
import com.roughike.bottombar.OnTabSelectListener;

import org.json.JSONArray;
import org.json.JSONObject;

public class MyServiceActivity extends FragmentActivity implements OnMapReadyCallback {

    private GoogleMap mMap;

    private String[] loginString;
    private String nameString,latString,lngString;
    private static final String PREF_NAME = "watch";
    SharedPreferences settings;
    SharedPreferences.Editor editor;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.service_layout);
        settings = getSharedPreferences(PREF_NAME, 0);


        //get Value From Inten
        getValueFromInten();
        // Check flag login already or not
//        if (settings.getString("code", "").equals("")) {
//
//        } else {
//
//
//            Intent intent = new Intent(MyServiceActivity.this, AddChildActivity.class);
//            intent.putExtra("Login", loginString);
//            startActivity(intent);
//        }
        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        addMapFragment();


        //Back
        //backController();

        //Save
        //saveController();

        //List
        //listController();

        //ButtomBar
        initButtomBar();

        inFo();


    } //Main Method

    /*
    private void listController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvListView);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MyServiceActivity.this, FirstActivity.class);
                intent.putExtra("Login", loginString);
                startActivity(intent);
            }
        });
    }

    private void saveController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvSave);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MyServiceActivity.this, AddChildActivity.class);
                intent.putExtra("Login", loginString);
                startActivity(intent);
            }
        });
    }

    */

    private void inFo() {

        String tag = "INFO";
        Log.d(tag, "SUCCESS");

        ImageView infoImageView = (ImageView) findViewById(R.id.imvInfo);
        infoImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MyServiceActivity.this, InfoMapsActivity.class);
                startActivity(intent);
            }
        });
    }

   /* private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });


    }  */

    private void getValueFromInten() {

//        loginString = getIntent().getStringArrayExtra("Login");

        loginString = getIntent().getStringArrayExtra("Login");


        Log.d("---loginString", "Login_Parent ==> " +loginString);

    }

    private void addMapFragment() {
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);
    }

    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;

        String tag = "13JulyV1";
        String tag2 = "MarkPlace";

        try {



            GetLocationWhereIdParent getLocationWhereIdParent = new GetLocationWhereIdParent(this);
            getLocationWhereIdParent.execute(loginString[0]);


            String strJSON = getLocationWhereIdParent.get();
            Log.d(tag, "JSON1 ==> " + strJSON.toString().trim());
            if (strJSON.toString().trim().equals("null")){

                Log.d(tag, "if ==> " + "if");
                Intent intent = new Intent(MyServiceActivity.this, AddChildActivity.class);
                intent.putExtra("Login", loginString);
                startActivity(intent);
            }else {

                Log.d(tag, "else ==> " + "else");
            }

            JSONArray jsonArray = new JSONArray(strJSON);
            JSONObject jsonObject = jsonArray.getJSONObject(0);

            String strLat = jsonObject.getString("Lat");
            String strLng = jsonObject.getString("Lng");
            String strCode = jsonObject.getString("Code");

            Log.d(tag, "Lat ==> " + strLat);
            Log.d(tag, "Lng ==> " + strLng);
            Log.d(tag, "Code ==> " + strCode);



            LatLng latLng = new LatLng(Double.parseDouble(strLat), Double.parseDouble(strLng));
            Log.d(tag, "LatLng ==> " + latLng);

            mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latLng, 15));
            MarkerOptions markerOptions = new MarkerOptions();
            markerOptions.position(latLng);
            mMap.addMarker(new MarkerOptions()
                    .position(latLng)
                    .icon(BitmapDescriptorFactory.fromResource(R.drawable.pointchild)));


            //ปักมุดสถานที่
            GetPlaceWhereIdParent getPlaceWhereIdParent = new GetPlaceWhereIdParent(this);
            getPlaceWhereIdParent.execute(loginString[0]);

            String strJSON2 = getPlaceWhereIdParent.get();
            Log.d(tag2, "JSON ==> " + strJSON2);

                JSONArray jsonArray2 = new JSONArray(getPlaceWhereIdParent.get());

            final String[] nameStrings = new String[jsonArray2.length()];
            String[] strLatPlace = new String[jsonArray2.length()];
            String[] strLngPlace = new String[jsonArray2.length()];

            for (int i=0;i<jsonArray2.length();i++) {

                JSONObject jsonObject2 = jsonArray2.getJSONObject(i);
                nameStrings[i] = jsonObject2.getString("Name");
                strLatPlace[i] = jsonObject2.getString("Lat");
                strLngPlace[i] = jsonObject2.getString("Lng");
                Log.d(tag2, "Name ==> " + i + " == " + nameStrings[i]);

                LatLng latLngPlace = new LatLng(Double.parseDouble(strLatPlace[i]), Double.parseDouble(strLngPlace[i]));
                Log.d(tag2, "LatLng ==> " + latLngPlace);

                //mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latLngPlace, 16));
                mMap.addMarker(new MarkerOptions()
                        .position(latLngPlace)
                        .icon(BitmapDescriptorFactory.fromResource(R.drawable.point)));

            }   // for



        } catch (Exception e) {
            Log.d(tag, "e ==> " + e.toString());
        }




    } //omMapReady

    // Buttombar
    private void initButtomBar() {

        BottomBar bottomBar = (BottomBar) findViewById(R.id.bottomBar);
        bottomBar.setOnTabSelectListener(new OnTabSelectListener() {
            @Override
            public void onTabSelected(@IdRes int tabId) {

                if (tabId == R.id.buttom_nav_item_home) {
                    Toast toast = Toast.makeText(MyServiceActivity.this, "Home",
                            Toast.LENGTH_SHORT);
                    toast.show();
                    //startActivity(new Intent(MyServiceActivity.this, MyServiceActivity.class));

                } else if (tabId == R.id.buttom_nav_item_child) {
                    Toast toast = Toast.makeText(MyServiceActivity.this, "Children",
                            Toast.LENGTH_SHORT);
                    toast.show();

                            Intent intent = new Intent(MyServiceActivity.this, ProfileChildActivity.class);
                            intent.putExtra("Login", loginString);


                            startActivity(intent);

                        //startActivity(new Intent(MyServiceActivity.this, AddChildActivity.class));

                } else if (tabId == R.id.buttom_nav_item_place) {
                    Toast toast = Toast.makeText(MyServiceActivity.this, "Place",
                            Toast.LENGTH_SHORT);
                    toast.show();
                    Intent intent = new Intent(MyServiceActivity.this, FirstActivity.class);
                    intent.putExtra("Login", loginString);
                    startActivity(intent);
                    //startActivity(new Intent(MyServiceActivity.this, FirstActivity.class));

                } else if (tabId == R.id.buttom_nav_item_contact) {
                    Toast toast = Toast.makeText(MyServiceActivity.this, "Contact",
                            Toast.LENGTH_SHORT);
                    toast.show();
                    //startActivity(new Intent(MyServiceActivity.this, NumberActivity.class));
                    Intent intent = new Intent(MyServiceActivity.this, NumberActivity.class);
                    intent.putExtra("Login", loginString);
                    startActivity(intent);

                } else if (tabId == R.id.buttom_nav_item_history) {
                    Toast toast = Toast.makeText(MyServiceActivity.this, "More",
                            Toast.LENGTH_SHORT);
                    toast.show();
                    Intent intent = new Intent(MyServiceActivity.this, MoreActivity.class);
                    intent.putExtra("Login", loginString);
                    startActivity(intent);

                }
            }
        });


    }
} //Main Class
