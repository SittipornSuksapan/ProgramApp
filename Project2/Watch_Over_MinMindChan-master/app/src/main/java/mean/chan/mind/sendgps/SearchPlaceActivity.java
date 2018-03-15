package mean.chan.mind.sendgps;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.Address;
import android.location.Geocoder;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;

import java.io.IOException;
import java.util.List;
import java.util.Locale;

import android.Manifest;
import android.content.pm.PackageManager;
import android.location.Address;
import android.location.Geocoder;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;

import java.io.IOException;
import java.util.List;
import java.util.Locale;

public class SearchPlaceActivity extends AppCompatActivity implements OnMapReadyCallback {
    private GoogleMap mMap;

    double Lat = 13.711166;
    double Lng = 100.581848;
    private String[] loginStrings; // เพิ่ม id ผู้ปกครอง
    private String latString,lngString;




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search_place);

        backController();
        Toolbar tb = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(tb);

        GoogleApiAvailability gAPI = GoogleApiAvailability.getInstance();
        final int status = gAPI.isGooglePlayServicesAvailable(SearchPlaceActivity.this);


        if (status == ConnectionResult.SUCCESS) {
            SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.map);
            mapFragment.getMapAsync(this);
        }
/*
        Button cmdClear = (Button) findViewById(R.id.cmdClear);
        cmdClear.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                mMap.clear();
            }
        }); */

        Button cmdSearch = (Button) findViewById(R.id.cmdSearch);
        cmdSearch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                EditText edtSearch = (EditText) findViewById(R.id.edtSearch);
                String q = edtSearch.getText().toString().trim();

                if (q != null && !q.equals("")) {
                    Geocoder geo = new Geocoder(SearchPlaceActivity.this, Locale.getDefault());
                    try {
                        List<Address> addLists = geo.getFromLocationName(q, 7);
                        if (addLists.size() > 0) {
                            mMap.clear();

                            Address add = null;
                            LatLng CurrentAddress = null;
                            for (int i = 0; i < addLists.size(); i++) {
                                add = (Address) addLists.get(i);
                                CurrentAddress = new LatLng(add.getLatitude(), add.getLongitude());

                                String str = "";
                                for (int j = 0; j < add.getMaxAddressLineIndex(); j++){
                                    str = str + add.getAddressLine(j) + "\n";
                                }


                                Log.d("TESTSEARCH","SUCCESS");
                                Marker m = mMap.addMarker(new MarkerOptions()
                                        .position(CurrentAddress)
                                        .title(add.getAddressLine(0) + " (Lat : " + add.getLatitude() + ") " +
                                                "(Lng : " + add.getLongitude() + ")")
                                        .icon(BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_GREEN))
                                        .snippet(str));



                            }

                            latString = String.valueOf(add.getLatitude());
                            lngString = String.valueOf(add.getLongitude());

                            CameraPosition cam = new CameraPosition.Builder()
                                    .target(CurrentAddress)
                                    .zoom(15)
                                    .build();
                            mMap.animateCamera(CameraUpdateFactory.newCameraPosition(cam));
                        } else {
                            Toast.makeText(getBaseContext(), "Find not found", Toast.LENGTH_LONG).show();
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        });

        getValueFromIntent();
    }

    // เพิ่ม id ผู้ปกครอง
    private void getValueFromIntent() {
        loginStrings = getIntent().getStringArrayExtra("Login");
        String tag = "17JulyV1";
        Log.d(tag, "ID_parent ==>" + loginStrings);

    }

    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;
        LatLng jj = new LatLng(Lat, Lng);

        if (mMap != null) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED) {
                mMap.setMyLocationEnabled(true);
            }

            mMap.getUiSettings().setZoomControlsEnabled(true);
        }
        mMap.addMarker(new MarkerOptions().position(jj).title("Bangkok University"));

        CameraPosition cam = new CameraPosition.Builder()
                .target(jj)
                .zoom(15)
                .build();
        mMap.moveCamera(CameraUpdateFactory.newCameraPosition(cam));
        mMap.setOnMapClickListener(new GoogleMap.OnMapClickListener() {
            @Override
            public void onMapClick(LatLng latLng) {
                String strAddress = "Lat : " + String.valueOf(latLng.latitude) + " "
                        + "Lng : " + String.valueOf(latLng.longitude);
                MarkerOptions m = new MarkerOptions();
                m.position(latLng);
                m.title(strAddress);

                mMap.addMarker(m);
            }
        });
    }
/*
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.mnuNone:
                if (mMap != null) {
                    mMap.setMapType(GoogleMap.MAP_TYPE_NONE);
                    return true;
                }
            case R.id.mnuNormal:
                if (mMap != null) {
                    mMap.setMapType(GoogleMap.MAP_TYPE_NORMAL);
                    return true;
                }
            case R.id.mnuSatellite:
                if (mMap != null) {
                    mMap.setMapType(GoogleMap.MAP_TYPE_SATELLITE);
                    return true;
                }
            case R.id.mnuTerrain:
                if (mMap != null) {
                    mMap.setMapType(GoogleMap.MAP_TYPE_TERRAIN);
                    return true;
                }
            case R.id.mnuHybrid:
                if (mMap != null) {
                    mMap.setMapType(GoogleMap.MAP_TYPE_HYBRID);
                    return true;
                }
        }
        return super.onOptionsItemSelected(item);
    }  */

    public void clickContinue (View view) {

        String tag = "1234";
        Intent intent = new Intent(SearchPlaceActivity.this, MainActivity.class);
        intent.putExtra("Login", loginStrings);
        intent.putExtra("Lat", latString);
        intent.putExtra("Lng", lngString);
        Log.d(tag, "Lat length ==> " + latString);
        Log.d(tag, "Lng length ==> " + lngString);
        startActivity(intent);
        Log.d("21April", "Name length ==> " + loginStrings[0]);
        finish();


    } //clickButtonContinue

    private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(SearchPlaceActivity.this, FirstActivity.class);
                intent.putExtra("Login", loginStrings);
                startActivity(intent);
                finish();

            }
        });
    }

}

