//package com.example.fonnatrada.mycalories.Adapter;
//
//import android.content.Context;
//import android.database.Cursor;
//import android.view.LayoutInflater;
//import android.view.View;
//import android.view.ViewGroup;
//import android.widget.CursorAdapter;
//import android.widget.ImageView;
//import android.widget.TextView;
//
//import com.example.fonnatrada.mycalories.Model.Food;
//
//import caloriefood.projectandroid.com.caloriefood.R;
//
//
///**
// * Created by natrada on 19/11/2559.
// */
//
//public class FoodAdapter extends CursorAdapter {
//    private LayoutInflater mInflater;
//    public FoodAdapter(Context context, Cursor c, int flags) {
//        super(context, c, flags);
//        mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
//    }
//
//
//    @Override
//    public View newView(Context context, Cursor cursor, ViewGroup parent) {
//        View view = mInflater.inflate(R.layout.item_add_food, parent, false);
//        ViewHolder holder = new ViewHolder();
//        holder.imgFood = (ImageView)view.findViewById(R.id.imgFood);
//        holder.txtFood = (TextView)view.findViewById(R.id.tvFoodName);
//        holder.txtCal = (TextView)view.findViewById(R.id.tvFoodCal);
//        holder.txtSport =(TextView)view.findViewById(R.id.tvFoodSport);
//        view.setTag(holder);
//        return view;
//    }
//
//    @Override
//    public void bindView(View view, Context context, Cursor cursor) {
//
//        ViewHolder holder  =   (ViewHolder)    view.getTag();
//        holder.txtFood.setText(cursor.getString(cursor.getColumnIndex(Food.KEY_NameFood)));
//        holder.txtCal.setText(cursor.getString(cursor.getColumnIndex(Food.KEY_CalorieFood))+" Kcal");
//        holder.txtSport.setText(cursor.getString(cursor.getColumnIndex(Food.KEY_Exercise)));
//
//        String image_string = cursor.getString(cursor.getColumnIndex(Food.KEY_ImageFCFood));
//        int resId = context.getResources().getIdentifier(image_string, "drawable", context.getPackageName());
//        holder.imgFood.setImageResource(resId);
//
//    }
//
//    static class ViewHolder {
//        ImageView imgFood;
//        TextView txtFood;
//        TextView txtCal;
//        TextView txtSport;
//    }
//}
