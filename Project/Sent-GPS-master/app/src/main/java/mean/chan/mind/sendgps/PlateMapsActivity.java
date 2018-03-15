package mean.chan.mind.sendgps;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public class PlateMapsActivity extends FragmentActivity implements OnMapReadyCallback {

    private GoogleMap mMap;
    private String nameString,latString,lngString;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.my_layout);

        //Receive From Intent
        nameString = getIntent().getStringExtra("Name");
        latString = getIntent().getStringExtra("Lat");
        lngString = getIntent().getStringExtra("Lng");

        //Show view
        TextView textView = (TextView) findViewById(R.id.textView10);
        textView.setText(nameString);



        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);
    } // main method

    public void clickBackPlate(View view) {
        finish();
    }

    public void clickHistory(View view) {
        //Start Activity
        startActivity(new Intent(PlateMapsActivity.this, HistoryListView.class));


    }

    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;

        //Create LatLng
        double douLat = Double.parseDouble(latString);
        double douLng = Double.parseDouble(lngString);
        LatLng latLng = new LatLng(douLat, douLng);
        mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latLng,16));
        mMap.addMarker(new MarkerOptions()
        .position(latLng)
        .icon(BitmapDescriptorFactory.fromResource(R.drawable.build2))
        .title(nameString));

        //icon and name show onMap

    } // onMap ทำงานควบคุมแผนที่
} // main class
