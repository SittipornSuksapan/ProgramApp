package com.example.fonnatrada.mycalories;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AutoCompleteTextView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;

import caloriefood.projectandroid.com.caloriefood.Database_File_Confix_Center;
import caloriefood.projectandroid.com.caloriefood.R;

/**
 * @author Adil Soomro
 *
 */
public class Favorite1 extends Activity {
    ListView listListView;

    protected static final int RESULT_SPEECH = 1;
   private int[] myIntArray ;
    private String[] Code_ ;
    //private int[] myIntArray ;
    private int count=0;
    Databasefa1 data_;
    TextView titel;
    AutoCompleteTextView searchPal;
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.listview_cat);
        data_=new Databasefa1(Favorite1.this);


 
          titel = (TextView) findViewById(R.id.texttitel);


        searchPal = (AutoCompleteTextView) findViewById(R.id.autoCompleteTextView2);
        searchPal.setVisibility(View.GONE);
       listListView = (ListView) findViewById(R.id.listview);


        }

    @Override
    protected void onStart() {
        super.onStart();
        Setdataandroid();
    }
    @Override
    protected void onResume() {

        super.onResume();
        Setdataandroid();
        //Toast.makeText(Calories_TOTAL.this,"บันทึกข้อมูลเรียบร้อย ครับ/ค่ะ"  , Toast.LENGTH_SHORT).show();
    }

    private void Setdataandroid() {
        count=0;
        for(int i=0;i<data_.SelectAllData().size();i++) {
            if(data_.SelectAllData().get(i).get("col2").equals("1")){
                count++;
            }
        }
        if(count>0){
            // getSupportActionBar().setTitle(Html.fromHtml("<font style='normal' color='#ffffff'>"+"favorite"+" </font>")) ;
            titel.setText("");
            titel.setVisibility(View.GONE);
        }else{
            // getSupportActionBar().setTitle(Html.fromHtml("<font style='normal' color='#ffffff'>"+"No Favorite"+" </font>")) ;
            titel.setVisibility(View.VISIBLE);
            titel.setText("ไม่มีรายการโปรดในมื้อกลางวัน");
        }

        myIntArray = new int[count];
      Code_ = new String[count];
        int y=0;
        for(int i=0;i<data_.SelectAllData().size();i++) {
            if(data_.SelectAllData().get(i).get("col2").equals("1")){
                myIntArray[y]=Integer.parseInt(data_.SelectAllData().get(i).get("col4").toString()) ;
                Code_[y]=data_.SelectAllData().get(i).get("Code").toString();
                Log.w ("SLCRETURNDATA", "4 "+myIntArray[y]);
                y++;
            }
        }


        listListView.setAdapter(new CustomListViewAdapter( ));
    }

    public class CustomListViewAdapter extends BaseAdapter {

        public int getCount() {
            return count;
        }

        public Object getItem(int position) {
            return position;
        }

        public long getItemId(int position) {
            return position;
        }

        public View getView(final int position, View convertView, ViewGroup parent) {
            ViewHolder holder;

            if (convertView == null) {
                convertView = LayoutInflater.from(getApplicationContext()).inflate(R.layout.listview_inbox, null);
                holder = new ViewHolder();
                holder.titleTextView = (TextView) convertView.findViewById(R.id.title);
                holder.descTextView = (TextView) convertView.findViewById(R.id.artistsss);
                holder.textView1 = (TextView) convertView.findViewById(R.id.textView1);
                holder.relativeLayoutthumbnail = (RelativeLayout) convertView.findViewById(R.id.relativeLayoutthumbnail);
                holder.authorImageView = (ImageView) convertView.findViewById(R.id.list_image);
                holder.authorImageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        final String newsID = v.getTag(R.id.list_image).toString();
                        //Toast.makeText(getApplicationContext(),"  ครับ/ค่ะ" +newsID , Toast.LENGTH_SHORT).show();
                        data_.DeleteData(newsID);
                        Setdataandroid();
                    }
                });

                convertView.setTag(holder);
            } else {
                holder = (ViewHolder) convertView.getTag();
            }

             holder.titleTextView.setText(Database_File_Confix_Center.getOutput_data_List.get(myIntArray[position]).getCategory_name());
             holder.descTextView.setText(Database_File_Confix_Center.getOutput_data_List.get(myIntArray[position]).getRestaurant_name());
            holder.textView1.setText( Database_File_Confix_Center.getOutput_data_List.get(myIntArray[position]).getRestaurant_count() +" กิโลแคลอรี่");


       // if(Database_File_Confix_Center.getOutput_data_List.get(myIntArray[position]).getImage_product().size()>0){
//            imgFitness.setImageResource(R.mipmap.ic_action_halfhart_icon);
           Glide.with(getApplicationContext()).load( R.mipmap.ic_action_halfhart_icon).into(holder.authorImageView);
       // }

       holder.authorImageView.setTag(R.id.list_image,  Code_[position] );
            return convertView;
        }
        public class ViewHolder {
            TextView titleTextView;
            ImageView authorImageView;
            TextView textView1;
            TextView descTextView;
            RelativeLayout relativeLayoutthumbnail;

        }
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