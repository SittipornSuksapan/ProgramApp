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
//import com.example.fonnatrada.mycalories.Model.Fitness;
//
//import caloriefood.projectandroid.com.caloriefood.R;
//
////import com.squareup.picasso.Picasso;
//
///**
// * Created by natrada on 19/11/2559.
// */
//
//public class FitnessAdapter extends CursorAdapter {
//
//    private LayoutInflater mInflater;
//    public FitnessAdapter(Context context, Cursor c, int flags) {
//        super(context, c, flags);
//        mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
//    }
//
//    @Override
//    public View newView(Context context, Cursor cursor, ViewGroup parent) {
//        View view = mInflater.inflate(R.layout.item_add_fitness, parent, false);
//        ViewHolder holder = new ViewHolder();
//        holder.imgFitness = (ImageView)view.findViewById(R.id.imgFitness);
//        holder.txtFitnessName = (TextView)view.findViewById(R.id.tvFitnessName);
//        holder.txtFitnessCal = (TextView)view.findViewById(R.id.tvFitnessCal);
//        view.setTag(holder);
//        return view;
//    }
//
//    @Override
//    public void bindView(View view, Context context, Cursor cursor) {
//
//        ViewHolder holder = (ViewHolder)view.getTag();
//        //holder.imgFitness.setImageDrawable(Drawable.createFromPath(cursor.getString(cursor.getColumnIndex(Fitness.KEY_ImageFitness))));
//        holder.txtFitnessName.setText(cursor.getString(cursor.getColumnIndex(Fitness.KEY_NameFitness)));
//        holder.txtFitnessCal.setText(cursor.getString(cursor.getColumnIndex(Fitness.KEY_CalorieFitness)));
//
//        String image_string = cursor.getString(cursor.getColumnIndex(Fitness.KEY_ImageFitness));
//        int resId = context.getResources().getIdentifier(image_string, "drawable", context.getPackageName());
//        holder.imgFitness.setImageResource(resId);
//    }
//
//    static class ViewHolder {
//        ImageView imgFitness;
//        TextView txtFitnessName;
//        TextView txtFitnessCal;
//    }
//}
