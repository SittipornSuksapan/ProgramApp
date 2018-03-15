package com.example.fonnatrada.mycalories;


import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import caloriefood.projectandroid.com.caloriefood.R;

/**
 * @author Adil Soomro
 *
 */
public class Detail_ extends AppCompatActivity {
    DatabaseRegister register;
    ImageView imgbmi=null;
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Singleton a = Singleton.getInstance();
        setContentView(R.layout.activity_list_detail_1);
        register=new DatabaseRegister(this);


        double BMI = Double.parseDouble(register.SelectAllData().get(0).get("col1"));
        double BMR = Double.parseDouble(register.SelectAllData().get(0).get("col8"));
        ImageView imgbmi = (ImageView)findViewById(R.id.imgbmi);
        TextView listViewFood1 = (TextView)findViewById(R.id.listViewFood1);
        listViewFood1.setText("ผลคำนวนค่า BMI  = "+register.SelectAllData().get(0).get("col1"));

        TextView listViewFood2 = (TextView)findViewById(R.id.listViewFood2);
        listViewFood2.setText("ผลคำนวนค่า BMI  = "+register.SelectAllData().get(0).get("col1") +" \r\nสัดส่วนอยู่ในเกณฑ์  = "+register.SelectAllData().get(0).get("col9"));


        TextView listViewFood3 = (TextView)findViewById(R.id.listViewFood3);
        listViewFood3.setText("ค่าแคลอรี่ที่ควรได้รับต่อวัน (BMR) = "+register.SelectAllData().get(0).get("col8"));

        TextView listViewFood4 = (TextView) findViewById(R.id.listViewFood4);
        if (BMI <= 18.50) {
            imgbmi.setImageResource(R.drawable.bmione1);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI ต่ำกว่าเกณฑ์ ค่า BMR จะทำการบวก 300");

        }
        else if (BMI > 18.5 && BMI <= 22.9) {
            imgbmi.setImageResource(R.drawable.bmione2);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI ปกติ ค่า BMR ยังแนะนำเท่าเดิม");
        }
        else if (BMI > 23 && BMI <= 24.9) {
            imgbmi.setImageResource(R.drawable.bmione3);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI สูงกว่าเกณฑ์ ค่า BMR จะทำการลบ 300");
        }
        else if (BMI > 25 && BMI <= 29.9) {
            imgbmi.setImageResource(R.drawable.bmione4);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI สูงกว่าเกณฑ์ ค่า BMR จะทำการลบ 300");
        }
        else if (BMI > 30 && BMI <= 39.9) {
            imgbmi.setImageResource(R.drawable.bmione5);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI สูงกว่าเกณฑ์ ค่า BMR จะทำการลบ 300");
        }
        else if (BMI > 39.9) {
            imgbmi.setImageResource(R.drawable.bmione5);
            TextView t = (TextView)findViewById(R.id.t);
            t.setText("เนื่องจากค่า BMI สูงกว่าเกณฑ์ ค่า BMR จะทำการลบ 300");
        }
        //TODO: Calculate BMI Here
        if (BMI < 18.50) {
            BMR = BMR + 300;
            a.setRecommendedBMR(BMR);
        }
        if (BMI > 23) {
            BMR = BMR - 300;
            a.setRecommendedBMR(BMR);
        } else {
            a.setRecommendedBMR(BMR);
        }
        Toast.makeText(getApplicationContext(),
                a.getRecommendedBMR() + "",
                Toast.LENGTH_SHORT)
                .show();
        listViewFood4.setText("ค่าแคลอรี่ที่แอพพลิเคชันแนะนำ (BMR) =" + a.getRecommendedBMR());

        Button button = (Button) findViewById(R.id.txtPublisher);

        button.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub
                Intent newActivity = new Intent(Detail_.this, TabHostMENU.class);
                newActivity.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(newActivity);
            }
        });


    }

    @Override
    protected void onStart() {
        super.onStart();

    }




    @Override
    public void onBackPressed() {
        super.onBackPressed();

    }
}