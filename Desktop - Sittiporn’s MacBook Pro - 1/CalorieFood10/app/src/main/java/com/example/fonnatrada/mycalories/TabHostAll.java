package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TabHost;

import caloriefood.projectandroid.com.caloriefood.R;

public class TabHostAll extends Activity {

	private TabHost myTabHost;
	private LocalActivityManager myLocalActivityManager;


	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.tabhost_top);


		myTabHost = (TabHost) findViewById(R.id.TabHostMasterUNG);


		myLocalActivityManager = new LocalActivityManager(this, false);
		myTabHost.setup(myLocalActivityManager);
		myLocalActivityManager.dispatchCreate(savedInstanceState);

		TabHost.TabSpec spec;
		Intent goSecond = new Intent().setClass(this, Calories_TOTAL.class);
		spec = myTabHost.newTabSpec("tabSecond").setIndicator("รายการอาหาร",getResources().getDrawable(R.mipmap.ic_launcher_list)).setContent(goSecond);
		myTabHost.addTab(spec);

		Intent goFirst = new Intent().setClass(this, Burn_TOTAL.class);
		spec = myTabHost.newTabSpec("tabFirst").setIndicator("ออกกำลังกาย",getResources().getDrawable(R.mipmap.ic_launcher_list)).setContent(goFirst);
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


