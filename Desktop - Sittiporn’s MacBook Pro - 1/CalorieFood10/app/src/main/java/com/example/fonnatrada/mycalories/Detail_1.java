package com.example.fonnatrada.mycalories;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.Timer;
import java.util.TimerTask;

import caloriefood.projectandroid.com.caloriefood.R;

/**
 * @author Adil Soomro
 *
 */
public class Detail_1 extends Activity {
    DatabaseRegister register;
    TextView listViewFood1,listViewFood2,listViewFood3,listViewFood4;
    ImageView imgbmi=null;
    public static boolean istabselected=false;
    Timer timer=null;

    class RefreshTask extends TimerTask {
        public void run()
        {
            myHandleAddFood.sendMessage(myHandleAddFood.obtainMessage());
        }
    }
    Handler myHandleAddFood = new Handler(){
        @Override
        public void handleMessage(android.os.Message msg) {
            if(istabselected==true ) {
                SETTExt();
                istabselected = false;
            }
        }
    };
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.detail_2);
        register=new DatabaseRegister(this);

        imgbmi = (ImageView)findViewById(R.id.imgbmi);

        listViewFood1 = (TextView)findViewById(R.id.listViewFood1);


        listViewFood2 = (TextView)findViewById(R.id.listViewFood2);



        listViewFood3 = (TextView)findViewById(R.id.listViewFood3);


        listViewFood4 = (TextView)findViewById(R.id.listViewFood4);





        Button button = (Button) findViewById(R.id.txtPublisher);
        button.setVisibility(View.GONE);
        button.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub
                Intent newActivity = new Intent(Detail_1.this,TabHostMENU.class);
                newActivity.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(newActivity);
            }
        });
        timer=new Timer();
        timer.schedule(new RefreshTask(),2000,500);

    }

    @Override
    protected void onStart() {
        super.onStart();
        SETTExt();
    }
    @Override
    protected void onResume() {
        super.onResume();
        SETTExt();

    }
    private void SETTExt() {
        double BMI = Double.parseDouble(register.SelectAllData().get(0).get("col1"));
        double BMR = Double.parseDouble(register.SelectAllData().get(0).get("col8"));
        listViewFood1.setText("ผลคำนวนค่า BMI  = " + register.SelectAllData().get(0).get("col1"));
        listViewFood2.setText("ผลคำนวนค่า BMI  = " + register.SelectAllData().get(0).get("col1") +" \r\nสัดส่วนอยู่ในเกณฑ์  = "+register.SelectAllData().get(0).get("col9"));
        listViewFood3.setText("ค่าแคลอรี่ที่ควรได้รับต่อวัน (BMR) = " + register.SelectAllData().get(0).get("col8"));
        if (BMI < 18.50)
            BMR = BMR + 300;
        if (BMI > 23)
            BMR = BMR - 300;
        else {
            //
        }


        if (BMI < 18.50) {
            imgbmi.setImageResource(R.drawable.bmione1);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI ต่ำกว่าเกณฑ์ ค่า BMR จะทำการบวก 300");
        }
        else if ((BMI >= 18.5) && (BMI <22.9)) {
            imgbmi.setImageResource(R.drawable.bmione2);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI ปกติ ค่า BMR ยังแนะนำเท่าเดิม");
        }
        else if ((BMI > 22.9) && (BMI <24.9)) {
            imgbmi.setImageResource(R.drawable.bmione3);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI สูงกว่าเกณฑ์ ค่า BMR จะทำการลบ 300");
        }
        else if ((BMI > 24.9) && (BMI <29.9)) {
            imgbmi.setImageResource(R.drawable.bmione4);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI สูงกว่าเกณฑ์ ค่า BMR จะทำการลบ 300");
        }
        else if (BMI > 29.9) {
            imgbmi.setImageResource(R.drawable.bmione5);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI สูงกว่าเกณฑ์ ค่า BMR จะทำการลบ 300");
        }
        listViewFood4.setText("ค่าแคลอรี่ที่แอปพลิเคชันแนะนำ (BMR) =" + BMR);
    }


    @Override
    public void onBackPressed() {
        super.onBackPressed();

    }
}

