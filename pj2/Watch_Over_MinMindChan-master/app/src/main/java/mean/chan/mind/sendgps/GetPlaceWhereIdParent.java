package mean.chan.mind.sendgps;


import android.content.Context;
import android.os.AsyncTask;

import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

public class GetPlaceWhereIdParent extends AsyncTask<String, Void, String> {
    private Context context;
    private static final String urlPHP = "http://androidthai.in.th/dom/getChildWhereIdParentAndLat.php";

    public GetPlaceWhereIdParent(Context context) {
        this.context = context;
    }

    @Override
    protected String doInBackground(String... strings) {

        try {

            OkHttpClient okHttpClient = new OkHttpClient();
            RequestBody requestBody = new FormEncodingBuilder()
                    .add("isAdd", "true")
                    .add("id_Parent", strings[0])
                    .build();
            Request.Builder builder = new Request.Builder();
            Request request = builder.url("http://androidthai.in.th/dom/getPlate.php").post(requestBody).build();
            Response response = okHttpClient.newCall(request).execute();
            return response.body().string();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }


    }
}
