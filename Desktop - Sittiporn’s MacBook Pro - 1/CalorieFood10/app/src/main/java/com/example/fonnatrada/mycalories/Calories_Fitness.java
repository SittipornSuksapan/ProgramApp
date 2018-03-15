package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import caloriefood.projectandroid.com.caloriefood.Database_File_Confix_Center;
import caloriefood.projectandroid.com.caloriefood.R;


public class Calories_Fitness extends Activity {
	private DatabaseRegister dataname;

	private DatabaseFitnessActicity Fitness;
	private Typeface mTypeface;
	private Button buttoncancle;
	private EditText edittext;
	private ListView listview;
	private int number = 0;
	private double count_number = 1;
	private int count=0;
	private String[] dataname_ ;











	private String[] image  ;

	private String[] text  ;

	private String[] text2  ;
	private String[] Exercise  ;

	private int textlength = 0;

	private ArrayList<String> text_sort = new ArrayList<String>();
	private ArrayList<String> image_sort = new ArrayList<String>();
	private ArrayList<String> text_sort2 = new ArrayList<String>();
	private ArrayList<String> text_sortExercise = new ArrayList<String>();

	int potition[];
	public void onCreate(Bundle savedInstanceState)

	{

		super.onCreate(savedInstanceState);
		setContentView(R.layout.listview_calories_burn);


		int count_number=0;
		for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
			if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("29")){
				count_number++;
			}
		}
		image=new String[count_number];
		text=new String[count_number];
		text2=new String[count_number];
		Exercise=new String[count_number];
		potition=new int[count_number];
		int countS=0;
		for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
			if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("29")){
				potition[countS]=i;
				image[countS]= "boxing";
				text[countS]= Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name();
				text2[countS]= Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_count();
				Exercise[countS]=Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_name() ;
				countS++;
			}

		}



		Fitness=new DatabaseFitnessActicity(this);
		dataname=new DatabaseRegister(this);

		dataname_ =dataname.SelectDataCode(File_Confixedata.user_accout_id);



		edittext = (EditText) findViewById(R.id.EditText01);
		listview = (ListView) findViewById(R.id.ListView01);
		listview.setAdapter(new MyCustomAdapter(text, image,text2,Exercise));

		edittext.addTextChangedListener(new TextWatcher()
		{

			public void afterTextChanged(Editable s)
			{

			}

			public void beforeTextChanged(CharSequence s, int start, int count, int after)
			{

			}

			public void onTextChanged(CharSequence s, int start, int before, int count)
			{

				textlength = edittext.getText().length();
				text_sort.clear();
				image_sort.clear();
				text_sort2.clear();

				for (int i = 0; i < text.length; i++)
				{
					if (textlength <= text[i].length())
					{
						if (edittext.getText().toString().equalsIgnoreCase((String) text[i].subSequence(0, textlength)))
						{
							text_sort.add(text[i]);
							image_sort.add(image[i]);
							text_sort2.add(text2[i]);
							text_sortExercise.add(Exercise[i]);
							number = 1;
						}
					}
				}

				listview.setAdapter(new MyCustomAdapter(text_sort, image_sort,text_sort2,text_sortExercise));

			}
		});


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
//
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

//	public void alertFormElements() {
//		AlertDialog.Builder builder = new AlertDialog.Builder(Calories_Fitness.this);
//		//Uncomment the below code to Set the message and title from the strings.xml file
//		//builder.setMessage(R.string.dialog_message) .setTitle(R.string.dialog_title);
//
//		//Setting message manually and performing action on button click
//		builder.setMessage(text[count])
//				.setCancelable(false)
//				.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
//					public void onClick(DialogInterface dialog, int id) {
//												count_number=1;
//						Calendar  cal_Tomorrow= Calendar.getInstance();
//						SimpleDateFormat formats = new SimpleDateFormat("yyyy/MM/dd, EEEE");
//						String strdate=formats.format(cal_Tomorrow.getTime());
//						int foo = Integer.parseInt(text2[count])*count_number;
//
//						Fitness.InsertData(null, File_Confixedata.user_accout_id, text[count], text2[count], Integer.toString(foo), Integer.toString(count_number), " ",strdate, dataname_[8], " ");
//						Toast.makeText(getApplicationContext(),"บันทึกข้อมูลเรียบร้อย ครับ/ค่ะ"  ,Toast.LENGTH_SHORT).show();
//					}
//				})
//				.setNegativeButton("No", new DialogInterface.OnClickListener() {
//					public void onClick(DialogInterface dialog, int id) {
//						//  Action for 'NO' Button
//						dialog.cancel();
//					}
//				});
//
//		//Creating dialog box
//		AlertDialog alert = builder.create();
//		//Setting the title manually
//		alert.setTitle("ต้องการบันทึกรายการนี้ จริงหรือไม่ ");
//		alert.show();
//
//
//
//	}

	public void alertFormElements() {



		LayoutInflater layoutInflaterAndroid = LayoutInflater.from(Calories_Fitness.this);
		View mView = layoutInflaterAndroid.inflate(R.layout.user_input_dialog_box_fisness, null);
		AlertDialog.Builder alertDialogBuilderUserInput = new AlertDialog.Builder(Calories_Fitness.this);
		alertDialogBuilderUserInput.setView(mView);

		final EditText userInputDialogEditText = (EditText) mView.findViewById(R.id.userInputDialog);
		alertDialogBuilderUserInput
				.setCancelable(false)
				.setPositiveButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialogBox, int id) {
						// ToDo get user input here


						count_number= Double.parseDouble(userInputDialogEditText.getText().toString());//Integer.parseInt(userInputDialogEditText.getText().toString());;
						Calendar cal_Tomorrow= Calendar.getInstance();
						SimpleDateFormat formats = new SimpleDateFormat("yyyy/MM/dd, EEEE");
						String strdate=formats.format(cal_Tomorrow.getTime());
						double foo = Integer.parseInt(text2[count])*count_number;

						Fitness.InsertData(null, File_Confixedata.user_accout_id, text[count], text2[count], Double.toString(foo), Double.toString(count_number), " ",strdate, dataname_[8], " ");
						Toast.makeText(getApplicationContext(),"บันทึกข้อมูลเรียบร้อย ครับ/ค่ะ"  , Toast.LENGTH_SHORT).show();

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
}