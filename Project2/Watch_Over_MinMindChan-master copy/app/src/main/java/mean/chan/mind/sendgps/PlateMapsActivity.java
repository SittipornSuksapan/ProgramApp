package mean.chan.mind.sendgps;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

import java.util.concurrent.ExecutionException;

public class PlateMapsActivity extends FragmentActivity implements OnMapReadyCallback,View.OnClickListener {

    private GoogleMap mMap;
    private String nameString,latString,lngString,idString;

    private Button button;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.my_layout);

        //Back
        backController();

        //Receive From Intent
        nameString = getIntent().getStringExtra("Name");
        latString = getIntent().getStringExtra("Lat");
        lngString = getIntent().getStringExtra("Lng");
        idString = getIntent().getStringExtra("id");
        Toast.makeText(this, "พื้นที่ :" +nameString, Toast.LENGTH_SHORT).show();

        //Show view
        TextView textView = (TextView) findViewById(R.id.textView10);
        textView.setText(nameString);
        button = (Button) findViewById(R.id.btnDelete);
        button.setOnClickListener(this);


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
        .icon(BitmapDescriptorFactory.fromResource(R.drawable.point))
        .title(nameString));

        //icon and name show onMap

    } // onMap ทำงานควบคุมแผนที่

    private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }

    @Override
    public void onClick(View view) {
        //For Login
        if (view == button) {


            DeletePlate editLocation = new DeletePlate(this);
            editLocation.execute(idString);

            try {
                Log.d("12JulyV1", "Result from update Location ==> " + editLocation.get());
                Intent intent = new Intent(PlateMapsActivity.this, FirstActivity.class);
                //Intent intent = new Intent(FirstActivity.this, MyServiceActivity.class);
                intent.putExtra("Login", getIntent().getStringArrayExtra("Login"));
                startActivity(intent);
                finish();
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e) {
                e.printStackTrace();
            }

        }

    }
} // main class
