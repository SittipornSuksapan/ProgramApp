package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.HashMap;

import caloriefood.projectandroid.com.caloriefood.R;

@SuppressWarnings("unchecked")
public class Report_ALL_Group extends BaseExpandableListAdapter {




	public LayoutInflater minflater;
	public Activity activity;
	ArrayList<HashMap<String, String>> all;

	public Report_ALL_Group(ArrayList<HashMap<String, String>> al  ) {


		this.all = al ;
	}

	public void setInflater(LayoutInflater mInflater, Activity act) {
		this.minflater = mInflater;
		activity = act;
	}

	@Override
	public Object getChild(int groupPosition, int childPosition) {
		return null;
	}

	@Override
	public long getChildId(int groupPosition, int childPosition) {
		return 0;
	}

	@Override
	public View getChildView(int groupPosition, final int childPosition,
                             boolean isLastChild, View convertView, ViewGroup parent) {

		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap= all.get(groupPosition);

		TextView text = null;
		TextView text1 = null;
		TextView text2 = null;


		if (convertView == null) {
			convertView = minflater.inflate(R.layout.listview_inside_report, null);
		}

		text = (TextView) convertView.findViewById(R.id.setdatatext1);
		text1 = (TextView) convertView.findViewById(R.id.setdatatext2);
		text2 = (TextView) convertView.findViewById(R.id.setdatatext3);


		String str="ได้รับพลังงาน";
		String str1="เผาผลาญพลังงาน";

		String strS="    ";
		String strS1="    ";
		text.setText(str+" "+hashMap.get("Key2")+"  Kcal");
		text1.setText(str1+"  "+hashMap.get("Key4")+"  Kcal");

		double aDouble1 = Double.parseDouble(hashMap.get("Key2"));
		double aDouble2 = Double.parseDouble(hashMap.get("Key4"));
		double totol=0;

		double totol1=0;
		if(aDouble1>aDouble2){
			totol= aDouble1-aDouble2;
			totol1=totol/7.7;
			text2.setText("ได้รับพลังงาน  "+totol+"  Kcal"  );

		}else{
			totol= aDouble2-aDouble1;
			totol1=totol/7.7;
			text2.setText("สูญเสียพลังงาน  "+totol+"  Kcal"  );
		}


		convertView.setOnClickListener(new OnClickListener() {
			@Override

			public void onClick(View v) {

				//Toast.makeText(activity, tempChild.get(childPosition),Toast.LENGTH_SHORT).show();
			}
		});
		return convertView;
	}

	@Override
	public int getChildrenCount(int groupPosition) {
		return 1;
	}

	@Override
	public Object getGroup(int groupPosition) {
		return null;
	}

	@Override
	public int getGroupCount() {
		return all.size();
	}

	@Override
	public void onGroupCollapsed(int groupPosition) {
		super.onGroupCollapsed(groupPosition);
	}

	@Override
	public void onGroupExpanded(int groupPosition) {
		super.onGroupExpanded(groupPosition);
	}

	@Override
	public long getGroupId(int groupPosition) {
		return 0;
	}

	@Override
	public View getGroupView(int groupPosition, boolean isExpanded,
                             View convertView, ViewGroup parent) {
		TextView text1 = null;

		if (convertView == null) {
			convertView = minflater.inflate(R.layout.listview_group_report, null);
		}
		text1 = (TextView) convertView.findViewById(R.id.setTextView1);

		//all

		HashMap<String, String> hashMapdata = new HashMap<String, String>();
		hashMapdata= all.get(groupPosition);
		text1.setText(hashMapdata.get("Key1"));




		return convertView;
	}

	@Override
	public boolean hasStableIds() {
		return false;
	}

	@Override
	public boolean isChildSelectable(int groupPosition, int childPosition) {
		return false;
	}

}