package com.example.fonnatrada.mycalories;


import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;

import caloriefood.projectandroid.com.caloriefood.R;


public class Calories_TOTAL extends Activity {
	private DatabaseRegister namedata;

	private DatabaseFood foodData;
	private Typeface mTypeface;
	private Button buttoncancle,refresh;
	private EditText edittext;
	private ListView listview;
	private int number = 0;
	private int count_number = 1;
	private ArrayList<HashMap<String, String>> selectAllData_listdata;

	private int count=0;
	private String[] image;
	private String[] text ;
	private String[] text2 ;
	private String[] text_check_food ;
	private int textlength = 0;

	Timer timer=null;
	public static boolean istabselected=false;

	class RefreshTask extends TimerTask {
		public void run()
		{
			myHandleAddFood.sendMessage(myHandleAddFood.obtainMessage());
		}
	}
	Handler myHandleAddFood = new Handler(){
		@Override
		public void handleMessage(android.os.Message msg) {
			if(istabselected==true) {
				Setdataandroid();
				istabselected=false;
			}
		}
	};
	public void onCreate(Bundle savedInstanceState)

	{

		super.onCreate(savedInstanceState);
		setContentView(R.layout.calories_total);
		foodData=new DatabaseFood(this);
		namedata=new DatabaseRegister(this);
		SeekBar seekBar = (SeekBar)findViewById(R.id.seekbar);

		seekBar.setVisibility(View.GONE);

		timer=new Timer();
		timer.schedule(new RefreshTask(),2000,500);

	}


	class MyCustomAdapter extends BaseAdapter
	{

		String[] data_text;
		String[] data_image;
		String[] data_text2;
		String[] data_check_food;
		MyCustomAdapter(){}

		MyCustomAdapter(String[] text, String[] image, String[] text2, String[] check_fod)
		{

			data_text = text;
			data_image = image;
			data_text2 = text2;
			data_check_food=check_fod;
		}

		MyCustomAdapter(ArrayList<String> text, ArrayList<String> image, ArrayList<String> text2, ArrayList<String> text2_check_food)

		{

			data_text = new String[text.size()];
			data_image = new String[image.size()];
			data_text2 = new String[text2.size()];
			data_check_food = new String[text2_check_food.size()];

			for(int i=0;i<text.size();i++)

			{
				data_text[i] = text.get(i);
				data_image[i] = image.get(i);
				data_text2[i] = text2.get(i);
				data_check_food[i] = text2_check_food.get(i);
			}

		}

		public int getCount()
		{
			return data_text.length;
		}

		public String getItem(int position)
		{
			return null;
		}

		public long getItemId(int position)
		{
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent)
		{

			int k=position; k++;
			LayoutInflater inflater = getLayoutInflater();
			View row;


			row = inflater.inflate(R.layout.listview_calories_burn_total, parent, false);

			TextView data1 = (TextView) row.findViewById(R.id.data_number);
			TextView data2 = (TextView) row.findViewById(R.id.listview_item_title_medium);
			//TextView data3 = (TextView) row.findViewById(R.id.data_number_detail);
			TextView data4 = (TextView) row.findViewById(R.id.listview_item_title_small);

			data1.setText( Integer.toString(k));
			//data2.setText(data_image[position]);
			if(data_check_food[position].equals("1")){
				data2.setText(data_image[position]+" (เช้า)");
			}else if(data_check_food[position].equals("2")){
				data2.setText(data_image[position]+" (เที่ยง)");
			}else if(data_check_food[position].equals("3")){
				data2.setText(data_image[position]+" (เย็น)");

			}else{

			}
			//data3.setText(data_text[position]);
			data4.setText(data_text2[position]+" Kcal");

			final  int position_poit=position;

			LinearLayout delete_data = (LinearLayout) row.findViewById(R.id.delete_data);

			delete_data.setOnClickListener(new View.OnClickListener() {
				public void onClick(View v) {
					AlertDialog.Builder builder = new AlertDialog.Builder(Calories_TOTAL.this);
					builder.setMessage("คุณต้องการลบรายการอาหารนี้ใช่หรือไม่ ? ")
							.setCancelable(false)
							.setPositiveButton("ใช่", new DialogInterface.OnClickListener() {
								public void onClick(DialogInterface dialog, int id) {
									String check_Code="";
									for(int i=0;i<selectAllData_listdata.size();i++){
										if(selectAllData_listdata.get(i).get("col1").equals(File_Confixedata.user_accout_id)
												&&data_text[position_poit].equals(selectAllData_listdata.get(i).get("col5"))
												&&data_text2[position_poit].equals(selectAllData_listdata.get(i).get("col4"))){
											check_Code=selectAllData_listdata.get(i).get("Code");
										}
									}

									Toast.makeText(getApplicationContext(), "ลบรายการอาหารเรียบร้อย", Toast.LENGTH_LONG).show();
									foodData.DeleteData(check_Code);
									Setdataandroid();
									dialog.cancel();
								}
							})
							.setNegativeButton("ไม่", new DialogInterface.OnClickListener() {
								public void onClick(DialogInterface dialog, int id) {
									//  Action for 'NO' Button
									dialog.cancel();
								}
							});
					//Creating dialog box
					AlertDialog alert = builder.create();
					//Setting the title manually
					alert.setTitle("ลบข้อมูลนี้");
					alert.show();
				}
			});

			return (row);

		}
	}

	@Override
	protected void onPause() {
		super.onPause();

		//Toast.makeText(Calories_TOTAL.this,"บันทึกข้อมูลเรียบร้อย ครับ/ค่ะ"  , Toast.LENGTH_SHORT).show();
	}

	@Override
	protected void onResume() {
		super.onResume();
		Setdataandroid();
		//Toast.makeText(Calories_TOTAL.this,"บันทึกข้อมูลเรียบร้อย ครับ/ค่ะ"  , Toast.LENGTH_SHORT).show();
	}

	@Override
	public void onStart(){
		super.onStart();
		Setdataandroid();



	}


	private void Setdataandroid() {
		// TODO Auto-generated method stub
		Calendar cal_Tomorrow= Calendar.getInstance();
		SimpleDateFormat formats = new SimpleDateFormat("yyyyMMdd");
		String strdate=formats.format(cal_Tomorrow.getTime());

		String[] SelectDataCodename= namedata.SelectDataCode(File_Confixedata.user_accout_id);
		selectAllData_listdata= foodData.SelectAllDataInDate(strdate,File_Confixedata.user_accout_id);

		int num=0;
		for(int k=0;k<selectAllData_listdata.size();k++){
			if(selectAllData_listdata.get(k).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_listdata.get(k).get("col7").equals(strdate)){
				num++;
			}
		}

		image=new String[num];
		text=new String[num];
		text2=new String[num];
		text_check_food=new String[num];
		double value =0;

		String sd=" "; //valuetotal
		String date=" ";
		int countNumber1=0;
		for(int i=0;i<selectAllData_listdata.size();i++){
			if(selectAllData_listdata.get(i).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_listdata.get(i).get("col7").equals(strdate)){

				image[countNumber1]=selectAllData_listdata.get(i).get("col2");
				text[countNumber1]=selectAllData_listdata.get(i).get("col5");
				text2[countNumber1]=selectAllData_listdata.get(i).get("col4");

				text_check_food[countNumber1]=selectAllData_listdata.get(i).get("col9");
				value= value+ Double.parseDouble(selectAllData_listdata.get(i).get("col4"));
				//values_= Double.parseDouble(selectAllData_listdata.get(i).get("col8"));
				sd=selectAllData_listdata.get(i).get("col8");
				date=selectAllData_listdata.get(i).get("col7");
				countNumber1++;
			}
		}

		if(countNumber1>0){
			double total = Double.parseDouble(sd);
			String color="#00CC00";
			if(value > total)
			{
				color="red";
			}
			double num_count=(value/total)*100;
			double  format_number = num_count; //%
			int decimalPlaces = 2;
			BigDecimal bd = new BigDecimal(num_count);
			// setScale is immutable
			bd = bd.setScale(decimalPlaces, BigDecimal.ROUND_HALF_UP);
			format_number = bd.doubleValue();

			TextView textdetail_data = (TextView) findViewById(R.id.textdetail_data);
			String textdetail=SelectDataCodename[3]+" เลือกกินไป : <font color=\""+color+"\" size=\"7\"><b>"+value+"</b></font> <font color=#696969>Kcal</font> "+"<font color=\"" + color + "\" size=\"7\"><b>("+format_number+") %</b></font>"+" จากที่แนะนำ : <font color=\"" + color + "\" size=\"7\"><b>"+sd+"</b></font> <font color=#696969>Kcal<\font>";
			if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.N)
			{
				textdetail_data.setText(Html.fromHtml(textdetail, Html.FROM_HTML_MODE_COMPACT));
			}
			else {
				textdetail_data.setText(Html.fromHtml(textdetail));
			}

		}


		edittext = (EditText) findViewById(R.id.EditText01);
		listview = (ListView) findViewById(R.id.ListView01);
		listview.setAdapter(new MyCustomAdapter(text, image,text2,text_check_food));
	}
	@Override
	public void onBackPressed() {
		super.onBackPressed();
		Intent intent = new Intent(Intent.ACTION_MAIN);
		intent.addCategory(Intent.CATEGORY_HOME);
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		startActivity(intent);
	}
}
