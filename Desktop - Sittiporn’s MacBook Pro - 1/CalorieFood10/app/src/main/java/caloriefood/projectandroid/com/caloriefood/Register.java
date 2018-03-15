//package caloriefood.projectandroid.com.caloriefood;
//
//import android.app.Activity;
//import android.app.ProgressDialog;
//import android.content.Intent;
//import android.content.SharedPreferences;
//import android.graphics.Bitmap;
//import android.graphics.Bitmap.CompressFormat;
//import android.graphics.drawable.BitmapDrawable;
//import android.net.Uri;
//import android.os.Bundle;
//import android.os.Environment;
//import android.provider.MediaStore.Images.Media;
//import android.util.Log;
//import android.view.View;
//import android.widget.AdapterView;
//import android.widget.AdapterView.OnItemSelectedListener;
//import android.widget.ArrayAdapter;
//import android.widget.Button;
//import android.widget.EditText;
//import android.widget.Spinner;
//import android.widget.TextView;
//import android.widget.Toast;
//
//import com.loopj.android.http.AsyncHttpClient;
//import com.loopj.android.http.AsyncHttpResponseHandler;
//import com.loopj.android.http.RequestParams;
//
//import com.loopj.android.http.*;
//import com.loopj.android.http.AsyncHttpClient;
//
//import com.google.gson.Gson;
//import com.loopj.android.http.AsyncHttpClient;
//import com.loopj.android.http.AsyncHttpResponseHandler;
//
//
//import java.io.UnsupportedEncodingException;
//
//import cz.msebera.android.httpclient.Header;
//
//import java.io.UnsupportedEncodingException;
//
//
//import java.io.BufferedOutputStream;
//import java.io.File;
//import java.io.FileNotFoundException;
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.io.UnsupportedEncodingException;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Random;
//
//
//public class Register extends Activity {
//	ProgressDialog pDialog ;
//	private Bitmap bitmapSave=null;
//	public static final int REQUEST_GALLERY = 1;
//	static final int DATE_DIALOG_ID = 999;
//
//
//	private EditText text1;
//	private EditText text2;
//	private EditText text3;
//	private EditText text4;
//	private EditText text5;
//	private EditText text6;
//	private EditText text7;
//	private String nameType;
//	private Button btnCancel,btnSubmit;
//	private Uri part;
//	 String fname ;
//	@Override
//	protected void onCreate(Bundle savedInstanceState)
//	{
//	    super.onCreate(savedInstanceState);
//	    setContentView(R.layout.activity_main_register);
//
//
//	    text1 = (EditText) findViewById(R.id.text1);
//	    text2 = (EditText) findViewById(R.id.text2);
//	    text3 = (EditText) findViewById(R.id.text3);
//	    text4 = (EditText) findViewById(R.id.text4);
//	    text5 = (EditText) findViewById(R.id.text5);
//	    text6= (EditText) findViewById(R.id.text6);
//	    text7= (EditText) findViewById(R.id.text7);
//
//
//		//เพศ
//        // Spinner element
//        Spinner spinner1 = (Spinner) findViewById(R.id.spinner1);
//        // Spinner click listener
//        // Spinner Drop down elements
//        final List<String> categories1= new ArrayList<String>();
//        categories1.add("ชาย");
//        categories1.add("หญิง");
//
//        // Creating adapter for spinner
//		ArrayAdapter<String> dataAdapter1 = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, categories1);
//		// Drop down layout style - list view with radio button
//		dataAdapter1.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
//		// attaching data adapter to spinner
//		spinner1.setAdapter(dataAdapter1);
//		spinner1.setOnItemSelectedListener(new OnItemSelectedListener() {
//		    @Override
//		    public void onItemSelected(AdapterView<?> parentView, View selectedItemView, int position, long id) {
//		        // your code here
//		    	nameType=categories1.get(position).toString();
//		    }
//		    @Override
//		    public void onNothingSelected(AdapterView<?> parentView) {
//		        // your code here
//		    }
//		});
//		btnSubmit= (Button) findViewById(R.id.btnSubmit);
//		btnSubmit.setOnClickListener(new View.OnClickListener() {
//			public void onClick(View view) {
//				  pDialog = new ProgressDialog(Register.this);
//			        pDialog.setMessage("Loading ....");
//			        pDialog.setIndeterminate(false);
//			        pDialog.setCancelable(false);
//			        pDialog.show();
//				String qrPath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/myAppDirs/"+"myImagesLocation"+fname;
//
//
//
//                 AsyncHttpClient client = new AsyncHttpClient();
//
//                 RequestParams params = new RequestParams();
//
//                     params.put("username", text1.getText().toString());
//                     params.put("password", text2.getText().toString());
//                     params.put("data1", text3.getText().toString());
//                     params.put("data2", text4.getText().toString());
//                     params.put("data3", text5.getText().toString());
//                     params.put("data4", text6.getText().toString());
//                     params.put("data5", text7.getText().toString());
//                     params.put("data6", nameType);
//                     params.put("image", "");
//                     params.put("fileUpload", "");
//                     client.post("http://drive-utcc.com/RestuarantCalorie/index.php/APIRestaurant/add_register", params, new AsyncHttpResponseHandler() {
//                         @Override
//                         public void onStart() {
//                         super.onStart();
//                         }
//                         @Override
//                         public void onFailure(int arg0, Header[] arg1, byte[] arg2,
//                                 Throwable arg3) {
//                             // TODO Auto-generated method stub
//                        	 pDialog.cancel();
//
//
//                         }
//
//                         @Override
//                         public void onSuccess(int arg0, Header[] arg1, byte[] arg2) {
//                             // TODO Auto-generated method stub
//                         	String str = null;
//         					try {
//         						str = new String(arg2, "UTF-8");
//         					} catch (UnsupportedEncodingException e) {
//         						// TODO Auto-generated catch block
//         						e.printStackTrace();
//         					}
//
//         					 Load1();
//
//         					Log.i("", str);
//                             Toast.makeText(getApplicationContext(), "Success!", Toast.LENGTH_LONG).show();
//                         }
//
//                     });
//
//
//			}
//		});
//
//		btnCancel= (Button) findViewById(R.id.btnCancel);
//		btnCancel.setOnClickListener(new View.OnClickListener() {
//			public void onClick(View view) {
//				text1.setText(" ");
//				text2.setText(" ");
//				text3.setText(" ");
//				text4.setText(" ");
//				text5.setText(" ");
//				text6.setText(" ");
//				text7.setText(" ");
//
//			}
//		});
//	}
//
//
//
//	@Override
//	public void onBackPressed() {
//		Register.this.finish();
//		   Intent i = new Intent(Register.this, Login.class);
//           startActivity(i);
//       // overridePendingTransition(R.anim.right_to_center, R.anim.center_to_right);
//    }
//
//
//
//	private void Load1() {
//		// TODO Auto-generated method stub
//		 AsyncHttpClient client = new AsyncHttpClient();
//		 client.setTimeout(120000);
//		 client.get("http://drive-utcc.com/RestuarantCalorie/index.php/APIRestaurant/getAllUser", new AsyncHttpResponseHandler() {
//
//
//			@Override
//			public void onSuccess(int arg0, Header[] arg1, byte[] arg2) {
//				// TODO Auto-generated method stub
//				String str = null;
//				try {
//					str = new String(arg2, "UTF-8");
//				} catch (UnsupportedEncodingException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//
//				   SharedPreferences Categorysettings = getSharedPreferences("DATABASE_ALLUSER", 0);
//			       SharedPreferences.Editor prefsEdCategory = Categorysettings.edit();
//			       prefsEdCategory.putString("dataListgetAllUser", str);
//			       prefsEdCategory.commit();
//
//
//
//			  	   pDialog.cancel();
//
//			       Intent intent = new Intent(Register.this, Login.class);
//			       intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//	               startActivity(intent);
//
//
//			}
//
//			@Override
//			public void onFailure(int arg0, Header[] arg1, byte[] arg2,
//					Throwable arg3) {
//				// TODO Auto-generated method stub
//
//			}
//
//		 });
//	}
//}
