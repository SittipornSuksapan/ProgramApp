package mind.chan.mean.watchchild;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.AsyncTask;

import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

/**
 * Created by masterung on 7/12/2017 AD.
 */

public class EditLocation extends AsyncTask<String, Void, String> {

    private Context context;
    private static final String urlPHP = "http://androidthai.in.th/dom/editLocationWhereCode.php";

    public EditLocation(Context context) {
        this.context = context;
    }

    @Override
    protected String doInBackground(String... strings) {

        try {

            OkHttpClient okHttpClient = new OkHttpClient();
            RequestBody requestBody = new FormEncodingBuilder()
                    .add("isAdd", "true")
                    .add("Code", strings[0])
                    .add("Lat", strings[1])
                    .add("Lng", strings[2])
                    .build();
            Request.Builder builder = new Request.Builder();
            Request request = builder.url(urlPHP).post(requestBody).build();
            Response response = okHttpClient.newCall(request).execute();
            return response.body().string();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }


    }
}
