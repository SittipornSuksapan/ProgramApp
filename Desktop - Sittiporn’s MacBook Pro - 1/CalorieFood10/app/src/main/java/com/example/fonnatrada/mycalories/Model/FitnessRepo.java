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
//public class FitnessRepo {
//    private com.example.fonnatrada.mycalories.Database.myDBClass myDBClass;
//
//    public FitnessRepo(Context context) {
//        myDBClass = new myDBClass(context);
//    }
//
//    public int insert(Fitness fitness) {
//
//        //Open connection to write data
//        SQLiteDatabase db = myDBClass.getWritableDatabase();
//        ContentValues values = new ContentValues();
//        values.put(Fitness.KEY_ImageFitness, fitness.Image_Fitness);
//        values.put(Fitness.KEY_NameFitness, fitness.Name_Fitness);
//        values.put(Fitness.KEY_CalorieFitness,fitness.Calorie_Fitness);
//
//        // Inserting Row
//        long Fitness_ID = db.insert(Fitness.TABLE, null, values);
//        db.close(); // Closing database connection
//        return (int) Fitness_ID;
//    }
//    public Cursor getFitnessList() {
//        //Open connection to read only
//        SQLiteDatabase db = myDBClass.getReadableDatabase();
//        String selectQuery =  "SELECT  rowid as " +
//                Fitness.KEY_ROWID + "," +
//                Fitness.KEY_Fitness + "," +
//                Fitness.KEY_NameFitness + "," +
//                Fitness.KEY_ImageFitness + "," +
//                Fitness.KEY_CalorieFitness +
//                " FROM " + Fitness.TABLE;
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
//    }
//    public Cursor getFitnessListByKeyword(String search) {
//        //Open connection to read only
//        SQLiteDatabase db = myDBClass.getReadableDatabase();
//        String selectQuery =  "SELECT  rowid as " +
//                Fitness.KEY_ROWID + "," +
//                Fitness.KEY_Fitness + "," +
//                Fitness.KEY_NameFitness + "," +
//                Fitness.KEY_ImageFitness + "," +
//                Fitness.KEY_CalorieFitness +
//                " FROM " + Fitness.TABLE +
//                " WHERE " +  Fitness.KEY_NameFitness + "  LIKE  '%" +search + "%' ";
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
//    }
//
//    public Fitness getFitnessById(int Id){
//        SQLiteDatabase db = myDBClass.getReadableDatabase();
//        String selectQuery =  "SELECT " +
//                Fitness.KEY_ROWID + "," +
//                Fitness.KEY_Fitness + "," +
//                Fitness.KEY_NameFitness + "," +
//                Fitness.KEY_ImageFitness + "," +
//                Fitness.KEY_CalorieFitness +
//                " FROM " + Fitness.TABLE
//                + " WHERE " +
//                Fitness.KEY_Fitness + "=?";// It's a good practice to use parameter ?, instead of concatenate string
//
//        int iCount =0;
//        Fitness fitness = new Fitness();
//
//        Cursor cursor = db.rawQuery(selectQuery, new String[] { String.valueOf(Id) } );
//
//        if (cursor.moveToFirst()) {
//            do {
//                fitness.Id_Fitness =cursor.getInt(cursor.getColumnIndex(Fitness.KEY_Fitness));
//                fitness.Name_Fitness =cursor.getString(cursor.getColumnIndex(Fitness.KEY_NameFitness));
//                fitness.Image_Fitness  =cursor.getString(cursor.getColumnIndex(Fitness.KEY_ImageFitness));
//                fitness.Calorie_Fitness =cursor.getString(cursor.getColumnIndex(Fitness.KEY_CalorieFitness));
//            } while (cursor.moveToNext());
//        }
//        cursor.close();
//        db.close();
//        return fitness;
//    }
//}