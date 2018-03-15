package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TabHost;

import caloriefood.projectandroid.com.caloriefood.R;

public class TabFoodAll extends Activity {

	private TabHost myTabHost;
	private LocalActivityManager myLocalActivityManager;

public static Context foodContext=null;
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.tabhost_top);

foodContext=this;
		myTabHost = (TabHost) findViewById(R.id.TabHostMasterUNG);


		myLocalActivityManager = new LocalActivityManager(this, false);
		myTabHost.setup(myLocalActivityManager);
		myLocalActivityManager.dispatchCreate(savedInstanceState);

		TabHost.TabSpec spec;
		Intent goSecond = new Intent().setClass(this, Calories_FOOD1.class);
		spec = myTabHost.newTabSpec("tab1").setIndicator("มื้อเช้า",getResources().getDrawable(R.mipmap.ic_launcher_list)).setContent(goSecond);
		myTabHost.addTab(spec);

		Intent goFirst = new Intent().setClass(this, Calories_FOOD2.class);
		spec = myTabHost.newTabSpec("tab2").setIndicator("มื้อกลางวัน",getResources().getDrawable(R.mipmap.ic_launcher_list)).setContent(goFirst);
		myTabHost.addTab(spec);

		Intent goFirst1 = new Intent().setClass(this, Calories_FOOD3.class);
		spec = myTabHost.newTabSpec("tab3").setIndicator("มื้อเย็น",getResources().getDrawable(R.mipmap.ic_launcher_list)).setContent(goFirst1);
		myTabHost.addTab(spec);


		myTabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener(){
			@Override
			public void onTabChanged(String tabId) {
				if("tab1".equals(tabId)) {
					//Do first activity task
Calories_FOOD1.istabselected=true;
				}
				else if("tab2".equals(tabId)) {
					//Do the other task...so on
					Calories_FOOD2.istabselected=true;
				}
				else if("tab3".equals(tabId)) {
					//Do the other task...so on
					Calories_FOOD3.istabselected=true;
				}
			}});
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


