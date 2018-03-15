package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TabHost;

import caloriefood.projectandroid.com.caloriefood.R;

public class TabFoodAllFa extends Activity {

	private TabHost myTabHost;
	private LocalActivityManager myLocalActivityManager;


	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.tabhostfa_top);


		myTabHost = (TabHost) findViewById(R.id.TabHostMasterUNG);


		myLocalActivityManager = new LocalActivityManager(this, false);
		myTabHost.setup(myLocalActivityManager);
		myLocalActivityManager.dispatchCreate(savedInstanceState);

		TabHost.TabSpec spec;
		Intent goSecond = new Intent().setClass(this, Favorite.class);
		spec = myTabHost.newTabSpec("tabSecond").setIndicator("มื้อเช้า",getResources().getDrawable(R.mipmap.ic_launcher_list)).setContent(goSecond);
		myTabHost.addTab(spec);

		Intent goFirst = new Intent().setClass(this, Favorite1.class);
		spec = myTabHost.newTabSpec("tabFirst").setIndicator("มื้อกลางวัน",getResources().getDrawable(R.mipmap.ic_launcher_list)).setContent(goFirst);
		myTabHost.addTab(spec);

		Intent goFirst1 = new Intent().setClass(this, Favorite2.class);
		spec = myTabHost.newTabSpec("tabFirst1").setIndicator("มื้อเย็น",getResources().getDrawable(R.mipmap.ic_launcher_list)).setContent(goFirst1);
		myTabHost.addTab(spec);

	}

	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		myLocalActivityManager.dispatchPause(isFinishing());
	}

	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		myLocalActivityManager.dispatchResume();
	}
}


