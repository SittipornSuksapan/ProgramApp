package mean.chan.mind.sendgps;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;


public class NumberAdapter extends BaseAdapter{

    //Explicit
    private Context context;
    private String[] titleStrings, titleStrings2;



    public NumberAdapter(Context context, String[] titleStrings, String[] titleStrings2) {
        this.context = context;
        this.titleStrings = titleStrings;
        this.titleStrings2 = titleStrings2;
    }//Constructor


    @Override
    public int getCount() {
        return titleStrings.length;
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }




    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {

        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View view1 = layoutInflater.inflate(R.layout.number_listview, viewGroup, false);

        TextView numTextView = (TextView) view1.findViewById(R.id.textView8); //เปลี่ยนเป็น textview อัตโนมัติ
        String strNum = Integer.toString(i + 1);
        numTextView.setText(strNum + ".");

        TextView titleTextView = (TextView) view1.findViewById(R.id.textView9);
        titleTextView.setText(titleStrings[i]);

        TextView titleTextView2 = (TextView) view1.findViewById(R.id.textView10);
        titleTextView2.setText(titleStrings2[i]);



        return view1;
    }
}// main class
