package mean.chan.mind.sendgps;

import android.content.Context;
import android.os.AsyncTask;

import com.google.android.gms.common.api.Response;
import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;

/**
 * Created by sittipornsuksapan on 7/12/2017 AD.
 */

public class PostChildToServer extends AsyncTask<String,Void, String>{
    private static final String urlPHP = "http://androidthai.in.th/dom/addDataChan.php";
    private Context context;

    public PostChildToServer(Context context) {
        this.context = context;
    }

    @Override
    protected String doInBackground(String... strings) {

        try {

            OkHttpClient okHttpClient = new OkHttpClient();
            RequestBody requestBody = new FormEncodingBuilder()
                    .add("isAdd", "true")
                    .add("Code", strings[0])
                    .add("Name", strings[1])
                    .add("Gender", strings[2])
                    .add("id_Parent", strings[3])
                    .build();
            Request.Builder builder = new Request.Builder();
            Request request = builder.url(urlPHP).post(requestBody).build();
            com.squareup.okhttp.Response response = okHttpClient.newCall(request).execute();
            return response.body().string();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
} //main class
