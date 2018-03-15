//package com.example.fonnatrada.mycalories.Activity;
//
//import android.app.Activity;
//import android.os.Bundle;
//import android.widget.ImageView;
//
//import caloriefood.projectandroid.com.caloriefood.R;
//
//
//public class ListFoodActivity extends Activity {
//    public static String arrData1[];
//    public static String nfood = "";
//    ImageView AddFood;
//    public static String test = "";
//
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_list_food);
//    }
//    /*public void onClick_bookmark(View v) {
//        AlertDialog.Builder alertDialog = new AlertDialog.Builder(ListFoodActivity.this);
//        // Setting Dialog Message
//        // alertDialog.setMessage("ต้องการบันทึกหรือลบเมนูอาหารออกจากบุ๊กมาร์ก");
//        alertDialog.setMessage(test);
//        if (test.equalsIgnoreCase("ต้องการลบเมนูอาหารหรือไม่")) {
//            alertDialog.setPositiveButton("ยกเลิก",
//                    new DialogInterface.OnClickListener() {
//                        public void onClick(DialogInterface dialog, int which) {
//                            dialog.cancel();
//                        }
//                    });
//            alertDialog.setNegativeButton("ลบ",
//                    new DialogInterface.OnClickListener() {
//                        public void onClick(DialogInterface dialog, int which) {
//                            DeleteData();
//                        }
//                    });
//        }alertDialog.show();
//    }*/
//    /*//Save Bookmark
//    public boolean DeleteData() {
//        final AlertDialog.Builder adb = new AlertDialog.Builder(this);
//        AlertDialog ad = adb.create();
//        //new Class DB
//        myDBClass myDb = new myDBClass(this);
//        long x = myDb.DeleteDataFood(nfood);
//        // SQLiteDatabase db = myDb.getWritableDatabase();
//
//        Toast.makeText(ListFoodActivity.this, "ลบเมนูอาหารออกแล้ว ", Toast.LENGTH_SHORT).show();
//
//        return true;
//
//    }*/
//
//}
