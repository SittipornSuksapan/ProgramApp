package mean.chan.mind.sendgps;

import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

public class LoginActivity extends AppCompatActivity implements View.OnClickListener {

    private String urlJSONString = "http://androidthai.in.th/dom/getParent.php";
    private String urlJSONString2 = "http://androidthai.in.th/dom/getChildAll.php";
    private EditText userEditText, passwordEditText;
    private Button button;
    private TextView forgotTextView, createAccountTextView;
    private String userString, passwordString;
    private String[]  loginStringsCheck;

    private static final String PREF_NAME = "watch";
    SharedPreferences settings;
    SharedPreferences.Editor editor;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);



        settings = getSharedPreferences(PREF_NAME, 0);

        // Check flag login already or not
        if (settings.getString("Login0", "").equals("")) {

        } else {


            String[] loginStrings ={settings.getString("Login0", ""),settings.getString("Login1", ""),settings.getString("Login2", ""),settings.getString("Login3", ""),settings.getString("Login4", "")};
            // Go to next page if you login already
            Intent intent = new Intent(LoginActivity.this, MyServiceActivity.class);
            intent.putExtra("Login", loginStrings);
            startActivity(intent);
            finish();
        }
        //Initial View
        initialView();

        //Controller
        controller();

    }   // Main Method

    private void controller() {
        button.setOnClickListener(this);
        //forgotTextView.setOnClickListener(this);
        createAccountTextView.setOnClickListener(this);
    }

    private void initialView() {
        userEditText = (EditText) findViewById(R.id.edtUser);
        passwordEditText = (EditText) findViewById(R.id.edtPassword);
        button = (Button) findViewById(R.id.btnLogin);
        //forgotTextView = (TextView) findViewById(R.id.txtForgot);
        createAccountTextView = (TextView) findViewById(R.id.txtCreateAccount);
    }

    @Override
    public void onClick(View view) {

        //Create Account
        if (view == createAccountTextView) {
            Intent intent = new Intent(LoginActivity.this, CreateAccountActivity.class);
            startActivity(intent);
        }

        //For Login
        if (view == button) {
            checkUserAndPass();
        }

    }   // onClick


    public void checkUserAndPass() {

        //Get Value from Edit Text
        userString = userEditText.getText().toString().trim();
        passwordString = passwordEditText.getText().toString().trim();

        MyAlert myAlert = new MyAlert(LoginActivity.this);

        //Check Space
        if (userString.equals("") || passwordString.equals("")) {
            myAlert.myDialog("Have Space", "Please Fill All Every Blank");
        } else {
            synUserAndPass();
        }

    }



    private void synUserAndPass() {

        try {

            MyAlert myAlert = new MyAlert(LoginActivity.this);
            GetAllData getAllData = new GetAllData(LoginActivity.this);
            getAllData.execute(urlJSONString);

            String strJSON = getAllData.get();
            Log.d("4JuneV1", "JSON ==> " + strJSON);
            String[] columnStrings = new String[]{"id", "Name", "User", "Password", "Gender"};
            String[] loginStrings = new String[columnStrings.length];

            boolean b = true;
            JSONArray jsonArray = new JSONArray(strJSON);

            for (int i = 0; i < jsonArray.length(); i += 1) {

                JSONObject jsonObject = jsonArray.getJSONObject(i);

                if (userString.equals(jsonObject.getString("User"))) {
                    b = false;
                    for (int i1 = 0; i1 < columnStrings.length; i1 += 1) {
                        loginStrings[i1] = jsonObject.getString(columnStrings[i1]);
                        Log.d("4JuneV1", "login(" + i1 + ") ==> " + loginStrings[i1]);
                    }
                }
            }

            if (b) {
                myAlert.myDialog("User False", "No This User in my Database");
            } else if (passwordString.equals(loginStrings[3])) {

               // loginStringsCheck = loginStrings;
               // checkIdParent();


                // Add flag to SharedPref
                editor = settings.edit();
                editor.putString("Login0", loginStrings[0]);
                editor.putString("Login1", loginStrings[1]);
                editor.putString("Login2", loginStrings[2]);
                editor.putString("Login3", loginStrings[3]);
                editor.putString("Login4", loginStrings[4]);
                editor.commit();


                Toast.makeText(LoginActivity.this, "Welcome " + loginStrings[1],
                                Toast.LENGTH_SHORT).show();

                        Intent intent = new Intent(LoginActivity.this, MyServiceActivity.class);
                        intent.putExtra("Login", loginStrings);
                        startActivity(intent);
                        finish();


            }else {
                myAlert.myDialog("Password False", "Please Try Again Password False");
            }

        } catch (Exception e) {
            Log.d("4JuneV1", "e check ==> " + e.toString());
        }
    }




}   // Main Class
