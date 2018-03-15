package com.example.fonnatrada.mycalories;

import android.app.TabActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TabHost;

import caloriefood.projectandroid.com.caloriefood.R;


/**
 * @author Adil Soomro
 *
 */
public class TabHostMENU extends TabActivity {
	/** Called when the activity is first created. */

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.tabhost_menu);
		setTabs() ;
	}
	private void setTabs()
	{
		File_Confixedata.check_food="1";


		    addTab("food", R.mipmap.ic_launcher_home_2, TabFoodAll.class);
		 	addTab("total", R.mipmap.ic_launcher_resmenu, Calories_TOTAL.class);
		    addTab("fa", R.mipmap.ic_launcher_fa, TabFoodAllFa.class);
		 	addTab("all", R.mipmap.ic_launcher_his, Calories_ALL.class);
       // addTab("", R.mipmap.ic_action_new, AddFoodActivity.class);
		    addTab("admin", R.mipmap.ic_launcher_actoc2, TabHostADMIN .class);
		TabHost tabHost = getTabHost();
		tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener(){
			@Override
			public void onTabChanged(String tabId) {
				if("total".equals(tabId)) {
					//Do first activity task
					Calories_TOTAL.istabselected=true;
				}

			}});
	}


	private void addTab(String labelId, int drawableId, Class<?> c)
	{
		TabHost tabHost = getTabHost();
		Intent intent = new Intent(this, c);
		TabHost.TabSpec spec = tabHost.newTabSpec("tab" + labelId);

		View tabIndicator = LayoutInflater.from(this).inflate(R.layout.tab_indicator, getTabWidget(), false);
		//TextView title = (TextView) tabIndicator.findViewById(R.id.title);
		//title.setText(labelId);
		ImageView icon = (ImageView) tabIndicator.findViewById(R.id.icon);
		icon.setImageResource(drawableId);

		spec.setIndicator(tabIndicator);
		spec.setContent(intent);
		tabHost.addTab(spec);
	}
}