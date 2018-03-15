package mean.chan.mind.sendgps;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import android.support.annotation.IdRes;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Toast;

public class AddChildActivity extends AppCompatActivity {
    private EditText codeEditText, nameEditText;
    private ImageView pictureImageView;
    private RadioGroup radioGroup;
    private String codeString, nameString, genderString = "Male";
    private String[] loginStrings;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_child);

        //Get Value from Intent
        getValueFromIntent();


        //Initial view
        initialView();

        //RadioGroup Controller
        radioGroupController();

        //Back
        backController();

        //Camera Controller
        cameraController();

        //Save controller
        //saveController();

       inFo();


    }  //Main Method

    private void radioGroupController() {

        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup radioGroup, @IdRes int i) {
                switch (i) {
                    case R.id.radMale:
                        genderString = "Male";
                        break;
                    case R.id.radFemale:
                        genderString = "Female";
                        break;
                }
            }
        });

    }

    private void getValueFromIntent() {
        loginStrings = getIntent().getStringArrayExtra("Login");
    }

    private void initialView() {
        //pictureImageView = (ImageView) findViewById(R.id.imPicture);
        codeEditText = (EditText) findViewById(R.id.edtCode);
        nameEditText = (EditText) findViewById(R.id.edtName);
        radioGroup = (RadioGroup) findViewById(R.id.ragGender);

    }

    public void saveController(View view) {

                //get value from edit text
                codeString = codeEditText.getText().toString().trim();
                nameString = nameEditText.getText().toString().trim();

                //check space
                if (codeString.equals("") || nameString.equals("")) {
                    //have space
                    MyAlert myAlert = new MyAlert(AddChildActivity.this);
                    myAlert.myDialog("Have space", "Please fill all");

                } else {
                    //no space
                    uploadValueToServer();

                }



    }

    private void uploadValueToServer() {


        String tag = "12JulyV1";
        Log.d(tag, "Code ==>" + codeString);
        Log.d(tag, "Name ==>" + nameString);
        Log.d(tag, "Gender ==>" + genderString);
        Log.d(tag, "ID_parent ==>" + loginStrings[0]);

        try {

            PostChildToServer postChildToServer = new PostChildToServer(AddChildActivity.this);
            postChildToServer.execute(codeString,nameString,genderString,loginStrings[0]);
            String strResult = postChildToServer.get();
            Log.d(tag, "Result ==>" + strResult);

            if (Boolean.parseBoolean(strResult)) {
                finish();
            } else {
                Toast.makeText(AddChildActivity.this,"Error Please Again",
                        Toast.LENGTH_SHORT).show();
            }


        } catch (Exception e) {

            Log.d(tag, "e upload ==>" + e.toString());
        }


    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (resultCode == RESULT_OK) {

            Uri uri = data.getData();
            try {

                Bitmap bitmap = BitmapFactory
                        .decodeStream(getContentResolver().openInputStream(uri));
                pictureImageView.setImageBitmap(bitmap);

            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    } //onActivity

    private void inFo() {

        String tag = "INFO";
        Log.d(tag, "SUCCESS");

        ImageView infoImageView = (ImageView) findViewById(R.id.imvInfo);
        infoImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(AddChildActivity.this, InfoChildActivity.class);
                startActivity(intent);
            }
        });
    }

    private void cameraController() {

        ImageView cameraImageView = (ImageView) findViewById(R.id.imvCamera);

        cameraImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
                startActivityForResult(intent, 0);

            }
        });
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
} //Main Class
