package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import caloriefood.projectandroid.com.caloriefood.R;

public class MainActivity extends Activity {
    DatabaseFitnessActicity  fitnessActicity;
//    ImageView mDialogCustom;
//    public static EditText weight;
//    public static String weight1 = "";
//register
//    private String ShowBMR;
//    private TextView txtBMR;
    ImageView imageGender;
    DatabaseRegister register;
    private DatabaseFood foodData;
    int image_profile[];
    int image_profile_M[]={R.drawable.untitled_1_fat,R.drawable.untitled_1_low,R.drawable.untitled_s1};
    int image_profile_F[]={R.drawable.untitled_2_fat, R.drawable.untitled_2_low,R.drawable.untitled_s2};
    TextView id_BMR,kcal;
    ArrayList<HashMap<String, String>> selectAllData;
    ArrayList<HashMap<String, String>> selectAllData_listdata;
    ArrayList<HashMap<String, String>> selectAllData_fitness;
    String[] selectdataCode;
    TextView text_over;
    TextView food_text1  ;
    TextView food_text2  ;
    TextView food_text3 ;
    TextView food_text4  ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_home);



        register=new DatabaseRegister(this);
        fitnessActicity=new DatabaseFitnessActicity(this);

        foodData=new DatabaseFood(this);
        id_BMR = (TextView) findViewById(R.id.BMR);
         kcal = (TextView) findViewById(R.id.kcal);
        text_over = (TextView) findViewById(R.id.text_over);

           food_text1 = (TextView) findViewById(R.id.food_text1);
           food_text2 = (TextView) findViewById(R.id.food_text2);
           food_text3 = (TextView) findViewById(R.id.food_text3);
           food_text4 = (TextView) findViewById(R.id.food_text4);


//       // id_profile.setImageResource();
        ImageView mDialogCustom = (ImageView) findViewById(R.id.imageMember);
        mDialogCustom.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

//                  Intent goMain = new Intent(MainActivity.this,Calories_TOTAL.class);
//                startActivity(goMain);

                Intent goMain = new Intent(MainActivity.this,TabHostADMIN.class);
                startActivity(goMain);

            }
        });



//        ImageView calendar = (ImageView) findViewById(R.id.imageCalendar);
//        calendar.setOnClickListener(new View.OnClickListener() {
//            public void onClick(View v) {
//                Intent goMain = new Intent(MainActivity.this,TabHostADMIN.class);
//                startActivity(goMain);
//            }
//        });

        ImageView addmenu1 = (ImageView) findViewById(R.id.addMenu1);
        addmenu1.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                File_Confixedata.check_food="1";
                Intent goMain = new Intent(MainActivity.this,Calories_FOOD.class);
                startActivity(goMain);
            }
        });

        ImageView addmenu2 = (ImageView) findViewById(R.id.addMenu2);
        addmenu2.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                File_Confixedata.check_food="2";
                Intent goMain = new Intent(MainActivity.this,Calories_FOOD.class);
                startActivity(goMain);
            }
        });

        ImageView addmenu3 = (ImageView) findViewById(R.id.addMenu3);
        addmenu3.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                File_Confixedata.check_food="3";
                Intent goMain = new Intent(MainActivity.this,Calories_FOOD.class);
                startActivity(goMain);
            }
        });

        ImageView addmenu4 = (ImageView) findViewById(R.id.addMenu4);
        addmenu4.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent goMain = new Intent(MainActivity.this,Calories_Fitness.class);
                startActivity(goMain);
            }
        });

        ImageView imagelistmenu = (ImageView) findViewById(R.id.imageListMenu);
        imagelistmenu.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent goMain = new Intent(MainActivity.this,TabHostAll.class);
                startActivity(goMain);
            }
        });

         imageGender = (ImageView) findViewById(R.id.imageGender);
        imageGender.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

                Intent goMain = new Intent(MainActivity.this,EditProFile.class);
                startActivity(goMain);

            }
        });



    }

    @Override
    protected void onStart() {
        super.onStart();
        selectAllData=register.SelectAllData();

        for(int i=0;i<selectAllData.size();i++){
            if( i==0){
                File_Confixedata.user_accout_id=  selectAllData.get(i).get("Code");
            }
        }

          selectdataCode=register.SelectDataCode(File_Confixedata.user_accout_id);

        Setdataandroid();



    }


    @Override
    public void onBackPressed() {
        AlertDialog.Builder twoButton = new AlertDialog.Builder(this);
        twoButton.setTitle("Exit");

        twoButton.setCancelable(true);
        twoButton.setMessage("Do you want to exit?");
        twoButton.setPositiveButton("OK",
                new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // TODO Auto-generated method stub
                        Intent intent = new Intent(Intent.ACTION_MAIN);
                        intent.addCategory(Intent.CATEGORY_HOME);
                        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                        startActivity(intent);
                         
                    }
                });
        twoButton.setNegativeButton("NO",
                new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // TODO Auto-generated method stub
                        dialog.dismiss();
                    }
                });
        twoButton.show();
    }

    private void Setdataandroid() {
        // TODO Auto-generated method stub
        Calendar cal_Tomorrow= Calendar.getInstance();
        SimpleDateFormat formats = new SimpleDateFormat("yyyy/MM/dd, EEEE");
        String strdate=formats.format(cal_Tomorrow.getTime());


        selectAllData_listdata= foodData.SelectAllData();

        selectAllData_fitness=fitnessActicity.SelectAllData();


        double value =0;
        double valueFood =0;
        String sdFood=" "; //valuetotal
        int countNumber1Food=0;
        for(int i=0;i<selectAllData_listdata.size();i++){
            if(selectAllData_listdata.get(i).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_listdata.get(i).get("col7").equals(strdate)){
                valueFood= valueFood+ Double.parseDouble(selectAllData_listdata.get(i).get("col4"));
                sdFood=selectAllData_listdata.get(i).get("col8");

                countNumber1Food++;
            }

        }

        double valuefitness =0;
        String sdfitness=" "; //valuetotal
        int countNumber1fitness=0;
        for(int i=0;i<selectAllData_fitness.size();i++){
            if(selectAllData_fitness.get(i).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_fitness.get(i).get("col7").equals(strdate)){
                valuefitness= valuefitness+ Double.parseDouble(selectAllData_fitness.get(i).get("col4"));
                sdfitness=selectAllData_fitness.get(i).get("col8");

                countNumber1fitness++;
            }

        }



        if(countNumber1Food>0 ){
            double total = Double.parseDouble(sdFood);

            double num_count=(valueFood/total)*100;
            double  format_number = num_count; //%
            int decimalPlaces = 2;
            BigDecimal bd = new BigDecimal(num_count);
            // setScale is immutable
            bd = bd.setScale(decimalPlaces, BigDecimal.ROUND_HALF_UP);
            format_number = bd.doubleValue();

//            TextView textdetail_data = (TextView) findViewById(R.id.textdetail_data);
        //    textdetail_data.setText(SelectDataCodename[3]+" กินไป : "+value+" kcal"+"\n"+format_number+" %"+" จากที่ต้องใช้ต่อวัน  :"+sd+" kcal"+"\n"+"ข้อมูลวันที่ :"+date);
            value= valueFood- valuefitness;


            int pot=0;


            if(value > Double.parseDouble(selectdataCode[8])  ){
                pot=0;
                Double countd_=value- Double.parseDouble(selectdataCode[8]);
                int countd_Places = 1;
                BigDecimal bd_s = new BigDecimal(countd_);
                // setScale is immutable
                bd_s = bd_s.setScale(decimalPlaces, BigDecimal.ROUND_HALF_UP);
                countd_ = bd_s.doubleValue();
                kcal.setText(""+value+" Kcal ");
                text_over.setText( "มากเกินไป "+countd_+" Kcal ");
            }else{
                pot=1;
                Double countd_= Double.parseDouble(selectdataCode[8])-value;

                int countd_Places = 2;
                 BigDecimal bd_s = new BigDecimal(countd_);
//                // setScale is immutable
               bd_s = bd_s.setScale(decimalPlaces, BigDecimal.ROUND_HALF_UP);
                countd_ = bd_s.doubleValue();


                kcal.setText(""+value+" Kcal ");
                text_over.setText( "ขาดอีก "+countd_+" Kcal ");
            }


            if(selectdataCode[7].equals("ผู้ชาย")){
                Log.d("ผู้ชาย",""+selectdataCode[7]);
                image_profile=image_profile_M;
            } else if(selectdataCode[7].equals("ผู้หญิง")){
                Log.d("ผู้หญิง",""+selectdataCode[7]);
                image_profile=image_profile_F;
            }else{
                image_profile=image_profile_F;
            }

            imageGender.setImageResource(image_profile[pot]);
            id_BMR.setText("พลังงานต่อวัน  "+selectdataCode[8]+"  Kcal");



           if(countNumber1fitness>0){
               String worm = getString(R.string.worm)+"\n(เพิ่มแล้ว)";
               food_text4.setText(worm);
           } else{
               String worm = getString(R.string.worm) ;
               food_text4.setText(worm);
           }

            boolean check_false_food1=false;
            boolean check_false_food2=false;
            boolean check_false_food3=false;


            for(int i=0;i<selectAllData_listdata.size();i++){
                if(selectAllData_listdata.get(i).get("col9").equals( "1")&&selectAllData_listdata.get(i).get("col7").equals( strdate)){
                    check_false_food1=true;
                }else if(selectAllData_listdata.get(i).get("col9").equals( "2")
                        &&selectAllData_listdata.get(i).get("col7").equals( strdate)){
                    check_false_food2=true;
                }else if(selectAllData_listdata.get(i).get("col9").equals( "3")
                        &&selectAllData_listdata.get(i).get("col7").equals( strdate)){
                    check_false_food3=true;

                }else{

                }
            }

            if(check_false_food1){
                String worm = getString(R.string.food)+"\n(เพิ่มแล้ว)";
                food_text1.setText(worm);
            } else{
                String worm = getString(R.string.food) ;
                food_text1.setText(worm);
            }
            if(check_false_food2){
                String worm = getString(R.string.food1)+"\n(เพิ่มแล้ว)";
                food_text2.setText(worm);
            } else{
                String worm = getString(R.string.food1) ;
                food_text2.setText(worm);
            }
            if(check_false_food3){
                String worm = getString(R.string.food2)+"\n(เพิ่มแล้ว)";
                food_text3.setText(worm);
            } else{
                String worm = getString(R.string.food2) ;
                food_text3.setText(worm);
            }

        }else if(countNumber1fitness>0){

          double valuefitness_cout= Double.parseDouble(selectdataCode[8]) + valuefitness ;


            int decimalPlaces = 2;


            BigDecimal bd_s = new BigDecimal(valuefitness);
            // setScale is immutable
            bd_s = bd_s.setScale(decimalPlaces, BigDecimal.ROUND_HALF_UP);
            valuefitness = bd_s.doubleValue();



            kcal.setText("-"+valuefitness+" Kcal ");


             text_over.setText( "ขาดอีก "+valuefitness_cout+" Kcal ");
            id_BMR.setText("พลังงานต่อวัน  "+selectdataCode[8]+"  Kcal");



            String string_food = getString(R.string.food);
            String food1 = getString(R.string.food1);
            String food2 = getString(R.string.food2);
            String worm = getString(R.string.worm)+"\n(เพิ่มแล้ว)";



            food_text1.setText(string_food);
            food_text2.setText(food1);
            food_text3.setText(food2);
            food_text4.setText(worm);

            int pot=2;



            Log.d("ผู้ชาย",""+selectdataCode[7]);
            if(selectdataCode[7].equals("ผู้ชาย")){
                image_profile=image_profile_M;
            }else    if(selectdataCode[7].equals("ผู้หญิง")){
                image_profile=image_profile_F;
            }
            else{
                image_profile=image_profile_F;
            }
            imageGender.setImageResource(image_profile[pot]);
        }else{
            int pot=2;
            kcal.setText("0" );


            Log.d("ผู้ชาย",""+selectdataCode[7]);
            if(selectdataCode[7].equals("ผู้ชาย")){
                image_profile=image_profile_M;
            }else    if(selectdataCode[7].equals("ผู้หญิง")){
                image_profile=image_profile_F;
            }
            else{
                image_profile=image_profile_F;
            }
           imageGender.setImageResource(image_profile[pot]);
            id_BMR.setText("พลังงานต่อวัน "+selectdataCode[8]+"  Kcal");
            text_over.setText( "ขาดอีก "+selectdataCode[8]+" Kcal ");


            String string_food = getString(R.string.food);
            String food1 = getString(R.string.food1);
            String food2 = getString(R.string.food2);
            String worm = getString(R.string.worm);



            food_text1.setText(string_food);
            food_text2.setText(food1);
            food_text3.setText(food2);
            food_text4.setText(worm);
        }

    }
}
