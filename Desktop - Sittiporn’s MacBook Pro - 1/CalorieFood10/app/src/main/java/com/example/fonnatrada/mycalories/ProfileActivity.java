package com.example.fonnatrada.mycalories;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.roomorama.caldroid.CaldroidFragment;
import com.roomorama.caldroid.CaldroidListener;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import caloriefood.projectandroid.com.caloriefood.R;

public class ProfileActivity extends AppCompatActivity {

    private RadioButton male, female;
    private Button btSave;
    private EditText etName, etHeight, etWeight;
    private TextView etAge;
    private Spinner spinner;
    private TextView Showresult;
    // result_BMR,result_BMI,
    Double bmrSS;
    String RGender;
    DatabaseRegister register;
    SimpleDateFormat formatter;
    private String EditHeight, EditWeight, EditAge, EditBMR;
    private CaldroidFragment caldroidFragment;
    private CaldroidFragment dialogCaldroidFragment;
    int date,month,year;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profile);

        register = new DatabaseRegister(this);
        ArrayList<HashMap<String, String>> selectAllData = register.SelectAllData();


        formatter = new SimpleDateFormat("yyyy");
        caldroidFragment = new CaldroidFragment();
        setCustomResourceForDates();

        // Setup caldroid fragment
        // **** If you want normal CaldroidFragment, use below line ****


//        SQLiteDatabase db = myDb.getWritableDatabase();
//
//        String test = "SELECT * FROM User;";
//        Cursor cu = db.rawQuery(test,null);
//        if (cu.moveToFirst()){
//            if (cu.getString(1) != null){

//            }
//        }
        Log.d("selectAllData", "" + selectAllData.size());
        if (selectAllData.size() > 0) {

            Intent newActivity = new Intent(ProfileActivity.this, TabHostMENU.class);
            newActivity.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(newActivity);
        }

        etName = (EditText) findViewById(R.id.etName);
        etHeight = (EditText) findViewById(R.id.etHight);
        etWeight = (EditText) findViewById(R.id.etWeight);
        etAge = (TextView) findViewById(R.id.etAge);
        spinner = (Spinner) findViewById(R.id.spinner);
        male = (RadioButton) findViewById(R.id.male);
        female = (RadioButton) findViewById(R.id.female);

//        Showresult = (TextView)findViewById(R.id.answer);
        //  result_BMR =(TextView)findViewById(R.id.BMR);
        // result_BMI = (TextView)findViewById(R.id.BMI);
        //final RadioButton RGender = (RadioButton) findViewById(R.id.rgGroup);

        List<String> list = new ArrayList<String>();
        list.add("ไม่ได้ออกกำลังกาย");
        list.add("ออกกำลังกายน้อยเล่นกีฬา 1-3 วัน/สัปดาห์");
        list.add("ออกกำลังกายปานกลางเล่นกีฬา 3-5 วัน/สัปดาห์ ");
        list.add("ออกกำลังกายหนักเล่นกีฬา 6-7 วัน /สัปดาห์ ");
        list.add("ออกกำลังกายเล่นกีฬาอย่างหนักทุกวัน");


        ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, list);
        dataAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(dataAdapter);


        // btnSave (Save)
        final Button save = (Button) findViewById(R.id.btRegister);
        save.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                // If Save Complete
                if (SaveUser()) {
                    // Open Form Main
                    vary();
                    showOneButton(String.valueOf(spinner.getSelectedItem()));


                }
            }


        });

        final Bundle state = savedInstanceState;
        final ImageView imageViewAge = (ImageView) findViewById(R.id.imageViewAge);
        imageViewAge.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
//                dialogCaldroidFragment = new CaldroidFragment();
//                dialogCaldroidFragment.setCaldroidListener(listener);
//
//                // If activity is recovered from rotation
//                final String dialogTag = "CALDROID_DIALOG_FRAGMENT";
//                if (state != null) {
//                    dialogCaldroidFragment.restoreDialogStatesFromKey(
//                            getSupportFragmentManager(), state,
//                            "DIALOG_CALDROID_SAVED_STATE", dialogTag);
//                    Bundle args = dialogCaldroidFragment.getArguments();
//                    if (args == null) {
//                        args = new Bundle();
//                        dialogCaldroidFragment.setArguments(args);
//                    }
//                } else {
//                    // Setup arguments
//                    Bundle bundle = new Bundle();
//                    // Setup dialogTitle
//                    dialogCaldroidFragment.setArguments(bundle);
//                }
//
//                dialogCaldroidFragment.show(getSupportFragmentManager(),
//                        dialogTag);
            }


        });

        etAge.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Calendar cal = Calendar.getInstance();
                date = cal.get(Calendar.DAY_OF_MONTH);
                month = cal.get(Calendar.MONTH);
                year = cal.get(Calendar.YEAR);

                DatePickerDialog dpd = new DatePickerDialog(ProfileActivity.this, new DatePickerDialog.OnDateSetListener() {
                    @Override
                    public void onDateSet(DatePicker datePicker, int y, int month, int date) {
                        if(y>=year)
                        {
                            Toast.makeText(getApplicationContext(), "เลือกวันเดือนปีเกิดให้ถูกต้อง", Toast.LENGTH_SHORT).show();
                        }
                        else {
                            Toast.makeText(getApplicationContext(), y + "-"+ month + "-"+ date + "", Toast.LENGTH_SHORT).show();
                            etAge.setText(date + "-" + month + "-" + y);
                        }
                    }
                }, year, month, date);
                dpd.show();
            }
        });

        // sent data to editProfile

    }

    //Save Button
    public boolean SaveUser() {


        final AlertDialog.Builder adb = new AlertDialog.Builder(this);
        AlertDialog ad = adb.create();

        // Check Name
        if (etName.getText().length() == 0) {
            adb.setTitle("คำเตือน")
                    /*.setIcon(getResources().getDrawable(R.drawable.warnning))*/
                    .setMessage("กรุณาใส่ชื่อ")
                    .setPositiveButton("ตกลง", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            etName.requestFocus();
                        }
                    })
                    .show();
            return false;
        }
        // Check Height
        if (etHeight.getText().length() == 0) {
            adb.setTitle("คำเตือน")
                /*    .setIcon(getResources().getDrawable(R.drawable.warnning))*/
                    .setMessage("กรุณาใส่ส่วนสูง")
                    .setPositiveButton("ตกลง", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            etHeight.requestFocus();
                        }
                    })
                    .show();
            etAge.requestFocus();
            return false;
        }
        // Check Weight
        if (etWeight.getText().length() == 0) {
            adb.setTitle("คำเตือน")
                /*    .setIcon(getResources().getDrawable(R.drawable.warnning))*/
                    .setMessage("กรุณาใส่น้ำหนัก")
                    .setPositiveButton("ตกลง", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            etWeight.requestFocus();
                        }
                    })
                    .show();
            etWeight.requestFocus();
            return false;
        }
        // Check Age
        if (etAge.getText().length() == 0) {
            adb.setTitle("คำเตือน")
                /*    .setIcon(getResources().getDrawable(R.drawable.warnning))*/
                    .setMessage("กรุณาเลือกวันเกิด")
                    .setPositiveButton("ตกลง", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            etAge.requestFocus();
                        }
                    })
                    .show();
            etAge.requestFocus();
            return false;
        }

        //check gender male or female
        RadioGroup rgGender = (RadioGroup) findViewById(R.id.gender);
        if (rgGender.getCheckedRadioButtonId() == R.id.male) {
            //MyActivity.profile.setSex("ชาย");
            RGender = "ผู้ชาย";
        } else {
            //MyActivity.profile.setSex("หญิง");
            RGender = "ผู้หญิง";
        }


        return true;
    }

    private void showOneButton(String str) {


        float bmr;

        if (RGender.equals("ผู้ชาย")) {
            bmr = (float) (66.0 + (13.7 * WeightNum) + (5.0 * HeightNum) - (6.8 * AgeNum));
        } else {
            bmr = (float) (665 + (9.6 * WeightNum) + (1.8 * HeightNum) - (4.7 * AgeNum));
        }

        if (str.equals("ไม่ได้ออกกำลังกาย")) {
            bmr = (float) (bmr * 1.2);
            Log.d("bmr_", "" + bmr);
        } else if (str.equals("ออกกำลังกายน้อยเล่นกีฬา 1-3 วัน/สัปดาห์")) {

            bmr = (float) (bmr * 1.375);
            Log.d("bmr_", "" + bmr);
        } else if (str.equals("ออกกำลังกายปานกลางเล่นกีฬา 3-5 วัน/สัปดาห์ ")) {
            bmr = (float) (bmr * 1.55);
            Log.d("bmr_", "" + bmr);
        } else if (str.equals("ออกกำลังกายหนักเล่นกีฬา 6-7 วัน /สัปดาห์ ")) {
            bmr = (float) (bmr * 1.725);
            Log.d("bmr_", "" + bmr);
        } else if (str.equals("ออกกำลังกายเล่นกีฬาอย่างหนักทุกวัน")) {
            bmr = (float) (bmr * 1.9);
            Log.d("bmr_", "" + bmr);
        }


        bmrSS = (double) bmr;

        str = "ถ้า" + RGender + "คนนี้จะมีชีวิตอยู่ต่อไปได้ในแต่ละวัน (" + str + ") ก็จะต้องการพลังงานอย่างน้อย    :" + bmr + " กิโลแคลอรี่";

        final String bmr_ = String.valueOf(bmr);


//                try {
//            vary();
//            resultCm = HeightNum  / (HeightNum * HeightNum);
//            resultNum = WeightNum / resultCm;
//            if (resultNum < 18.5){
//                Showresult.setText("น้ำหนักน้อยกว่ามาตรฐาน");
//            }else if (resultNum <= 22.9){
//                Showresult.setText("ปกติ");
//            }else if (resultNum <= 24.9){
//                Showresult.setText("อ้วนระดับ 1");
//            }else if (resultNum <= 29.9) {
//                Showresult.setText("อ้วนระดับ 2");
//            }else if (resultNum > 30) {
//                Showresult.setText("อ้วนระดับ 3");
//            }
//            // result_BMI.setText(String.valueOf(resultNum));
//        }catch (Exception ex){
//            // result_BMI.setText(ex.toString());
//        }
        float height_ = HeightNum.floatValue(); //Float.parseFloat(height.getText().toString());
        float height_s = height_ / 100;
        float height_height = height_s * height_s;
        float weight_s = WeightNum.floatValue();
        float count_BMI = weight_s / height_height;

        count_BMI = round(count_BMI, 2);
        String str_bmoi = String.valueOf(count_BMI);
        String str_bmi_text = "";
        if (count_BMI <= 18.5) {
            str_bmi_text = "ผอม  ";
        } else if (count_BMI > 18.5 && count_BMI <= 22.9) {
            str_bmi_text = "ปกติ  ";
        } else if (count_BMI > 23 && count_BMI <= 24.9) {
            str_bmi_text = "ท้วม  ";
        } else if (count_BMI > 25 && count_BMI <= 29.9) {
            str_bmi_text = "อ้วน ";
        } else if (count_BMI > 30 && count_BMI <= 39.9) {
            str_bmi_text = "อ้วนมาก ";
        } else if (count_BMI > 39.9) {
            str_bmi_text = "อ้วนมาก";
        } else {
            str_bmi_text = "กรุณากรอกข้อมูลให้ถูกต้อง";
        }


        register.InsertData(null, str_bmoi, String.valueOf(bmrSS), etName.getText().toString()
                , String.valueOf(HeightNum), String.valueOf(WeightNum), String.valueOf(AgeNum)
                , RGender, bmr_, str_bmi_text);

        File_Confixedata.name_user = etName.getText().toString();
        Toast.makeText(ProfileActivity.this, "บันทึกข้อมูลส่วนตัวเรียบร้อยแล้ว ", Toast.LENGTH_SHORT).show();
        Intent newActivity = new Intent(ProfileActivity.this, Detail_.class);
        startActivity(newActivity);


        // TODO Auto-generated method stub
//        AlertDialog.Builder oneButton = new AlertDialog.Builder(ProfileActivity.this);
//
//        // Set Icon
//      //  oneButton.setIcon(R.drawable.ico_bmi);
//
//        // Set Title
//        oneButton.setTitle("ปริมาณพลังงานที่เหมาะสมสำหรับคุณแต่ละวันอย่างน้อย");
//
//        // Set Message
//        oneButton.setMessage("ปริมาณพลังงานที่ร่างกายต้องการในแต่ละวันสำหรับการดำรงชีวิตอยู่   "+str);
//
//        // Set Positive Button
//        oneButton.setPositiveButton("OK",
//                new DialogInterface.OnClickListener() {
//                    @Override
//                    public void onClick(DialogInterface dialog, int which) {
//
//
//
//
//                    }
//                });
//        oneButton.show();


    }

    //    private void Save() {
//        register.InsertData(null);
//        Toast.makeText(ProfileActivity.this, "บันทึกข้อมูลส่วนตัวเรียบร้อยแล้ว ", Toast.LENGTH_SHORT).show();
//    }
    Double HeightNum;
    Double WeightNum;
    Double resultNum;
    Double resultCm;
    Double resultNum1;
    Double AgeNum;
    //String "test";
    RadioButton Male, Female;
    Date birthdate;
    Double a;

    public void vary() {
        HeightNum = Double.parseDouble(etHeight.getText().toString());
        WeightNum = Double.parseDouble(etWeight.getText().toString());
        //AgeNum = Double.parseDouble(etAge.getText().toString());
        SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy");
        try {
            Date birthdate = df.parse(etAge.getText().toString());
            a = AgeCalculator.calculateAge(birthdate);
            AgeNum = a;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Toast.makeText(this, a.toString(), Toast.LENGTH_LONG).show();
        //AgeNum = AgeCalculator.calculateAge(birthdate);
        Male = (RadioButton) findViewById(R.id.male);
        Female = (RadioButton) findViewById(R.id.female);
    }

    public static class AgeCalculator {

        public static double calculateAge(Date birthdate) {
            Calendar birth = Calendar.getInstance();
            birth.setTime(birthdate);
            Calendar today = Calendar.getInstance();

            int yearDifference = today.get(Calendar.YEAR)
                    - birth.get(Calendar.YEAR);

            if (today.get(Calendar.MONTH) < birth.get(Calendar.MONTH)) {
                yearDifference--;
            } else {
                if (today.get(Calendar.MONTH) == birth.get(Calendar.MONTH)
                        && today.get(Calendar.DAY_OF_MONTH) < birth
                        .get(Calendar.DAY_OF_MONTH)) {
                    yearDifference--;
                }

            }

            return yearDifference;
        }
    }
//    public void onClick_btRegister (View v){
//        try {
//            vary();
//            resultCm = (HeightNum / 100) * (HeightNum / 100);
//            resultNum = WeightNum / resultCm;
//            if (resultNum < 18.5){
//                Showresult.setText("น้ำหนักน้อยกว่ามาตรฐาน");
//            }else if (resultNum <= 22.9){
//                Showresult.setText("ปกติ");
//            }else if (resultNum <= 24.9){
//                Showresult.setText("อ้วนระดับ 1");
//            }else if (resultNum <= 29.9) {
//                Showresult.setText("อ้วนระดับ 2");
//            }else if (resultNum > 30) {
//                Showresult.setText("อ้วนระดับ 3");
//            }
//            // result_BMI.setText(String.valueOf(resultNum));
//        }catch (Exception ex){
//            // result_BMI.setText(ex.toString());
//        }
//        try {
//            if (Male.isChecked()){
//                resultNum1 = 66 + (13.7*WeightNum)+(5*HeightNum)-(6.8*AgeNum);
//                //   result_BMR.setText(String.valueOf(resultNum1));
//            }
//            if (Female.isChecked()){
//                resultNum1 = 665 + (9.6*WeightNum)+(1.8*HeightNum)-(4.7*AgeNum);
//                //  result_BMR.setText(String.valueOf(resultNum1));
//            }
//        }catch (Exception ex){
//            // result_BMR.setText(ex.toString());
//        }
//    }

        public static float round(float value, int places) {
            if (places < 0) throw new IllegalArgumentException();
            long factor = (long) Math.pow(10, places);
            value = value * factor;
            long tmp = Math.round(value);
            return (float) tmp / factor;
        }

        // Setup listener
        final CaldroidListener listener = new CaldroidListener() {

            @Override
            public void onSelectDate(Date date, View view) {


                dialogCaldroidFragment.dismiss();
                ;

                Date dates = new Date(); // your date
                Calendar cal = Calendar.getInstance();
                cal.setTime(dates);

                int year = cal.get(Calendar.YEAR);


                int cout_yesr = year - Integer.parseInt(formatter.format(date));
                etAge.setText(Integer.toString(cout_yesr));
            }

            @Override
            public void onChangeMonth(int month, int year) {
//            String text = "month: " + month + " year: " + year;
//            Toast.makeText(getApplicationContext(), text,
//                    Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onLongClickDate(Date date, View view) {

            }

            @Override
            public void onCaldroidViewCreated() {
                if (caldroidFragment.getLeftArrowButton() != null) {
//                Toast.makeText(getApplicationContext(),
//                        "Caldroid view is created", Toast.LENGTH_SHORT)
//                        .show();
                }
            }

        };

        private void setCustomResourceForDates() {
            Calendar cal = Calendar.getInstance();

            // Min date is last 7 days
            cal.add(Calendar.DATE, -7);
            Date blueDate = cal.getTime();

            // Max date is next 7 days
            cal = Calendar.getInstance();
            cal.add(Calendar.DATE, 7);
            Date greenDate = cal.getTime();

            if (caldroidFragment != null) {
                ColorDrawable blue = new ColorDrawable(getResources().getColor(R.color.colorPrimary));
                ColorDrawable green = new ColorDrawable(Color.GREEN);
                caldroidFragment.setBackgroundDrawableForDate(blue, blueDate);
                caldroidFragment.setBackgroundDrawableForDate(green, greenDate);
                caldroidFragment.setTextColorForDate(R.color.white, blueDate);
                caldroidFragment.setTextColorForDate(R.color.white, greenDate);
            }
        }

    }
