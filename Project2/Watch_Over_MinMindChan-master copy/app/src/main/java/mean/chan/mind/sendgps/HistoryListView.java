package mean.chan.mind.sendgps;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Objects;

public class HistoryListView extends AppCompatActivity {

    private ListView listView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_history_list_view);

        listView = (ListView) findViewById(R.id.listView2);
        ConnectedHistory connectedHistory = new ConnectedHistory();
        connectedHistory.execute();
    } //Main Method

    public class ConnectedHistory extends AsyncTask<Void, Void, String> {

        @Override
        protected String doInBackground(Void... params) {

            try {

                OkHttpClient okHttpClient = new OkHttpClient();
                Request.Builder builder = new Request.Builder();
                Request request = builder.url("http://swiftcodingthai.com/watch/php_get_history.php").build();
                Response response = okHttpClient.newCall(request).execute();
                return  response.body().string();
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }

        } //doInBack

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            try {

                JSONArray jsonArray = new JSONArray(s);

                String[] allTimeStrings = new String[jsonArray.length()];
                String[] allDateStrings = new String[jsonArray.length()];

                ArrayList<String> stringArrayList = new ArrayList<String>();

                for (int i = 0; i < jsonArray.length(); i++) {
                    JSONObject jsonObject = jsonArray.getJSONObject(i);
                    allTimeStrings[i] = jsonObject.getString("Date");
                    String[] resultStrings = allTimeStrings[i].split("");
                    allDateStrings[i] = resultStrings[0];
                    stringArrayList.add(allDateStrings[i]);

                    Log.d("24April", "Date(" + i + ") =" + allDateStrings[i]);

                } //for

                Objects[] objects = (Objects[]) stringArrayList.toArray();
                for (Objects objects1 : objects ){
                    if (stringArrayList.indexOf(objects1) != stringArrayList.lastIndexOf(objects1)) {
                        stringArrayList.remove(stringArrayList.lastIndexOf(objects1));

                    }//if
                }// for

                ArrayAdapter<String> stringArrayAdapter = new ArrayAdapter<String>(HistoryListView.this,
                        android.R.layout.simple_list_item_1, stringArrayList);
                listView.setAdapter(stringArrayAdapter);

            } catch (Exception e) {
                e.printStackTrace();
            }
        } //onPost
    } //connectedClass
} //Main Class
