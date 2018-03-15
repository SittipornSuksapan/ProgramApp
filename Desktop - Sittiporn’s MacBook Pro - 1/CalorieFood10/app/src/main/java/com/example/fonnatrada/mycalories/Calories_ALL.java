package com.example.fonnatrada.mycalories;


import android.app.ExpandableListActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.HashMap;


public class Calories_ALL extends ExpandableListActivity implements OnChildClickListener {
	ArrayList<ArrayList<HashMap<String, String>>> nodes;
	private ArrayList<HashMap<String, String>> output;
	private ArrayList<HashMap<String, String>> al;
	private DatabaseRegister namedata;

	private DatabaseFood foodData;
	private ArrayList<HashMap<String, String>> selectAllData_listdata;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);


		foodData=new DatabaseFood(this);
		namedata=new DatabaseRegister(this);
		setTitle("ประวัติการทาน");

	}
	@Override
	protected void onResume() {
		super.onResume();
		Setdataandroid();

	}
	@Override
	public void onStart(){
		super.onStart();

		Setdataandroid();
	}
	private void Setdataandroid() {
		// TODO Auto-generated method stub

		ExpandableListView expandbleLis = getExpandableListView();
		expandbleLis.setDividerHeight(2);
		expandbleLis.setGroupIndicator(null);
		expandbleLis.setClickable(true);
		setGroupData();


		Calories_ALL_Group mNewAdapter = new Calories_ALL_Group(al, nodes);
		mNewAdapter.setInflater((LayoutInflater) getSystemService(Context.LAYOUT_INFLATER_SERVICE),this);
		getExpandableListView().setAdapter(mNewAdapter);
		expandbleLis.setOnChildClickListener(this);
	}

	public void setGroupData() {

		selectAllData_listdata= foodData.SelectAllData();
		String date_equ="";
		groupItem.clear();
		for(int k=0;k<selectAllData_listdata.size();k++){

			if(selectAllData_listdata.get(k).get("col1").equals( File_Confixedata.user_accout_id)&&selectAllData_listdata.get(k).get("col7").equals(date_equ)){

			}else if(selectAllData_listdata.get(k).get("col1").equals( File_Confixedata.user_accout_id)){

				date_equ=selectAllData_listdata.get(k).get("col7");

				groupItem.add(date_equ);
			}else{

			}
		}

		nodes = new ArrayList<ArrayList<HashMap<String, String>>>();
		al= new ArrayList<HashMap<String, String>>();
		String date=" ";

		double value =0;
		String sd="";
		for(int i=0;i<groupItem.size();i++){
			value= 0;
			output= new ArrayList<HashMap<String, String>>();
			HashMap<String, String> hashMapAll = new HashMap<String, String>();

			for(int k=0;k<selectAllData_listdata.size();k++){
				if(selectAllData_listdata.get(k).get("col1").equals( File_Confixedata.user_accout_id)&&selectAllData_listdata.get(k).get("col7").equals(groupItem.get(i))){
					date=selectAllData_listdata.get(k).get("col7");
					HashMap<String, String> hashMap = new HashMap<String, String>();
					hashMap.put("col2", selectAllData_listdata.get(k).get("col2"));
					hashMap.put("col3", selectAllData_listdata.get(k).get("col5"));
					hashMap.put("col4",selectAllData_listdata.get(k).get("col4")+"  Kcal.");
					value= value+ Double.parseDouble(selectAllData_listdata.get(k).get("col4"));
					sd= selectAllData_listdata.get(k).get("col8");
					output.add(hashMap);
				}
			}

			String aString = Double.toString(value);
			hashMapAll.put("Key1", groupItem.get(i));
			hashMapAll.put("Key2",aString);
			hashMapAll.put("Key3",sd);


			nodes.add(output);
			al.add (hashMapAll);
		}


	}

	ArrayList<String> groupItem = new ArrayList<String>();




	@Override
	public boolean onChildClick(ExpandableListView parent, View v,
								int groupPosition, int childPosition, long id) {
		//al.get(0).get
		Toast.makeText(Calories_ALL.this, "Clicked On Child",
				Toast.LENGTH_SHORT).show();
		return true;
	}
	@Override
	public void onBackPressed() {
		super.onBackPressed();
		Intent intent = new Intent(Intent.ACTION_MAIN);
		intent.addCategory(Intent.CATEGORY_HOME);
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		startActivity(intent);
	}
}