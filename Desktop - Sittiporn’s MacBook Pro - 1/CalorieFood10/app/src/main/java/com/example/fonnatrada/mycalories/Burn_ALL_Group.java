package com.example.fonnatrada.mycalories;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.HashMap;

import caloriefood.projectandroid.com.caloriefood.R;


public class Burn_ALL_Group extends BaseExpandableListAdapter {



	public ArrayList<ArrayList<HashMap<String, String>>> detail = new ArrayList<ArrayList<HashMap<String, String>>>();
	public LayoutInflater minflater;
	public Activity activity;
	ArrayList<HashMap<String, String>> all;

	public Burn_ALL_Group(ArrayList<HashMap<String, String>> al , ArrayList<ArrayList<HashMap<String, String>>> nodes) {

		this.detail = nodes;
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

		hashMap= detail.get(groupPosition).get(childPosition);

		TextView text = null;
		TextView text1 = null;
		TextView text2 = null;
		TextView text3 = null;

		if (convertView == null) {
			convertView = minflater.inflate(R.layout.listview_inside, null);
		}

		text = (TextView) convertView.findViewById(R.id.data_number);
		text1 = (TextView) convertView.findViewById(R.id.listview_item_title_medium);
		text2 = (TextView) convertView.findViewById(R.id.data_number_detail);
		text3 = (TextView) convertView.findViewById(R.id.listview_item_title_small);


		int k=childPosition;
		k++;
		text.setText(""+k);
		text1.setText(hashMap.get("col2"));
		text2.setText(hashMap.get("col3"));
		text3.setText(hashMap.get("col4"));
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
		return detail.get(groupPosition).size();
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
		TextView text2 = null;

		ImageView text3 = null;
		if (convertView == null) {
			convertView = minflater.inflate(R.layout.listview_group, null);
		}
		text1 = (TextView) convertView.findViewById(R.id.setTextView1);
		text2 = (TextView) convertView.findViewById(R.id.setTextView2);
		text3 = (ImageView) convertView.findViewById(R.id.setTextView3);
		//all

		HashMap<String, String> hashMapdata = new HashMap<String, String>();
		hashMapdata= all.get(groupPosition);
		text1.setText(hashMapdata.get("Key1"));
		text2.setText(hashMapdata.get("Key2"));


		double value= Double.parseDouble(hashMapdata.get("Key2"));

		double total = Double.parseDouble(hashMapdata.get("Key3"));



		int iamge;
		if(value>=total){
			iamge=R.mipmap.ic_launcher_draw; //red
		}else{
			iamge=R.mipmap.ic_launcher_draw; //green
		}

		text3.setBackgroundResource(iamge);

//	  ((CheckedTextView) convertView).setText(groupItem.get(groupPosition));
//	  ((CheckedTextView) convertView).setChecked(isExpanded);
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