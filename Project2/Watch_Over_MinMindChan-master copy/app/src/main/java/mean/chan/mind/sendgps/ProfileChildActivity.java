package mean.chan.mind.sendgps;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

import org.json.JSONArray;
import org.json.JSONObject;

public class ProfileChildActivity extends AppCompatActivity {

    private String[] loginStrings, codeStrings,nameStrings,genderStrings;
    String tag = "PROFILECHILD";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profile_child);

        getValueFromIntent();

        synJSON();

        backController();

    }

    private void getValueFromIntent() {

        loginStrings = getIntent().getStringArrayExtra("Login");

        Log.d(tag, "ID_parent ==>" + loginStrings[0]);

    }

    private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });

    } //button back

    @Override
    protected void onRestart() {
        super.onRestart();
        synJSON();
    }

    private void synJSON() {
        ProfileChildActivity.MySynJSON mySynJSON = new ProfileChildActivity.MySynJSON();
        mySynJSON.execute();
    }

    //Create Inner Class
    public class MySynJSON extends AsyncTask<Void, Void, String> {

        @Override
        protected String doInBackground(Void... voids) {

            try {
                //ส่ง id ผู้ปกครองไปเช็ค
                OkHttpClient okHttpClient = new OkHttpClient();
                RequestBody requestBody = new FormEncodingBuilder()
                        .add("isAdd", "true")
                        .add("id_Parent", loginStrings[0])
                        .build();
                Request.Builder builder = new Request.Builder();
                Request request = builder.url("http://androidthai.in.th/dom/getChildWhereIdParentAndLat.php").post(requestBody).build();
                Response response = okHttpClient.newCall(request).execute();
                return response.body().string();

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

                codeStrings= new String[jsonArray.length()];
                nameStrings = new String[jsonArray.length()];
                genderStrings = new String[jsonArray.length()];

                for (int i=0;i<jsonArray.length();i++) {

                    JSONObject jsonObject = jsonArray.getJSONObject(i);
                    codeStrings[i] = jsonObject.getString("Code");
                    nameStrings[i] = jsonObject.getString("Name");
                    genderStrings[i] = jsonObject.getString("Gender");

                    //lngStrings[i] = jsonObject.getString("Lng");
                    Log.d(tag, "Name ==> " + i + " == " + codeStrings[i]);
                    Log.d(tag, "Name ==> " + i + " == " + nameStrings[i]);
                    Log.d(tag, "Tel ==> " + i + " == " + genderStrings[i]);

                    TextView textView = (TextView) findViewById(R.id.textView3);
                    textView.setText(codeStrings[i]);
                    TextView textView2 = (TextView) findViewById(R.id.textView5);
                    textView2.setText(nameStrings[i]);
                    TextView textView3 = (TextView) findViewById(R.id.textView7);
                    textView3.setText(genderStrings[i]);

                }   // for


            } catch (Exception e) {
                e.printStackTrace();
            }

        }   // onPost

    }   // MySynJSON class

}

