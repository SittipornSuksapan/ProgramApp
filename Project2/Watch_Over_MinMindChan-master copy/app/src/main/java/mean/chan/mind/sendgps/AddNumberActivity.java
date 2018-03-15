package mean.chan.mind.sendgps;


import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

import java.io.IOException;



public class AddNumberActivity extends AppCompatActivity {

    private EditText nameEditText, telEditText;
    private String[] loginStrings; // เพิ่ม id ผู้ปกครอง

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_number);

        //Bind widget
        bindWidget();


        //ปุ่มแบล็คกลับ
        backController();

        //Get Value from Intent
        getValueFromIntent();



    } //Main method


    // เพิ่ม id ผู้ปกครอง
    private void getValueFromIntent() {


        loginStrings = getIntent().getStringArrayExtra("Login");
        String tag = "17JulyV1";
        Log.d(tag, "ID_parent ==>" + loginStrings);

    }


    public void clickSaveData(View view) {

        String strName = nameEditText.getText().toString().trim();
        String strTel = telEditText.getText().toString().trim();

        if (strName.equals("")) {
            Toast.makeText(this, "กรุณากรอกชื่อ",
                    Toast.LENGTH_SHORT).show();

        }else if (strTel.equals("")) {
            Toast.makeText(this, "กรุณากรอกเบอร์โทร",
                    Toast.LENGTH_SHORT).show();
        }else {
            updateValueToServer(strName,strTel,loginStrings);
           Toast.makeText(this, "บันทึกสำเร็จ",
                    Toast.LENGTH_SHORT).show();
            startActivity(new Intent(AddNumberActivity.this, NumberActivity.class));
        }

    } //clickSaveData

    private void updateValueToServer(String strName, String strTel, String loginStrings[]) {


        OkHttpClient okHttpClient = new OkHttpClient();
        RequestBody requestBody = new FormEncodingBuilder()
                .add("isAdd", "true")
                .add("id_Parent", loginStrings[0])
                .add("Name", strName)
                .add("Tel", strTel)
                .build();
        Request.Builder builder = new Request.Builder();
        Request request = builder.url("http://androidthai.in.th/dom/addTel.php").post(requestBody).build();
        Call call = okHttpClient.newCall(request);
        call.enqueue(new Callback() {
            @Override
            public void onFailure(Request request, IOException e) {

            }

            @Override
            public void onResponse(Response response) throws IOException {
                finish();
            }
        });

    }//Update Value

    private void bindWidget() {

        nameEditText = (EditText) findViewById(R.id.edtName);
        telEditText = (EditText) findViewById(R.id.edtTel);

    }

    private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }
}
