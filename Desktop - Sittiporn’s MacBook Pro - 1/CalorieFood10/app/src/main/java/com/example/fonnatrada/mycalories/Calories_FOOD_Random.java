package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import caloriefood.projectandroid.com.caloriefood.Database_File_Confix_Center;
import caloriefood.projectandroid.com.caloriefood.R;
import caloriefood.projectandroid.com.caloriefood.SplashScreen;

public class Calories_FOOD_Random extends Activity {
	private DatabaseRegister dataname;
	LinearLayout    layout_faar  ;
	private DatabaseFood foodData;
	private Typeface mTypeface;
	private Button buttoncancle;
	//private EditText edittext;
	private ListView listview;
	private int number = 0;
	private double count_number = 1;
	private int count=0;
	private String[] dataname_ ;
	private RadioButton myRadio1, myRadio2,myRadio3 ;
	private String[] image   ;
	private String[] text;
	private String[] text2 ;
	private String[] Exercise;
	private int textlength = 0;

	private ArrayList<String> text_sort = new ArrayList<String>();
	private ArrayList<String> image_sort = new ArrayList<String>();
	private ArrayList<String> text_sort2 = new ArrayList<String>();
	private ArrayList<String> text_sortExercise = new ArrayList<String>();
	private int potition[];
	private Databasefa faverlist;
	private String Code_Id="";

	// Implementing Fisher–Yates shuffle
	static void shuffleArray(int[] ar)
	{
		// If running on Java 6 or older, use `new Random()` on RHS here
		Random rnd = ThreadLocalRandom.current();
		for (int i = ar.length - 1; i > 0; i--)
		{
			int index = rnd.nextInt(i + 1);
			// Simple swap
			int a = ar[index];
			ar[index] = ar[i];
			ar[i] = a;
		}
	}
	public void onCreate(Bundle savedInstanceState)

	{

		super.onCreate(savedInstanceState);
		setContentView(R.layout.listview_calories_burn_random);

		Button button = (Button) findViewById(R.id.txtIsbn);

		button.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				// TODO Auto-generated method stub



				Intent i = new Intent(Calories_FOOD_Random.this, Calories_FOOD.class);
				startActivity(i);
			}
		});


	 int anArray[]=new int[Database_File_Confix_Center.getOutput_data_List.size()];

		Random rand = new Random();
		for(int i = 0; i <  anArray.length; i++){
			 anArray[i] = rand.nextInt();
		}


		register=new DatabaseRegister(this);
		faverlist=new Databasefa(this);
			int count_number=0;
		for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
			if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("23")){

				count_number++;
			}
		}
		image=new String[5];
		text=new String[5];
		text2=new String[5];
		Exercise=new String[5];
		potition=new int[count_number];
         int countS=0;


          for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
			  if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("23")){
				  potition[countS]=i;

				  countS++;
			  }

		  }

		int countssss=0;
		shuffleArray(potition);
		for(int i=0;i<potition.length;i++){

			if( countssss<5){

				image[countssss]= "calories512";
				text[countssss]= Database_File_Confix_Center.getOutput_data_List.get(potition[i]).getRestaurant_name();
				text2[countssss]= Database_File_Confix_Center.getOutput_data_List.get(potition[i]).getRestaurant_count() ;
				Exercise[countssss]=Database_File_Confix_Center.getOutput_data_List.get(potition[i]).getCategory_name() ;
				countssss++;
			}

		}

		foodData=new DatabaseFood(this);
		dataname=new DatabaseRegister(this);
		selectAllData=register.SelectAllData();

		for(int i=0;i<selectAllData.size();i++){
			if( i==0){
				File_Confixedata.user_accout_id=  selectAllData.get(i).get("Code");
			}
		}

		dataname_ =dataname.SelectDataCode(File_Confixedata.user_accout_id);



		//edittext = (EditText) findViewById(R.id.EditText01);
		listview = (ListView) findViewById(R.id.ListView01);
		listview.setAdapter(new MyCustomAdapter(text, image,text2,Exercise));
//
//		edittext.addTextChangedListener(new TextWatcher()
//		{
//
//			public void afterTextChanged(Editable s)
//			{
//
//			}
//
//			public void beforeTextChanged(CharSequence s, int start, int count, int after)
//			{
//
//			}
//
//			public void onTextChanged(CharSequence s, int start, int before, int count)
//			{
//
//				textlength = edittext.getText().length();
//				text_sort.clear();
//				image_sort.clear();
//				text_sort2.clear();
//
//				for (int i = 0; i < text.length; i++)
//				{
//					if (textlength <= text[i].length())
//					{
//						if (edittext.getText().toString().equalsIgnoreCase((String) text[i].subSequence(0, textlength)))
//						{
//							text_sort.add(text[i]);
//							image_sort.add(image[i]);
//							text_sort2.add(text2[i]);
//							text_sortExercise.add(Exercise[i]);
//							number = 1;
//						}
//					}
//				}
//
//				listview.setAdapter(new MyCustomAdapter(text_sort, image_sort,text_sort2,text_sortExercise));
//
//			}
//		});


		listview.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

				if (number == 1) {
					for(int g=0;g<text.length;g++){
						if(text[g].equals(text_sort.get(position))){
							count=g;
							alertFormElements();
						}
					}

				} else {
					for(int g=0;g<text.length;g++){
						if(text[g].equals(text[position])){
							count=g;
							alertFormElements();
						}
					}

				}

			}
		});
	}

	class MyCustomAdapter extends BaseAdapter
	{

		String[] data_text;
		String[] data_image;
		String[] data_text2;
		String[] exS;
		MyCustomAdapter(){}

		MyCustomAdapter(String[] text, String[] image, String[] text2, String[]ex){

			data_text = text;
			data_image = image;
			data_text2 = text2;
			 exS = ex;

		}

		MyCustomAdapter(ArrayList<String> text, ArrayList<String> image, ArrayList<String> text2, ArrayList<String> Exercise )
		{

			data_text = new String[text.size()];
			data_image = new String[image.size()];
			data_text2 = new String[text2.size()];
			exS = new String[Exercise.size()];
			for(int i=0;i<text.size();i++)
			{
				data_text[i] = text.get(i);
				data_image[i] = image.get(i);
				data_text2[i] = text2.get(i);
				exS[i] = Exercise.get(i);
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

 		LayoutInflater inflater = getLayoutInflater();
 		View row;

 			row = inflater.inflate(R.layout.item_add_fitness, parent, false);



			ImageView imgFitness = (ImageView)row.findViewById(R.id.imgFitness);
			TextView txtFitnessName = (TextView)row.findViewById(R.id.tvFitnessName);
			TextView txtFitnessCal = (TextView)row.findViewById(R.id.tvFitnessCal);

			 txtFitnessName.setText(data_text[position]+"  "+data_text2[position]+" กิโลแคลอรี่" );
			 txtFitnessCal.setText(exS[position] );

			String image_string = data_image[position];
			int resId = getApplicationContext().getResources().getIdentifier(image_string, "drawable", getApplicationContext().getPackageName());
			imgFitness.setImageResource(resId);



			return (row);

		}
	}

	public void alertFormElements() {


		boolean seve_data=true;
		for(int i=0;i<faverlist.SelectAllData().size();i++){
			if(faverlist.SelectAllData().get(i).get("col1").equals(Database_File_Confix_Center.getOutput_data_List.get(count).getRestaurant_id()) ){
				seve_data=false;
				Code_Id=faverlist.SelectAllData().get(i).get("Code");
			} else {


				Log.d("id",""+faverlist.SelectAllData().get(i).get("col1"));
			}
		}


		if(seve_data){
			faverlist.InsertData(null,Database_File_Confix_Center.getOutput_data_List.get(count).getRestaurant_id(),"0","","","","","","","");
			for(int i=0;i<faverlist.SelectAllData().size();i++){
				if(faverlist.SelectAllData().get(i).get("col1").equals(Database_File_Confix_Center.getOutput_data_List.get(count).getRestaurant_id()) ){

					Code_Id=faverlist.SelectAllData().get(i).get("Code");
				} else {

				}
			}
		}


		LayoutInflater layoutInflaterAndroid = LayoutInflater.from(Calories_FOOD_Random.this);
		View mView = layoutInflaterAndroid.inflate(R.layout.user_input_dialog_box, null);
		myRadio1 = (RadioButton)mView.findViewById(R.id.radioMale1);
		myRadio2 = (RadioButton)mView.findViewById(R.id.radioMale2);
		myRadio3 = (RadioButton)mView.findViewById(R.id.radioMale3);
		layout_faar = (LinearLayout) mView.findViewById(R.id.layout_faar);

		final ImageView ImageView_fullhart_icon = (ImageView) mView.findViewById(R.id.ImageView_fullhart_icon);

		layout_faar.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				String[] SelectDataCode= faverlist.SelectDataCode(Code_Id);
				if(SelectDataCode[2].equals("1")){
					faverlist.UpdateData(Code_Id,Database_File_Confix_Center.getOutput_data_List.get(count).getRestaurant_id(),"0","","","","","","","");
				}else{
					faverlist.UpdateData(Code_Id,Database_File_Confix_Center.getOutput_data_List.get(count).getRestaurant_id(),"1","","","","","","","");
				}

				Settext();

			}

			private void Settext() {
				String[] SelectDataCode= faverlist.SelectDataCode(Code_Id);
				if(SelectDataCode[2].equals("1")){
					ImageView_fullhart_icon.setBackgroundResource(R.mipmap.ic_action_halfhart_icon);
				}else{
					ImageView_fullhart_icon.setBackgroundResource(R.mipmap.ic_action_fullhart_icon_);
				}
			}
		});

		String[] SelectDataCode= faverlist.SelectDataCode(Code_Id);
		if(SelectDataCode[2].equals("1")){
			ImageView_fullhart_icon.setBackgroundResource(R.mipmap.ic_action_halfhart_icon);
		}else{
			ImageView_fullhart_icon.setBackgroundResource(R.mipmap.ic_action_fullhart_icon_);
		}

		AlertDialog.Builder alertDialogBuilderUserInput = new AlertDialog.Builder(Calories_FOOD_Random.this);
		alertDialogBuilderUserInput.setView(mView);

		final EditText userInputDialogEditText = (EditText) mView.findViewById(R.id.userInputDialog);
		alertDialogBuilderUserInput
				.setCancelable(false)
				.setPositiveButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialogBox, int id) {
						// ToDo get user input here

						if( userInputDialogEditText.getText().toString().length()>0){
							count_number= Double.parseDouble(userInputDialogEditText.getText().toString());//Integer.parseInt(userInputDialogEditText.getText().toString());

							if(myRadio1.isChecked() ){
								File_Confixedata.check_food="1";
							}else if(myRadio2.isChecked() ){
								File_Confixedata.check_food="2";
							}else if(myRadio3.isChecked() ){
								File_Confixedata.check_food="3";
							}else{

							}

							Calendar cal_Tomorrow= Calendar.getInstance();
							SimpleDateFormat formats = new SimpleDateFormat("yyyy/MM/dd, EEEE");
							String strdate=formats.format(cal_Tomorrow.getTime());
							ArrayList<HashMap<String, String>> 	selectAllData_listdata= foodData.SelectAllData();




							double value =0;
							double valueFood =0;


							double foo = Integer.parseInt(text2[count])*count_number;
							for(int i=0;i<selectAllData_listdata.size();i++){
								if(selectAllData_listdata.get(i).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_listdata.get(i).get("col7").equals(strdate)){
									valueFood= valueFood+ Double.parseDouble(selectAllData_listdata.get(i).get("col4"));



								}

							}
							double total=	foo+valueFood;


							if(total>Double.parseDouble(dataname_[8])){
								Toast.makeText( Calories_FOOD_Random.this,"กรุณาเลือกใหม่เนื่องจากแคลลอรี่เกินกำหนดต่อวัน"  , Toast.LENGTH_SHORT).show();
								Log.d("total",total+" "+Double.parseDouble(dataname_[8]));
							}else{
								int poni=0;
								for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
									if(Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name().equals(text[count])){
										poni=i;
									}

								}



								foodData.InsertData(null, File_Confixedata.user_accout_id, text[count], text2[count], Double.toString(foo) , Double.toString(count_number)  , " ",strdate, dataname_[8],  File_Confixedata.check_food);

								Toast.makeText(Calories_FOOD_Random.this,"บันทึกข้อมูลเรียบร้อย ครับ/ค่ะ"  , Toast.LENGTH_SHORT).show();
							}

						}






					}
				})

				.setNegativeButton("Cancel",
						new DialogInterface.OnClickListener() {
							public void onClick(DialogInterface dialogBox, int id) {
								dialogBox.cancel();
							}
						});

		AlertDialog alertDialogAndroid = alertDialogBuilderUserInput.create();
		alertDialogAndroid.show();



	}
	@Override
	protected void onStart() {
		super.onStart();







	}
	ArrayList<HashMap<String, String>> selectAllData;
	DatabaseRegister register;

	@Override
	public void onBackPressed() {
		super.onBackPressed();
		Intent intent = new Intent(Intent.ACTION_MAIN);
		intent.addCategory(Intent.CATEGORY_HOME);
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		startActivity(intent);
	}



}