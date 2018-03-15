package com.example.fonnatrada.mycalories.Model;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import caloriefood.projectandroid.com.caloriefood.R;

public class AddFoodActivity extends AppCompatActivity implements View.OnClickListener{
    EditText txtname,txtnum=null;
    Button btnadd=null;
    String android_id="";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_food);
        txtname=(EditText)findViewById(R.id.txtname);
        txtnum=(EditText)findViewById(R.id.txtnum);
        btnadd=(Button)findViewById(R.id.btnadd);
btnadd.setOnClickListener(this);
          android_id = Settings.Secure.getString(getContentResolver(),
                Settings.Secure.ANDROID_ID);
    }
    String re="";
   public static String name="";
    public static String num="";
    public static String tab="";
    private Runnable myThreadAddFood = new Runnable(){
        public void run() {
            try {
                re="error";

                    String data = "name=" + enc(name) + "&num=" + num+"&deviceid="+android_id;

                    re = sendPostData(data.getBytes("UTF-8"), "http://www.clickforbuild.com/calorie/addrestaurant.php");



            } catch (Exception err) {
                err.printStackTrace();
            }
            myHandleAddFood.sendMessage(myHandleAddFood.obtainMessage());
        }
    };
    Handler myHandleAddFood = new Handler(){
        @Override
        public void handleMessage(android.os.Message msg) {
            Toast.makeText(AddFoodActivity.this,re,Toast.LENGTH_SHORT).show();
            txtname.setText("");
            txtnum.setText("");
        }
    };
    @Override
    public void onClick(View v) {
        if(v==btnadd)
        {
            name=txtname.getText().toString();
            num=txtnum.getText().toString();
            if(name.length()<1 || num.length() <1)
            {
                Toast.makeText(this,"กรุณากรอกข้อมูลให้ครบ",Toast.LENGTH_SHORT).show();
            }
            else {
                Thread t = new Thread(myThreadAddFood);
                t.start();
            }

        }
    }
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ((keyCode == KeyEvent.KEYCODE_BACK)) {
            System.out.println("BACK");
            Intent intent=new Intent();
            Bundle data=new Bundle();
            data.putString("name",name);
            data.putString("num",num);
            intent.putExtras(data);
            setResult(RESULT_OK, intent);
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }
    @Override
    public void onBackPressed() {
        super.onBackPressed();
        Intent intent=new Intent();
        Bundle data=new Bundle();
        data.putString("name",name);
        data.putString("num",num);
        intent.putExtras(data);
        setResult(RESULT_OK, intent);
        finish();
    }
    public static String sendPostData(byte[] data,String strurl) throws IOException,Exception
    {
        String re="";

        URL url = new URL(strurl);
        URLConnection conn = url.openConnection();
        conn.setDoOutput(true);
        OutputStream os=null;
        InputStream is=null;
        conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded");    // set content type
        os=conn.getOutputStream() ;     // open output stream
        os.write(data);                 // write data
        os.flush();                     // flush for send data
        os.close();                     // close output stream
        is=conn.getInputStream() ;     // opent input strea for read return data from server
        ByteArrayOutputStream bos=new ByteArrayOutputStream();      // decare bos buffer
        byte[] bread=new byte[100];
        int c;
        while ((c = is.read(bread)) != -1) {
            bos.write(bread, 0, c);

        }
        bos.flush();        // flush bos
        byte b[]=bos.toByteArray();
        re=new String(b, "UTF-8"); // convert byte to string
        bos.close();
        is.close();         // close input stream
        os.close();
        // close connection

        return re;  // return data
    }
    public static String enc(String text)
    {
        if(text=="") return text;
        String re=text;
        try {
            re= URLEncoder.encode(text, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return re;
    }
}
