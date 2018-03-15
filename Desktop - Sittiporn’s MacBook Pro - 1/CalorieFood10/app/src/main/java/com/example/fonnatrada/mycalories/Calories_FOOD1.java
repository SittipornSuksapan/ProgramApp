package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;

import com.example.fonnatrada.mycalories.Model.AddFoodActivity;
import com.google.gson.Gson;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
import java.util.concurrent.ThreadLocalRandom;

import caloriefood.projectandroid.com.caloriefood.Database_File_Confix_Center;
import caloriefood.projectandroid.com.caloriefood.FoodDataAll;
import caloriefood.projectandroid.com.caloriefood.R;
import caloriefood.projectandroid.com.caloriefood.SplashScreen;
import cz.msebera.android.httpclient.Header;


public class Calories_FOOD1 extends Activity {

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
	LinearLayout    layout_faar  ;
	private DatabaseFood foodData;
	private Typeface mTypeface;
	private Button buttoncancle;
	public static EditText edittext;
	public static ListView listview;
	public static int number = 0;
	private double count_number = 1;
	private int count=0;
	public static String[] dataname_ ;
	private RadioButton myRadio1, myRadio2,myRadio3 ;
	public static int[] image   ;
	public static String[] text;
	public static String[] text2 ;
	public static String[] Exercise;
	public static int textlength = 0;

	public static ArrayList<String> text_sort = new ArrayList<String>();
	public static ArrayList<Integer> image_sort = new ArrayList<Integer>();
	public static ArrayList<String> text_sort2 = new ArrayList<String>();
	public static ArrayList<String> text_sortExercise = new ArrayList<String>();
	public static int potition[];
	public static Databasefa faverlist;
	private String Code_Id="";
	AutoCompleteTextView textS;

	String[] languages;
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
			if(istabselected==true || AddFoodActivity.name !="") {
				if(AddFoodActivity.tab==("tab1") && AddFoodActivity.name !="") {
					System.out.println("addnew 1");
					name = AddFoodActivity.name;
					num = AddFoodActivity.num;
					addnew = true;
					AddFoodActivity.name="";
					AddFoodActivity.num="";
					Load1();
				}
				Setdata();
				istabselected=false;

			}
		}
	};
	public void onCreate(Bundle savedInstanceState)

	{

		super.onCreate(savedInstanceState);
		setContentView(R.layout.listview_calories_burn);

		register=new DatabaseRegister(this);
		faverlist=new Databasefa(this);
		foodData=new DatabaseFood(this);


		textS=(AutoCompleteTextView)findViewById(R.id.autoCompleteTextView1);
		ImageView imgaddmenu=(ImageView)findViewById(R.id.imgaddmenu);
		imgaddmenu.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent newActivity = new Intent(Calories_FOOD1.this, AddFoodActivity.class);
				AddFoodActivity.tab="tab1";
				startActivityForResult(newActivity,100);
			}
		});
		int dddd=0;
		for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
			if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("1")){
				dddd++;
			}
		}

		languages=new String[dddd];
		int ddddS=0;
		for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
			if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("1")){
				languages[ddddS]=Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name();
				ddddS++;
			}
		}
		ArrayAdapter adapter = new ArrayAdapter(this,android.R.layout.simple_list_item_1,languages);

		textS.setAdapter(adapter);
		textS.setThreshold(1);

		textS.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				String selection = (String)parent.getItemAtPosition(position);
				textS.setText("");
				Toast.makeText(getApplicationContext()," " +selection  , Toast.LENGTH_SHORT).show();
				for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
					if(Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name().equals(selection)){
						//	Toast.makeText(Calories_FOOD1.this," "+selection  , Toast.LENGTH_SHORT).show();
						alertFormElements(i);

					}
				}
			}
		});


		edittext = (EditText) findViewById(R.id.EditText01);
		listview = (ListView) findViewById(R.id.ListView01);
		edittext.setVisibility(View.GONE);


		listview.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

				if (number == 1) {
					for(int g=0;g<text.length;g++){
						if(text[g].equals(text_sort.get(position))){
							count=g;
							//alertFormElements();
						}
					}

				} else {
					for(int g=0;g<text.length;g++){
						if(text[g].equals(text[position])){
							count=g;
							//alertFormElements();
						}
					}

				}

			}
		});
		timer=new Timer();
		timer.schedule(new RefreshTask(),2000,500);
	}

	class MyCustomAdapter extends BaseAdapter
	{

		String[] data_text;
		int[] data_image;
		String[] data_text2;
		String[] exS;
		MyCustomAdapter(){}

		MyCustomAdapter(String[] text, int[] image, String[] text2, String[]ex){

			data_text = text;
			data_image = image;
			data_text2 = text2;
			exS = ex;

		}

		MyCustomAdapter(ArrayList<String> text, ArrayList<Integer> image, ArrayList<String> text2, ArrayList<String> Exercise )
		{

			data_text = new String[text.size()];
			data_image = new int[image.size()];
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

		public View getView(final int position, View convertView, ViewGroup parent)
		{

			LayoutInflater inflater = getLayoutInflater();
			View row;

			row = inflater.inflate(R.layout.item_add_fitness, parent, false);



			final 	ImageView imgFitness = (ImageView)row.findViewById(R.id.imgFitness);
			TextView txtFitnessName = (TextView)row.findViewById(R.id.tvFitnessName);
			TextView txtFitnessCal = (TextView)row.findViewById(R.id.tvFitnessCal);

			txtFitnessName.setText(data_text[position]+"  "+data_text2[position]+" กิโลแคลอรี่" );
			txtFitnessName.setOnClickListener(new OnClickListener() {
				public void onClick(View v) {
					System.out.println("name click");
					String ss=data_text[position];
					int pos=-1;
					for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
						if(Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name().equals(ss)){
							System.out.println("show alertFormElements");
							pos=i;
							break;
						}
					}
					if(pos!=-1)
					{
						alertFormElements(pos);
					}
					// TODO Auto-generated method stub

				}
			});
			txtFitnessCal.setText(exS[position] );

			if(data_image[position]==1){
				imgFitness.setImageResource(R.mipmap.ic_action_halfhart_icon);
			}else{
				imgFitness.setImageResource(R.mipmap.ic_action_fullhart_icon_);
			}


			imgFitness.setOnClickListener(new OnClickListener() {
				public void onClick(View v) {


					if(data_image[position]==1){
						data_image[position]=0;
						imgFitness.setImageResource(R.mipmap.ic_action_fullhart_icon_);
					}else{
						data_image[position]=1;
						imgFitness.setImageResource(R.mipmap.ic_action_halfhart_icon);
					}
					String ss=data_text[position];
					for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
						if(Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name().equals(ss)){
							Toast.makeText(Calories_FOOD1.this," "+ss  , Toast.LENGTH_SHORT).show();
							Add_Data(i );

						}
					}
					istabselected=true;
//Load1();
					System.out.println("Load1 complete");
//Setdata();

				}



			});
			ImageView imgExAdd = (ImageView)row.findViewById(R.id.imgExAdd);
			imgExAdd.setOnClickListener(new OnClickListener() {
				public void onClick(View v) {
					String ss=data_text[position];

					for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
						if(Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name().equals(ss)){

							alertFormElements(i);
						}
					}

					// TODO Auto-generated method stub

				}
			});

			return (row);

		}
	}

	public void alertFormElements(final int potition) {


		File_Confixedata.check_food="1";


		Calendar cal_Tomorrow= Calendar.getInstance();
		SimpleDateFormat formats = new SimpleDateFormat("yyyyMMdd");
		final String strdate=formats.format(cal_Tomorrow.getTime());
		ArrayList<HashMap<String, String>> 	selectAllData_listdata= foodData.SelectAllData();




		double value =0;
		double valueFood =0;

		count_number=1;//Integer.parseInt(userInputDialogEditText.getText().toString());

		;
		final double foo = Integer.parseInt(Database_File_Confix_Center.getOutput_data_List.get(potition).getRestaurant_count())*count_number;
		for(int i=0;i<selectAllData_listdata.size();i++){
			if(selectAllData_listdata.get(i).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_listdata.get(i).get("col7").equals(strdate)){
				valueFood= valueFood+ Double.parseDouble(selectAllData_listdata.get(i).get("col4"));

			}

		}
		double total=	foo+valueFood;


		if(total>Double.parseDouble(dataname_[8])){
			//Toast.makeText( Calories_FOOD1.this,"กรุณาเลือกใหม่เนื่องจากแคลลอรี่เกินกำหนดต่อวัน"  , Toast.LENGTH_SHORT).show();
			Log.d("total",total+" "+Double.parseDouble(dataname_[8]));

			AlertDialog.Builder builder = new AlertDialog.Builder(TabFoodAll.foodContext);
			builder.setMessage("ค่าแคลอรี่เกินกำหนด คุณต้องการทานอาหารหรือไม่?")
					.setCancelable(false)
					.setPositiveButton("ใช่", new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog, int id) {
							String name_= Database_File_Confix_Center.getOutput_data_List.get(potition).getRestaurant_name();
							String name_count= Database_File_Confix_Center.getOutput_data_List.get(potition).getRestaurant_count() ;

							foodData.InsertData(null, File_Confixedata.user_accout_id, name_, name_count, Double.toString(foo) , Double.toString(count_number)  , " ",strdate, dataname_[8],  File_Confixedata.check_food);

							Toast.makeText(Calories_FOOD1.this,"บันทึกลงรายการอาหารที่เลือกบริโภค"  , Toast.LENGTH_SHORT).show();
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
			alert.setTitle("คำเตือน");
			alert.show();


		}else{

			String name_= Database_File_Confix_Center.getOutput_data_List.get(potition).getRestaurant_name();
			String name_count= Database_File_Confix_Center.getOutput_data_List.get(potition).getRestaurant_count() ;

			foodData.InsertData(null, File_Confixedata.user_accout_id, name_, name_count, Double.toString(foo) , Double.toString(count_number)  , " ",strdate, dataname_[8],  File_Confixedata.check_food);

			Toast.makeText(Calories_FOOD1.this,"บันทึกลงรายการอาหารที่เลือกบริโภค"  , Toast.LENGTH_SHORT).show();


		}




	}
	@Override
	protected void onStart() {
		super.onStart();
//if(check_load){
		check_load=false;
		Setdata();
//}



	}
	boolean check_load=true;
	@Override
	protected void onStop() {
		super.onStop();
		check_load=true;
	}

	@Override
	protected void onPause() {
		super.onPause();
		check_load=true;
	}
	String name="",num="";
	boolean addnew=false;
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (requestCode == 100) {

			Bundle bun=data.getExtras();
			if(bun!=null)
			{
				System.out.println("come back");
				//Load1();
				name=bun.getString("name");
				num=bun.getString("num");
				addnew=true;
				Setdata();
			}
		}

	}
	public void Setdata() {


		int count_number=0;
		for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
			if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("1")){
				count_number++;
			}


		}
		image=new int[10];
		text=new String[10];
		text2=new String[10];
		Exercise=new String[10];
		potition=new int[count_number];
		int countSSS=0;


		for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
			if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("1")){
				potition[countSSS]=i;

				countSSS++;
			}

		}


		int countS=0;
		shuffleArray(potition);
		Random ran=new Random();
		if(addnew==true) {
			System.out.println("addnew");
			image[countS] = 0;
			text[countS] = name;
			text2[countS] = num;
			Exercise[countS] = Database_File_Confix_Center.getOutput_data_List.get(0).getCategory_name();
			countS++;
			addnew=false;
		}
		Vector<Integer> vRandom=new Vector<Integer>();
		if(faverlist.SelectAllData().size() > 0)
		{

//			int randomNum = ran.nextInt(faverlist.SelectAllData().size());
//			vRandom.add(randomNum);
//			for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
//				if(faverlist.SelectAllData().get(randomNum).get("col1").equals(Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_id()) ){
//					image[countS]= 1;
//					text[countS]= Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name();
//					text2[countS]= Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_count() ;
//					Exercise[countS]=Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_name() ;
//					countS++;
//					break;
//				}
//			}
			int maxfaver=faverlist.SelectAllData().size();
			int cc=0;
			if(countS < faverlist.SelectAllData().size())
			{
				while((cc <maxfaver) && (cc <6))
				{
					int randomNum2 = ran.nextInt(faverlist.SelectAllData().size());
					while (vRandom.contains(randomNum2)) {
						randomNum2 = ran.nextInt(faverlist.SelectAllData().size());
					}
					vRandom.add(randomNum2);
					for (int i = 0; i < Database_File_Confix_Center.getOutput_data_List.size(); i++) {
						if (faverlist.SelectAllData().get(randomNum2).get("col1").equals(Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_id()) && (faverlist.SelectAllData().get(randomNum2).get("col2").equals("1"))) {
							image[countS] = 1;
							text[countS] = Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name();
							text2[countS] = Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_count();
							Exercise[countS] = Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_name();
							countS++;
							break;
						}
					}
					cc++;
				}
			}
		}

		for(int i=0;i<potition.length;i++){

			if( countS<10){

				image[countS]= 0;
				text[countS]= Database_File_Confix_Center.getOutput_data_List.get(potition[i]).getRestaurant_name();
				text2[countS]= Database_File_Confix_Center.getOutput_data_List.get(potition[i]).getRestaurant_count() ;
				Exercise[countS]=Database_File_Confix_Center.getOutput_data_List.get(potition[i]).getCategory_name() ;
//				if(faverlist.SelectAllData().get(i).get("col2").equals("1") && faverlist.SelectAllData().get(i).get("col1").equals(Database_File_Confix_Center.getOutput_data_List.get(potition[i]).getRestaurant_id()))
//				{
//					image[countS]= 1;
//				}
				countS++;
			}

		}
//		for(int i=0;i<Database_File_Confix_Center.getOutput_data_List.size();i++){
//
//			if(Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_id().equals("23")){
//				if(countS<5){
//
//					image[countS]= 0;
//					text[countS]= Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_name();
//					text2[countS]= Database_File_Confix_Center.getOutput_data_List.get(i).getRestaurant_count() ;
//					Exercise[countS]=Database_File_Confix_Center.getOutput_data_List.get(i).getCategory_name() ;
//					countS++;
//				}
//
//			}
//
//
//		}


		for(int i=0;i<faverlist.SelectAllData().size();i++) {
			if(faverlist.SelectAllData().get(i).get("col2").equals("1")){
				int countS_s=0;
//				for(int g=0;g<Database_File_Confix_Center.getOutput_data_List.size();g++){
//
//					if(Database_File_Confix_Center.getOutput_data_List.get(g).getCategory_id().equals("1")){
//
//						if(Integer.parseInt(faverlist.SelectAllData().get(i).get("col4").toString())==g){
//							image[countS_s]= 1;
//						}
//						countS_s++;
//					}
//
//
//				}
				/*for(int g=0;g<potition.length;g++){

					if( countS<6){
						if(Integer.parseInt(faverlist.SelectAllData().get(i).get("col4").toString())==potition[g]){
							image[countS_s]= 1;
						}
						countS_s++;

						//image[countS]= Database_File_Confix_Center.getOutput_data_List.get(potition[i]).getRestaurant_name();

					}

				}*/
			}
		}


		selectAllData=register.SelectAllData();

		for(int i=0;i<selectAllData.size();i++){
			if( i==0){
				File_Confixedata.user_accout_id=  selectAllData.get(i).get("Code");
			}
		}

		dataname_ =register.SelectDataCode(File_Confixedata.user_accout_id);




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
	}

	public static ArrayList<HashMap<String, String>> selectAllData;
	public static DatabaseRegister register;

	@Override
	public void onBackPressed() {
		super.onBackPressed();
		finish();
	}

	private void Add_Data(int pppp ) {

		Log.w ("SLCRETURNDATA", "1"+pppp);
		boolean seve_data=true;
		for(int i=0;i<faverlist.SelectAllData().size();i++){
			if(faverlist.SelectAllData().get(i).get("col1").equals(Database_File_Confix_Center.getOutput_data_List.get(pppp).getRestaurant_id()) ){
				seve_data=false;
				Code_Id=faverlist.SelectAllData().get(i).get("Code");
				Log.w ("SLCRETURNDATA", "2"+Code_Id);
			}
		}


		if(seve_data){
			Log.w ("SLCRETURNDATA", "4"+seve_data);

			faverlist.InsertData(null,Database_File_Confix_Center.getOutput_data_List.get(pppp).getRestaurant_id(),"1","1",Integer.toString(pppp),"","","","","");
			for(int i=0;i<faverlist.SelectAllData().size();i++){
				if(faverlist.SelectAllData().get(i).get("col1").equals(Database_File_Confix_Center.getOutput_data_List.get(pppp).getRestaurant_id()) ){
					Code_Id=faverlist.SelectAllData().get(i).get("Code");
				} else {

				}
			}
		}else{
			String[] SelectDataCode= faverlist.SelectDataCode(Code_Id);
			if(SelectDataCode[2].equals("1")){
				faverlist.UpdateData(Code_Id,Database_File_Confix_Center.getOutput_data_List.get(pppp).getRestaurant_id(),"0","1",Integer.toString(pppp),"","","","","");

			}else{
				faverlist.UpdateData(Code_Id,Database_File_Confix_Center.getOutput_data_List.get(pppp).getRestaurant_id(),"1","1",Integer.toString(pppp),"","","","","");
			}

		}


	}
	public static void refreshdata()
	{

		//Setdata();
	}

	@Override
	protected void onResume() {
		super.onResume();
		//if(check_load){
		check_load=false;

		//Setdata();
		//}

	}


	private void Load1() {
		// TODO Auto-generated method stub
		String	android_id = Settings.Secure.getString(getContentResolver(),Settings.Secure.ANDROID_ID);
		AsyncHttpClient client = new AsyncHttpClient();
		client.get("http://www.clickforbuild.com/calorie/getrestaurant.php?deviceid="+android_id, new AsyncHttpResponseHandler() {

			@Override
			public void onFailure(int arg0, Header[] arg1, byte[] arg2,
								  Throwable arg3) {
				// TODO Auto-generated method stub

			}
			@Override
			public void onSuccess(int arg0, Header[] arg1, byte[] arg2) {
				// TODO Auto-generated method stub
				String str = null;
				try {
					str = new String(arg2, "UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				SharedPreferences settings = getSharedPreferences("DATABASE_BRANCHLIST", 0);
				SharedPreferences.Editor prefsEd = settings.edit();
				prefsEd.putString("dataBranchList", str);
				prefsEd.commit();

				Load2();
			}
		});
	}
	private void Load2() {
		// TODO Auto-generated method stub
		AsyncHttpClient client = new AsyncHttpClient();
		client.get("http://www.clickforbuild.com/calorie/getcategory.php", new AsyncHttpResponseHandler() {

			@Override
			public void onFailure(int arg0, Header[] arg1, byte[] arg2,
								  Throwable arg3) {
				// TODO Auto-generated method stub

			}
			@Override
			public void onSuccess(int arg0, Header[] arg1, byte[] arg2) {
				// TODO Auto-generated method stub
				String str = null;
				try {
					str = new String(arg2, "UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				SharedPreferences Categorysettings = getSharedPreferences("DATABASE_CATEGORY", 0);
				SharedPreferences.Editor prefsEdCategory = Categorysettings.edit();
				prefsEdCategory.putString("dataListCategory", str);
				prefsEdCategory.commit();
				Lodedata ();
			}
		});
	}
	private void Lodedata() {
		// TODO Auto-generated method stub




		SharedPreferences dataList = getSharedPreferences("DATABASE_BRANCHLIST", 0);
		String dataBranchList = dataList.getString("dataBranchList", "");
		System.out.println(dataBranchList);


		Gson gson = new Gson();


		FoodDataAll foodDataalls=   gson.fromJson(dataBranchList, FoodDataAll.class);
		Database_File_Confix_Center.getOutput_data_List= foodDataalls.getOutput();
		System.out.println("size ="+Database_File_Confix_Center.getOutput_data_List.size());

		System.out.println("rest name="+Database_File_Confix_Center.getOutput_data_List.get(0).getRestaurant_name());


	}
}