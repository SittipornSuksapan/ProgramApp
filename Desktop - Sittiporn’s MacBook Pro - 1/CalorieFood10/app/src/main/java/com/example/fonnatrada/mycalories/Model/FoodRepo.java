//package com.example.fonnatrada.mycalories.Model;
//
//import android.content.ContentValues;
//import android.content.Context;
//import android.database.Cursor;
//import android.database.sqlite.SQLiteDatabase;
//
//import com.example.fonnatrada.mycalories.Database.myDBClass;
//
///**
// * Created by Tan on 3/14/2016.
// */
//
//
//public class FoodRepo {
//    private com.example.fonnatrada.mycalories.Database.myDBClass myDBClass;
//
//    public FoodRepo(Context context) {
//        myDBClass = new myDBClass(context);
//    }
//
//    public int insert(Food food) {
//
//        //Open connection to write data
//        SQLiteDatabase db = myDBClass.getWritableDatabase();
//        ContentValues values = new ContentValues();
//        values.put(Food.KEY_ImageFCFood, food.Image_FCFood);
//        values.put(Food.KEY_NameFood, food.Name_Food);
//        values.put(Food.KEY_CalorieFood,food.Calorie_Food);
//        values.put(Food.KEY_Exercise, food.Exercise);
//
//        // Inserting Row
//        long Food_ID = db.insert(Food.TABLE, null, values);
//        db.close(); // Closing database connection
//        return (int) Food_ID;
//    }
//    public Cursor getFoodList() {
//        //Open connection to read only
//        SQLiteDatabase db = myDBClass.getReadableDatabase();
//        String selectQuery =  "SELECT  rowid as " +
//                Food.KEY_ROWID + "," +
//                Food.KEY_Food + "," +
//                Food.KEY_NameFood + "," +
//                Food.KEY_ImageFCFood + "," +
//                Food.KEY_CalorieFood + "," +
//                Food.KEY_Exercise +
//                " FROM " + Food.TABLE;
//
//
//        Cursor cursor = db.rawQuery(selectQuery, null);
//        // looping through all rows and adding to list
//
//        if (cursor == null) {
//            return null;
//        } else if (!cursor.moveToFirst()) {
//            cursor.close();
//            return null;
//        }
//        return cursor;
//
//
//    }
//
//
//    public Cursor getFoodListByKeyword(String search) {
//        //Open connection to read only
//        SQLiteDatabase db = myDBClass.getReadableDatabase();
//        String selectQuery =  "SELECT  rowid as " +
//                Food.KEY_ROWID + "," +
//                Food.KEY_Food + "," +
//                Food.KEY_NameFood + "," +
//                Food.KEY_ImageFCFood + "," +
//                Food.KEY_CalorieFood + "," +
//                Food.KEY_Exercise +
//                " FROM " + Food.TABLE +
//                " WHERE " +  Food.KEY_NameFood + "  LIKE  '%" +search + "%' ";
//
//        Cursor cursor = db.rawQuery(selectQuery, null);
//        // looping through all rows and adding to list
//
//        if (cursor == null) {
//            return null;
//        } else if (!cursor.moveToFirst()) {
//            cursor.close();
//            return null;
//        }
//        return cursor;
//
//    }
//
//    public Food getFoodById(int Id){
//        SQLiteDatabase db = myDBClass.getReadableDatabase();
//        String selectQuery =  "SELECT " +
//                Food.KEY_ROWID + "," +
//                Food.KEY_Food + "," +
//                Food.KEY_NameFood + "," +
//                Food.KEY_ImageFCFood + "," +
//                Food.KEY_CalorieFood + "," +
//                Food.KEY_Exercise +
//                " FROM " + Food.TABLE
//                + " WHERE " +
//                Food.KEY_Food + "=?";// It's a good practice to use parameter ?, instead of concatenate string
//
//        int iCount =0;
//        Food food = new Food();
//
//        Cursor cursor = db.rawQuery(selectQuery, new String[] { String.valueOf(Id) } );
//
//        if (cursor.moveToFirst()) {
//            do {
//                food.Id_Food =cursor.getInt(cursor.getColumnIndex(Food.KEY_Food));
//                food.Name_Food =cursor.getString(cursor.getColumnIndex(Food.KEY_NameFood));
//                food.Image_FCFood  =cursor.getString(cursor.getColumnIndex(Food.KEY_ImageFCFood));
//                food.Calorie_Food =cursor.getString(cursor.getColumnIndex(Food.KEY_CalorieFood));
//                food.Exercise =cursor.getString(cursor.getColumnIndex(Food.KEY_Exercise));
//            } while (cursor.moveToNext());
//        }
//
//        cursor.close();
//        db.close();
//        return food;
//    }
//}