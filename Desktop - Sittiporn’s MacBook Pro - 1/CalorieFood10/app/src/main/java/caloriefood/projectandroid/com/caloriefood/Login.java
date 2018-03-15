//package caloriefood.projectandroid.com.caloriefood;
//
//
//import android.app.Activity;
//import android.content.Intent;
//import android.content.SharedPreferences;
//import android.os.Bundle;
//import android.view.View;
//import android.view.View.OnClickListener;
//import android.widget.Button;
//import android.widget.EditText;
//import android.widget.Toast;
//
//import com.example.fonnatrada.mycalories.ProfileActivity;
//import com.example.fonnatrada.mycalories.screen;
//import com.google.gson.Gson;
//
//import org.json.JSONArray;
//import org.json.JSONException;
//import org.json.JSONObject;
//
//
//
//
//public class Login extends Activity {
//	 JSONArray jo  ;
//		JSONArray jsonarray= null;
//		 JSONObject obj= null;
//
//
//	 EditText User,Passpord;
//	// private ProgressDialog progressDialog;
//		@Override
//		protected void onCreate(Bundle savedInstanceState) {
//			super.onCreate(savedInstanceState);
//			setContentView(R.layout.login_addmin);
//            User = (EditText)findViewById(R.id.User);
//            Passpord = (EditText)findViewById(R.id.Passpord);
//
//
//
//
//
//			Button buttonEnter = (Button)findViewById(R.id.buttonEnter);
//			buttonEnter.setOnClickListener(new OnClickListener() {
//				public void onClick(View v) {
//					if(User.getText().toString()==null||User.getText().toString().equals("")
//							||Passpord.getText().toString()==null||Passpord.getText().toString().equals("")){
//						Toast.makeText(getApplicationContext(), "กรุณากรอก user password", Toast.LENGTH_LONG).show();
//
//
//
//					}else{
//						LoginPass();
//
//					}
//
//				}
//
//
//			});
//
//			Button buttonEnterregister = (Button)findViewById(R.id.buttonEnterregister);
//			buttonEnterregister.setOnClickListener(new OnClickListener() {
//				public void onClick(View v) {
//					 Intent i = new Intent(Login.this, Register.class);
//			           startActivity(i);
//
//				}
//
//
//			});
//
//
//
//
//
//
//		}
//
//
//
//		private void LoginPass() {
//			// TODO Auto-generated method stub
//			String username=User.getText().toString();
//			String password=Passpord.getText().toString();
//
//			SharedPreferences dataList = getSharedPreferences("DATABASE_ALLUSER", 0);
//			String Login = dataList.getString("dataListgetAllUser", "");
//			jo = new JSONArray();
//			JSONObject objs= null;
//	        try {
//				obj=new JSONObject(Login);
//				jsonarray = obj.getJSONArray("output");
//				for(int i=0;i<jsonarray.length();i++){
//					objs =jsonarray.getJSONObject(i);
//					if(objs.getString("username").equals(username)&&objs.getString("password").equals(password)){
//						jo.put(objs);
//					}
//				}
//			} catch (JSONException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			    }
//
//
//
//			if(jo.length()>0 ){
//				JSONObject data55555 = new JSONObject();
//				try {
//					data55555 =jo.getJSONObject(0);
//
//					Database_File_Confix_Center.profile=data55555;
//				} catch (JSONException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//
//				  Intent i = new Intent(Login.this, ProfileActivity.class);
//	               startActivity(i);
//			}else{
//				Toast.makeText(getApplicationContext(), "User or Passpord  ผิด", Toast.LENGTH_LONG).show();
//
//			}
//		}
//		@Override
//		public void onBackPressed() {
//			Intent intent = new Intent(Intent.ACTION_MAIN);
//    		intent.addCategory(Intent.CATEGORY_HOME);
//    		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//    		startActivity(intent);
//	         Login.this.finish();
//		}
//	}
