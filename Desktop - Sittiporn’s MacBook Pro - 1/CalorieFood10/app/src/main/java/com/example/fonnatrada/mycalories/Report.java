package com.example.fonnatrada.mycalories;


import android.app.ExpandableListActivity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.HashMap;


public class Report extends ExpandableListActivity implements OnChildClickListener {
	ArrayList<ArrayList<HashMap<String, String>>> nodes;
	private ArrayList<HashMap<String, String>> output;
	private ArrayList<HashMap<String, String>> al;

	 

	private DatabaseFood foodData;
	private DatabaseFitnessActicity exsersie ;
	private ArrayList<HashMap<String, String>> selectAllData_listdatafoodData;

	private ArrayList<HashMap<String, String>> selectAllData_listdataexsersie;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);


		foodData=new DatabaseFood(this);
		exsersie=new DatabaseFitnessActicity(this);

	 

	}
	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
		super.onBackPressed();
		Report.this.finish();

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


		Report_ALL_Group mNewAdapter = new Report_ALL_Group(al  );
		mNewAdapter.setInflater((LayoutInflater) getSystemService(Context.LAYOUT_INFLATER_SERVICE),this);
		getExpandableListView().setAdapter(mNewAdapter);
		expandbleLis.setOnChildClickListener(this);
	}

	public void setGroupData() {

		selectAllData_listdatafoodData= foodData.SelectAllData();
		selectAllData_listdataexsersie=exsersie.SelectAllData();
		String date_equ="";

		for(int k=0;k<selectAllData_listdatafoodData.size();k++){

			if(selectAllData_listdatafoodData.get(k).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_listdatafoodData.get(k).get("col7").equals(date_equ)){

			}else if(selectAllData_listdatafoodData.get(k).get("col1").equals(File_Confixedata.user_accout_id)){

				date_equ=selectAllData_listdatafoodData.get(k).get("col7");

				groupItem.add(date_equ);
			}else{

			}
		}

		nodes = new ArrayList<ArrayList<HashMap<String, String>>>();
		al= new ArrayList<HashMap<String, String>>();
		String date=" ";

		double value =0;
		String sd="";

		double value1 =0;
		String sd1="";


		for(int i=0;i<groupItem.size();i++){
			value= 0;
			output= new ArrayList<HashMap<String, String>>();
			HashMap<String, String> hashMapAll = new HashMap<String, String>();

			for(int k=0;k<selectAllData_listdatafoodData.size();k++){
				if(selectAllData_listdatafoodData.get(k).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_listdatafoodData.get(k).get("col7").equals(groupItem.get(i))){
					date=selectAllData_listdatafoodData.get(k).get("col7");
					HashMap<String, String> hashMap = new HashMap<String, String>();
					hashMap.put("col2", selectAllData_listdatafoodData.get(k).get("col2"));
					hashMap.put("col3", selectAllData_listdatafoodData.get(k).get("col5"));
					hashMap.put("col4",selectAllData_listdatafoodData.get(k).get("col4")+" Kcal.");
					value= value+ Double.parseDouble(selectAllData_listdatafoodData.get(k).get("col4"));
					sd= selectAllData_listdatafoodData.get(k).get("col8");
					output.add(hashMap);
				}
			}





			value1= 0;



			for(int k=0;k<selectAllData_listdataexsersie.size();k++){
				if(selectAllData_listdataexsersie.get(k).get("col1").equals(File_Confixedata.user_accout_id)&&selectAllData_listdataexsersie.get(k).get("col7").equals(groupItem.get(i))){

					value1= value1+ Double.parseDouble(selectAllData_listdataexsersie.get(k).get("col3"));
					sd1= selectAllData_listdataexsersie.get(k).get("col8");

				}
			}
			String aString = Double.toString(value);
			String aString1 = Double.toString(value1);

			hashMapAll.put("Key1", groupItem.get(i));
			hashMapAll.put("Key2",aString);
			hashMapAll.put("Key3",sd);

			hashMapAll.put("Key4",aString1);
			hashMapAll.put("Key5",sd1);

			nodes.add(output);
			al.add (hashMapAll);
		}


	}

	ArrayList<String> groupItem = new ArrayList<String>();




	@Override
	public boolean onChildClick(ExpandableListView parent, View v,
                                int groupPosition, int childPosition, long id) {
		//al.get(0).get
		Toast.makeText(Report.this, "Clicked On Child",
				Toast.LENGTH_SHORT).show();
		return true;
	}
}