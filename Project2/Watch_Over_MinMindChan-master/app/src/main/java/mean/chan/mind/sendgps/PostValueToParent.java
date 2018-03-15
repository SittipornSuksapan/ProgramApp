package mean.chan.mind.sendgps;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;

import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

/**
 * Created by MindBU on 12/3/2560.
 */

public class PostValueToParent extends AsyncTask<Void, Void, String>{
    private Context context;
    private static final String urlPHP = "http://androidthai.in.th/dom/addParentMind.php";
    private String nameString,userString,passwordString,genderString;

    public PostValueToParent(Context context,
                             String nameString,
                             String userString,
                             String passwordString,
                             String genderString) {
        this.context = context;
        this.nameString = nameString;
        this.userString = userString;
        this.passwordString = passwordString;
        this.genderString = genderString;
    }


    @Override
    protected String doInBackground(Void... params) {

        try {
            OkHttpClient okHttpClient = new OkHttpClient();
            RequestBody requestBody = new FormEncodingBuilder()
                    .add("isAdd","true")
                    .add("Name",nameString)
                    .add("User",userString)
                    .add("Password",passwordString)
                    .add("Gender",genderString)
                    .build();
            Request.Builder builder = new Request.Builder();
            Request request = builder.url(urlPHP).post(requestBody).build();
            Response response = okHttpClient.newCall(request).execute();
            return response.body().string();

        }catch (Exception e){
            Log.d("12MarchV1", "e doIn ==>" + e.toString());
            return null;
        }


    }
}//Main class
