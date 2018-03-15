//package com.example.fonnatrada.mycalories.Activity;
//
//import android.app.Activity;
//import android.content.Context;
//import android.os.Bundle;
//import android.view.LayoutInflater;
//import android.view.View;
//import android.view.ViewGroup;
//import android.widget.BaseAdapter;
//import android.widget.ListView;
//import android.widget.TextView;
//
//import com.example.fonnatrada.mycalories.Database.myDBClass;
//
//import caloriefood.projectandroid.com.caloriefood.R;
//
//
//public class DetailWeightActivity extends Activity {
//    String arrData[][];
//
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_detail_weight);
//
//        final myDBClass myDb = new myDBClass(this);
//        arrData = myDb.SelectAllDataEvent();
//
//        // listView
//        final ListView showl = (ListView) findViewById(R.id.listViewDetailWeight);
//        showl.setAdapter(new ImageAdapter(this, arrData));
//
//    }
//    public class ImageAdapter extends BaseAdapter {
//        private Context context;
//        private String[][] lis;
//
//        public ImageAdapter(Context c, String[][] li) {
//            // TODO Auto-generated method stub
//            context = c;
//            lis = li;
//        }
//
//        public int getCount() {
//            // TODO Auto-generated method stub
//            if (arrData != null) {
//                return lis.length;
//            } else {
//                return 0;
//            }
//        }
//
//        public Object getItem(int position) {
//            // TODO Auto-generated method stub
//            return position;
//        }
//
//        public long getItemId(int position) {
//            // TODO Auto-generated method stub
//            return position;
//        }
//
//        public View getView(int position, View convertView, ViewGroup parent) {
//            // TODO Auto-generated method stub
//            LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
//            if (convertView == null) {
//                convertView = inflater.inflate(R.layout.item_detailweight, null);
//            }
//
//            TextView txtDate = (TextView) convertView.findViewById(R.id.tvdate);
//            txtDate.setText(lis[position][1].toString());
//
//            TextView txtFood1 = (TextView) convertView.findViewById(R.id.tvFood1);
//            //txtFood1.setPadding(0, 0, 0, 0);
//            txtFood1.setText(lis[position][2].toString());
//
//            TextView txtFood2 = (TextView) convertView.findViewById(R.id.tvFood2);
//            //txtFood2.setPadding(0, 0, 0, 0);
//            txtFood2.setText(lis[position][3].toString());
//
//            TextView txtFood3 = (TextView) convertView.findViewById(R.id.tvFood3);
//            //txtFood3.setPadding(0, 0, 0, 0);
//            txtFood3.setText(lis[position][4].toString());
//
//            TextView txtFitness = (TextView) convertView.findViewById(R.id.tvFitness);
//            //txtFood3.setPadding(0, 0, 0, 0);
//            txtFitness.setText(lis[position][5].toString());
//
//
//            TextView txtTotalCal = (TextView) convertView.findViewById(R.id.tvTotalCal);
//            //txtTotalCal.setPadding(0, 0, 0, 0);
//            txtTotalCal.setText(lis[position][6].toString());
//
//            TextView txtWeight = (TextView) convertView.findViewById(R.id.tvWeight);
//            //txtWeight.setPadding(0, 0, 0, 0);
//            txtWeight.setText(lis[position][7].toString());
//
//            return convertView;
//        }
//
//    }
//}
