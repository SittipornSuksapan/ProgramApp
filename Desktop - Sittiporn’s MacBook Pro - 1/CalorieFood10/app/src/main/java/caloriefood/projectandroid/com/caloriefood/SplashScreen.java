package caloriefood.projectandroid.com.caloriefood;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.provider.Settings;
import android.support.multidex.MultiDex;

import com.example.fonnatrada.mycalories.ProfileActivity;
import com.google.gson.Gson;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;

import java.io.UnsupportedEncodingException;

import cz.msebera.android.httpclient.Header;



public class SplashScreen extends Activity {


		@Override
		protected void onCreate(Bundle savedInstanceState) {
			super.onCreate(savedInstanceState);
			setContentView(R.layout.activity_splash);

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

 

		protected void onStart ( ){
		    super.onStart ( );
		if(isOnline( )){
			 Load1();

		}else{
			 Lodedata();
		}

			
		
		  }
		private void Lodedata() {
			// TODO Auto-generated method stub




			SharedPreferences dataList = getSharedPreferences("DATABASE_BRANCHLIST", 0);
			String dataBranchList = dataList.getString("dataBranchList", "");
System.out.println(dataBranchList);


			Gson gson = new Gson();


			FoodDataAll  foodDataalls=   gson.fromJson(dataBranchList, FoodDataAll.class);
			Database_File_Confix_Center.getOutput_data_List= foodDataalls.getOutput();
System.out.println("size ="+Database_File_Confix_Center.getOutput_data_List.size());

			System.out.println("rest name="+Database_File_Confix_Center.getOutput_data_List.get(0).getRestaurant_name());
 	 			         Intent i = new Intent(SplashScreen.this, ProfileActivity.class);
 			             startActivity(i);



			
	 	}

		public boolean isOnline() {
		    ConnectivityManager cm =
		        (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);

		    return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting();
		}
	@Override
	protected void attachBaseContext(Context base) {
		super.attachBaseContext(base);
		try {
			MultiDex.install(this);
		}
		catch(Exception err)
		{
			err.printStackTrace();
		}
	}
	}
