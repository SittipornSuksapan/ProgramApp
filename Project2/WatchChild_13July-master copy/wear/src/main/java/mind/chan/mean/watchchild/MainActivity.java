package mind.chan.mean.watchchild;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.support.wearable.activity.WearableActivity;
import android.support.wearable.view.WatchViewStub;
import android.util.Log;
import android.widget.TextView;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.wearable.Wearable;

import java.util.Random;

public class MainActivity extends WearableActivity implements
        GoogleApiClient.ConnectionCallbacks,
        GoogleApiClient.OnConnectionFailedListener,
        com.google.android.gms.location.LocationListener {

//    public class MainActivity extends WearableActivity implements
//            GoogleApiClient.ConnectionCallbacks,
//            GoogleApiClient.OnConnectionFailedListener,
//            LocationListener {

    private TextView mTextView;
    private MyManage myManage;
    private LocationManager locationManager;
    private Criteria criteria;
    //    private double latADouble = 13.711166, lngADouble = 100.581848;
    private double lat = 0.0;
    private double lng = 0.0;
    private GoogleApiClient googleApiClient;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        try {
//            googleApiClient = new GoogleApiClient.Builder(this)
//                    .addApi(LocationServices.API)
//                    .addApi(Wearable.API)  // used for data layer API
//                    .addConnectionCallbacks(this)
//                    .addOnConnectionFailedListener(this)
//                    .build();
//
//            // Connect to Google API Client
//            googleApiClient.connect();

            googleApiClient = new GoogleApiClient.Builder(this)
                    .addApi(Wearable.API)
                    .addApi(LocationServices.API)
                    .addConnectionCallbacks(this)
                    .addOnConnectionFailedListener(this)
                    .build();
            // Connect to Google API Client
//            googleApiClient.connect();
        } catch (Exception e) {
            e.printStackTrace();
        }
        //Create SQLite Database
        mySetup();

        //Check Database
        checkDatabase();


    }   // Main Method


    @Override
    protected void onStop() {
        super.onStop();

//        locationManager.removeUpdates(locationListener);

    }

//    public Location myFindLocation(String strProvider) {
//
//        Location location = null;
//
//        ActivityCompat.requestPermissions(this,
//                new String[]{Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, 10);
//
//        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
//            // TODO: Consider calling
//            //    ActivityCompat#requestPermissions
//            // here to request the missing permissions, and then overriding
//            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
//            //                                          int[] grantResults)
//            // to handle the case where the user grants the permission. See the documentation
//            // for ActivityCompat#requestPermissions for more details.
//            return null;
//        }
////        locationManager.requestLocationUpdates(strProvider, 1000, 10, locationListener);
//
////        if (locationManager.isProviderEnabled(strProvider)) {
////            if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
////                // TODO: Consider calling
////                //    ActivityCompat#requestPermissions
////                // here to request the missing permissions, and then overriding
////                //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
////                //                                          int[] grantResults)
////                // to handle the case where the user grants the permission. See the documentation
////                // for ActivityCompat#requestPermissions for more details.
////                return null;
////            }
////            locationManager.requestLocationUpdates(strProvider, 1000, 10, locationListener);
////        }else {
////
////            Log.i("---isProviderEnabled---","false");
////        }
//
//        return location;
//    }


//    public LocationListener locationListener = new LocationListener() {
//        @Override
//        public void onLocationChanged(Location location) {
//            latADouble = location.getLatitude();
//            lngADouble = location.getLongitude();
//
//            Log.i("---latADouble---", latADouble + "");
//            Log.i("---lngADouble---", lngADouble + "");
//        }
//
//        @Override
//        public void onStatusChanged(String s, int i, Bundle bundle) {
//
//        }
//
//        @Override
//        public void onProviderEnabled(String s) {
//
//        }
//
//        @Override
//        public void onProviderDisabled(String s) {
//
//        }
//    };


    private void mySetup() {
        myManage = new MyManage(this);
//        locationManager = (LocationManager) getSystemService(LOCATION_SERVICE);
//        criteria = new Criteria();
//        criteria.setAccuracy(Criteria.ACCURACY_FINE);
//        criteria.setAltitudeRequired(false);
//        criteria.setBearingRequired(false);
    }

    private void showText(final String strShowText) {
        final WatchViewStub stub = (WatchViewStub) findViewById(R.id.watch_view_stub);
        stub.setOnLayoutInflatedListener(new WatchViewStub.OnLayoutInflatedListener() {
            @Override
            public void onLayoutInflated(WatchViewStub stub) {
                mTextView = (TextView) stub.findViewById(R.id.text);
                mTextView.setText(strShowText);
            }
        });
    }

    private void checkDatabase() {
        SQLiteDatabase sqLiteDatabase = openOrCreateDatabase(MyOpenHelper.database_name,
                MODE_PRIVATE, null);
        Cursor cursor = sqLiteDatabase.rawQuery("SELECT * FROM childTABLE", null);
        cursor.moveToFirst();

        if (cursor.getCount() == 0) {
            //Data Blank ==> Start First
            startFirst();

        } else {
            haveData();
        }

    }

    private void haveData() {

        SQLiteDatabase sqLiteDatabase = openOrCreateDatabase(MyOpenHelper.database_name,
                MODE_PRIVATE, null);
        Cursor cursor = sqLiteDatabase.rawQuery("SELECT * FROM childTABLE", null);
        cursor.moveToFirst();
        String strCode = cursor.getString(1);
        Log.d("12JulyV1", "Code ==> " + strCode);
        showText(strCode);

        myLoop(strCode);


    }

    private void myLoop(final String strCode) {

        //ToDo
        String tag = "12JulyV1";
        Log.d(tag, "Find ==> " + strCode);


        try {

            GetChildWhereCode getChildWhereCode = new GetChildWhereCode(this);
            getChildWhereCode.execute(strCode);
            Log.d(tag, "Result getChild ==> " + getChildWhereCode.get());

            if (getChildWhereCode.get().length() != 4) {

                //Have Parent
//                findLatLng();
                Log.d(tag, "Lat ==> " + lat);
                Log.d(tag, "Lng ==> " + lng);

                updateLocation(strCode);


            }   // if


        } catch (Exception e) {
            Log.d(tag, "e myLoop ==> " + e.toString());
        }


        //Delay
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                myLoop(strCode);
            }
        }, 1000);


    }


    private void updateLocation(String strCode) {


        try {

            EditLocation editLocation = new EditLocation(this);
            editLocation.execute(strCode,
                    Double.toString(lat),
                    Double.toString(lng));

            Log.d("12JulyV1", "Result from update Location ==> " + editLocation.get());

            showText("Success");

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

//    private void findLatLng() {
//
//        Location netWorkLocation = myFindLocation(LocationManager.NETWORK_PROVIDER);
//        if (netWorkLocation != null) {
//            latADouble = netWorkLocation.getLatitude();
//            lngADouble = netWorkLocation.getLongitude();
//        }
//
//        Location gpsLocation = myFindLocation(LocationManager.GPS_PROVIDER);
//        if (gpsLocation != null) {
//            latADouble = gpsLocation.getLatitude();
//            lngADouble = gpsLocation.getLongitude();
//        }
//
//    }

    private void startFirst() {

        Random random = new Random();
        int i = random.nextInt(100000);
        Log.d("12JulyV1", "i ==> " + i);

        myManage.addValue(Integer.toString(i));

        showText("Code = " + Integer.toString(i));

    }


//    @Override
//    public void onConnected(Bundle bundle) {
//        // Do something when connected with Google API Client
//
////        try {
////            LocationAvailability locationAvailability = LocationServices.FusedLocationApi.getLocationAvailability(googleApiClient);
////            if (locationAvailability.isLocationAvailable()) {
////                // Call Location Services
////                LocationRequest locationRequest = new LocationRequest()
////                        .setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY)
////                        .setInterval(5000)
////                        .setFastestInterval(1000);
////                ;
////                LocationServices.FusedLocationApi.requestLocationUpdates(googleApiClient, locationRequest,this);
//////                requestLocationUpdates(mGoogleApiClient, locationRequest, this)
////                Log.i("--Location", " available");
////            } else {
////                // Do something when Location Provider not available
////
////                Log.i("--Location", "not available");
////            }
////        } finally {
////
////        }
//        LocationRequest locationRequest = LocationRequest.create()
//                .setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY)
//                .setInterval(5000)
//                .setFastestInterval(1000);
//
//        LocationServices.FusedLocationApi
//                .requestLocationUpdates(googleApiClient, locationRequest, this)
//                .setResultCallback(new ResultCallback<Status>() {
//                    @Override
//                    public void onResult(Status status) {
//
//                    }
//                }Callback() {
//
//                    @Override
//                    public void onResult(Status status) {
//                        if (status.getStatus().isSuccess()) {
//                            if (Log.isLoggable(TAG, Log.DEBUG)) {
//                                Log.d(TAG, "Successfully requested location updates");
//                            }
//                        } else {
//                            Log.e(TAG,
//                                    "Failed in requesting location updates, "
//                                            + "status code: "
//                                            + status.getStatusCode()
//                                            + ", message: "
//                                            + status.getStatusMessage());
//                        }
//                    }
//                });
//
//
//    }
@Override
public void onConnected(Bundle bundle) {
    LocationRequest locationRequest = LocationRequest.create()
            .setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY)
            .setInterval(5000)
            .setFastestInterval(1000);

    LocationServices.FusedLocationApi
            .requestLocationUpdates(googleApiClient, locationRequest, this)
            .setResultCallback(new ResultCallback<Status>(){

                @Override
                public void onResult(Status status) {
                    if (status.getStatus().isSuccess()) {
                        Log.d("--", "Successfully requested location updates");
                    } else {
                        Log.e("--",
                                "Failed in requesting location updates, "
                                        + "status code: "
                                        + status.getStatusCode()
                                        + ", message: "
                                        + status.getStatusMessage());
                    }
                }
            });
}


    @Override
    public void onConnectionSuspended(int i) {
        // Do something when Google API Client connection was suspended

    }

    @Override
    public void onConnectionFailed(ConnectionResult connectionResult) {
        // Do something when Google API Client connection failed
        Log.i("--Failed", connectionResult.toString());
    }

    @Override
    public void onLocationChanged(Location location) {
        // Do something when got new current location
        lat = location.getLatitude();
        lng = location.getLongitude();

        Log.i("--lat", lat + "");
        Log.i("--lng", lng + "");
    }


    @Override
    protected void onResume() {
        super.onResume();
        googleApiClient.connect();

    }

    @Override
    protected void onPause() {
        super.onPause();
        if (googleApiClient.isConnected()) {
            LocationServices.FusedLocationApi
                    .removeLocationUpdates(googleApiClient, this);
        }
        googleApiClient.disconnect();
    }



}   // Main Class
