//package com.example.fonnatrada.mycalories.Database;
//
//import android.content.ContentValues;
//import android.content.Context;
//import android.database.Cursor;
//import android.database.sqlite.SQLiteDatabase;
//import android.database.sqlite.SQLiteOpenHelper;
//import android.util.Log;
//
//import com.example.fonnatrada.mycalories.Model.Fitness;
//import com.example.fonnatrada.mycalories.Model.Food;
//
///**
// * Created by Developer on 24/10/2559.
// */
//
//public class myDBClass extends SQLiteOpenHelper {
//
//    // Database Version
//    private static final int DATABASE_VERSION = 1;
//
//    // Database Name
//    private static final String DATABASE_NAME = "mydatabase.db";
//
//    // Table Name
//    private static final String USER_TABLE = "User";
//    private static final String EVENT_TABLE = "Event";
//    private static final String DAILY_TABLE = "DailyEvent";
//    private static final String WEIGHT_TABLE = "Weight";
//
//    public myDBClass(Context context) {
//        super(context, DATABASE_NAME, null, DATABASE_VERSION);
//    }
//
//    @Override
//    public void onCreate(SQLiteDatabase db) {
//
//        //*CREATE TABLE USER_TABLE
//        db.execSQL("CREATE TABLE " + USER_TABLE +
//                "(Id_Name INTEGER PRIMARY KEY AUTOINCREMENT," +
//                " Name_User  TEXT NOT NULL," +
//                " Weight TEXT NOT NULL," +
//                " Height TEXT NOT NULL," +
//                " Gender INTEGER NOT NULL," +
//                " Age INTEGER NOT NULL," +
//                " FitnessLevel TEXT NOT NULL);");
//
//        //*CREATE TABLE USER_TABLE
//        db.execSQL("CREATE TABLE " + WEIGHT_TABLE +
//                "(Id INTEGER PRIMARY KEY AUTOINCREMENT," +
//                " Weight TEXT NOT NULL);");
//
//         //*CREATE TABLE EVENT_TABLE
//        db.execSQL("CREATE TABLE " + EVENT_TABLE +
//                "(Id_List INTEGER PRIMARY KEY AUTOINCREMENT," +
//                " Date  Date," +
//                " Food1  TEXT," +
//                " Food2  TEXT," +
//                " Food3  TEXT," +
//                " Fitness  TEXT," +
//                " Calorie_User TEXT," +
//                " Calorie_Current TEXT);");
//        //*End CREATE TABLE EVENT_TABLE
//
//        db.execSQL("INSERT INTO Event (Id_List, Date,Food1, Food2, Food3, Fitness, Calorie_User,Calorie_Current) VALUES(1,'-','-','-','-','-','-','-');");
//        Log.d("CREATE TABLE", "Create Table Successfully.");
//
//
//        String CREATE_TABLE_FOOD = "CREATE TABLE " + Food.TABLE  + "("
//                + Food.KEY_Food  + " INTEGER PRIMARY KEY AUTOINCREMENT ,"
//                + Food.KEY_NameFood + " TEXT, "
//                + Food.KEY_ImageFCFood + " Varchar, "
//                + Food.KEY_CalorieFood + " TEXT, "
//                + Food.KEY_Exercise + " TEXT )";
//        db.execSQL(CREATE_TABLE_FOOD);
//
//        String CREATE_TABLE_FITNESS = "CREATE TABLE " + Fitness.TABLE  + "("
//                + Fitness.KEY_Fitness  + " INTEGER PRIMARY KEY AUTOINCREMENT ,"
//                + Fitness.KEY_NameFitness + " TEXT, "
//                + Fitness.KEY_ImageFitness + " Varchar, "
//                + Fitness.KEY_CalorieFitness + " TEXT )";
//        db.execSQL(CREATE_TABLE_FITNESS);
//
//
//        //*CREATE TABLE DAILY_TABLE
//        db.execSQL("CREATE TABLE " + DAILY_TABLE +
//                "(Id_Event INTEGER PRIMARY KEY AUTOINCREMENT," +
//                " Id_List  INTEGER," +
//                " Id_Food  INTEGER," +
//                " Id_Fitness INTEGER," +
//                " Type_Food Varchar);");
//        //*End CREATE TABLE DAILY_TABLE
//
//        Log.d("CREATE TABLE", "Create Table Successfully.");
//    }
//
//    // InsertUser
//    public long InsertUser(String strName, String strWeight, String strHeight, String strGender, String strAge, String strFitnessLevelString) {
//        try {
//            SQLiteDatabase db;
//            db = this.getWritableDatabase(); // Write Data
//            ContentValues Val = new ContentValues();
//            Val.put("Name_User", strName);
//            Val.put("Weight", strWeight);
//            Val.put("Height", strHeight);
//            Val.put("Gender", strGender);
//            Val.put("Age", strAge);
//            Val.put("FitnessLevel", strFitnessLevelString);
//            long rows = db.insert(USER_TABLE, null, Val);
//            db.close();
//            return rows; // return rows inserted.
//
//        } catch (Exception e) {
//            return -1;
//        }
//    }
//    public long InsertWeight(String strWeight) {
//        try {
//            SQLiteDatabase db;
//            db = this.getWritableDatabase(); // Write Data
//            ContentValues Val = new ContentValues();
//            Val.put("Weight", strWeight);
//            long rows = db.insert(WEIGHT_TABLE, null, Val);
//            db.close();
//            return rows; // return rows inserted.
//
//        } catch (Exception e) {
//            return -1;
//        }
//    }
//    // Select Data
//    public String[] SelectData(String strName_User) {
//        try {
//            String arrData[] = null;
//            SQLiteDatabase db;
//            db = this.getReadableDatabase(); // Read Data
//            Cursor cursor = db.query(USER_TABLE, new String[] { "*" },"Name_User=?",
//                    new String[] { String.valueOf(strName_User) }, null, null, null, null);
//            if(cursor != null)
//            {
//                if (cursor.moveToFirst()) {
//
//                    arrData[0] = cursor.getString(0);
//                    arrData[1] = cursor.getString(1);
//                    arrData[2] = cursor.getString(2);
//                    arrData[3] = cursor.getString(3);
//                    arrData[4] = cursor.getString(4);
//                    arrData[5] = cursor.getString(5);
//                    arrData[6] = cursor.getString(6);
//
//                }
//            }
//            cursor.close();
//            db.close();
//            return arrData;
//        }catch (Exception e) {
//            return null;
//        }
//    }    // InsertEvent
//    public long InsertEvent(String strNameDate, String strCalorie, String strCalorieCurrent, String strId_Name) {
//        try {
//            SQLiteDatabase db;
//            db = this.getWritableDatabase(); // Write Data
//            ContentValues Val = new ContentValues();
//            Val.put("Date", strNameDate);
//            Val.put("Calorie_User", strCalorie);
//            Val.put("Calorie_Current", strCalorieCurrent);
//            Val.put("Id_Name", strId_Name);
//            long rows = db.insert(EVENT_TABLE, null, Val);
//            db.close();
//            return rows; // return rows inserted.
//
//        } catch (Exception e) {
//            return -1;
//        }
//    }
//    // Select All Data
//    public String[][] SelectAllDataEvent() {
//        // TODO Auto-generated method stub
//        try {
//            String arrData[][] = null;
//            SQLiteDatabase db;
//            db = this.getReadableDatabase(); // Read Data
//            String strSQL = "SELECT  * FROM " + EVENT_TABLE;
//            Cursor cursor = db.rawQuery(strSQL, null);
//            if(cursor != null)
//            {
//                if (cursor.moveToFirst()) {
//                    arrData = new String[cursor.getCount()][cursor.getColumnCount()];
//
//                    int i= 0;
//                    do {
//                        arrData[i][0] = cursor.getString(0);
//                        arrData[i][1] = cursor.getString(1);
//                        arrData[i][2] = cursor.getString(2);
//                        arrData[i][3] = cursor.getString(3);
//                        arrData[i][4] = cursor.getString(4);
//                        arrData[i][5] = cursor.getString(5);
//                        arrData[i][6] = cursor.getString(6);
//                        arrData[i][7] = cursor.getString(7);
//
//                        i++;
//                    } while (cursor.moveToNext());
//                }
//            }
//            cursor.close();
//            return arrData;
//        } catch (Exception e) {
//            return null;
//        }
//    }
//
//    // InsertDaily
//    public long InsertDaily(String strId_List, String strId_Food, String strId_Fitness, String strType_Food) {
//        try {
//            SQLiteDatabase db;
//            db = this.getWritableDatabase(); // Write Data
//            ContentValues Val = new ContentValues();
//            Val.put("Id_List", strId_List);
//            Val.put("Id_Food", strId_Food);
//            Val.put("Id_Fitness", strId_Fitness);
//            Val.put("Type_Food", strType_Food);
//            long rows = db.insert(DAILY_TABLE, null, Val);
//            db.close();
//            return rows; // return rows inserted.
//
//        } catch (Exception e) {
//            return -1;
//        }
//    }
//
//
//    // Update User
//    public long UpdateUser(String strId_Name, String strName, String strWeight, String strHeight, String strGender, String strAge, String strFitnessLevelString) {
//        try {
//            SQLiteDatabase db;
//            db = this.getWritableDatabase(); // Write Data
//            ContentValues Val = new ContentValues();
//            Val.put("Id_Name", strId_Name);
//            Val.put("Name_User", strName);
//            Val.put("Weight", strWeight);
//            Val.put("Height", strHeight);
//            Val.put("Gender", strGender);
//            Val.put("Age", strAge);
//            Val.put("FitnessLevel", strFitnessLevelString);
//            long rows = db.update(USER_TABLE, Val, " Id_Name = ?",
//                    new String[] { String.valueOf(strName) });
//            db.close();
//            return rows; // return rows updated.
//
//        } catch (Exception e) {
//            return -1;
//        }
//    }
//
//    @Override
//    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
//        db.execSQL("DROP TABLE IF EXISTS " + USER_TABLE);
//        db.execSQL("DROP TABLE IF EXISTS " + EVENT_TABLE);
//        db.execSQL("DROP TABLE IF EXISTS " + DAILY_TABLE);
//        db.execSQL("DROP TABLE IF EXISTS " + Food.TABLE);
//        db.execSQL("DROP TABLE IF EXISTS " + Fitness.TABLE);
//
//        // Re Create on method  onCreate
//        onCreate(db);
//    }
//
//
//}
