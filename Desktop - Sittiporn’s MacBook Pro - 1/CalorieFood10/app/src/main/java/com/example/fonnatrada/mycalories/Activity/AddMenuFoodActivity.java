//package com.example.fonnatrada.mycalories.Activity;
//
//import android.annotation.TargetApi;
//import android.app.SearchManager;
//import android.content.Context;
//import android.database.Cursor;
//import android.os.Build;
//import android.os.Bundle;
//import android.support.v7.app.AppCompatActivity;
//import android.support.v7.widget.SearchView;
//import android.util.Log;
//import android.view.Menu;
//import android.view.View;
//import android.widget.AdapterView;
//import android.widget.ListView;
//import android.widget.Toast;
//
//import com.example.fonnatrada.mycalories.Adapter.FoodAdapter;
//import com.example.fonnatrada.mycalories.Model.Food;
//import com.example.fonnatrada.mycalories.Model.FoodRepo;
//
//import caloriefood.projectandroid.com.caloriefood.R;
//
//
//public class AddMenuFoodActivity extends AppCompatActivity {
//
//    private FoodAdapter foodAdapter;
//    Cursor cursor;
//    ListView listView;
//    FoodRepo foodRepo ;
//    private final static String TAG= AddMenuFoodActivity.class.getName().toString();
//
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_add_menu_food);
//
//        if(cursor==null){
//            insertFood();
//        }
//
//        foodRepo = new FoodRepo(this);
//        cursor = foodRepo.getFoodList();
//
//        foodAdapter = new FoodAdapter(AddMenuFoodActivity.this,  cursor, 0);
//
//
//
//
//        listView = (ListView) findViewById(R.id.listViewAddMenuFood);
//        listView.setAdapter(foodAdapter);
//        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
//            @Override
//            public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
//                cursor.getString(cursor.getColumnIndex(Food.KEY_CalorieFood));
//                cursor.getColumnIndex(Food.KEY_CalorieFood);
//
//                String itemString=listView.getSelectedItem().toString();
//
//                Toast.makeText(AddMenuFoodActivity.this, " "+itemString, Toast.LENGTH_SHORT).show();
//
//            }
//        });
//    }
//    private void insertFood(){
//
//        Food food = new Food();
//
//        foodRepo = new FoodRepo(this);
//        food.Name_Food = "ข้าวหน้าไก่";
//        food.Image_FCFood="batminton";
//        food.Calorie_Food="400";
//        food.Exercise="เท่ากับเล่นแบดมินตัน 1 ชั่วโมง 34 นาที";
//        foodRepo.insert(food);
//
//        foodRepo = new FoodRepo(this);
//        food.Name_Food = "ข้าวไข่เจียวหมูสับ";
//        food.Image_FCFood="hulahoop";
//        food.Calorie_Food="600";
//        food.Exercise="เท่ากับเล่นฮูลาฮูป 1 ชั่วโมง 25 นาที";
//        foodRepo.insert(food);
//
//
//
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดแกงคั่วกลิ้งหมู";
//        food.Image_FCFood="run";
//        food.Calorie_Food="378";
//        food.Exercise="เท่ากับวิ่ง 31 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดแกงฉู่ฉี่ปลาทู";food.Image_FCFood="hulahoop";food.Calorie_Food="307";food.Exercise="เท่ากับเล่นฮูลาฮูป 31 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ผัดขี้เมาทะเลราดข้าว";food.Image_FCFood="iceskate";food.Calorie_Food="460";food.Exercise="เท่ากับเล่นไอซ์เสก็ต 1 ชั่วโมง 9 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดแกงเทโพหมูสามชั้น";food.Image_FCFood="hulahoop";food.Calorie_Food="298";food.Exercise="เท่ากับเล่นฮูลาฮูป 30 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดแกงพะแนงหมู";food.Image_FCFood="rollerblade";food.Calorie_Food="393";food.Exercise="เท่ากับการเล่นโรลเลอร์เบลด 27 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดแกงมัสมั่นไก่";food.Image_FCFood="batminton";food.Calorie_Food="487";food.Exercise="เท่ากับเล่นแบดมินตัน 1 ชั่วโมง 54 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดแกงส้มชะอมทอด";food.Image_FCFood="yoga";food.Calorie_Food="397";food.Exercise="เท่ากับหัตถะโยคะ 1ชั่วโมง 38 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "หมูทอดกระเทียมราดข้าว";food.Image_FCFood="swim";food.Calorie_Food="525";food.Exercise="เท่ากับว่ายน้ำท่ากบ 52 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "หอยลายผัดพริกเผาราดข้าว";food.Image_FCFood="swim";food.Calorie_Food="362";food.Exercise="เท่ากับว่ายน้ำท่าผีเสื้อ 32 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ไก่ทอดกระเทียมราดข้าว";food.Image_FCFood="hulahoop";food.Calorie_Food="504";food.Exercise="เท่ากับเล่นฮูลาฮูป 1 ชั่วโมง 12 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ไก่ผัดเม็ดมะม่วงราดข้าว";food.Image_FCFood="swim";food.Calorie_Food="795";food.Exercise="เท่ากับว่ายน้ำท่ากบ 1 ชั่วโมง 19 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดต้มจืดเต้าหู้หมูสับ";food.Image_FCFood="bicycle";food.Calorie_Food="263";food.Exercise="เท่ากับปั่นจักรยาน 56 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดต้มหมูพะโล้กับไข่";food.Image_FCFood="swim";food.Calorie_Food="535";food.Exercise="เท่ากับว่ายน้ำ 60 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดผัดกระเพราหมู";food.Image_FCFood="briskwalk";food.Calorie_Food="580";food.Exercise="เท่ากับเดินเร็ว 2 ชั่วโมง 34 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดผัดกระเพราไก่";food.Image_FCFood="swim";food.Calorie_Food="469";food.Exercise="เท่ากับว่ายน้ำ 53 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดผัดกระเพราไก่ไข่ดาว";food.Image_FCFood="tennis";food.Calorie_Food="630";food.Exercise="เท่ากับเล่นเทนนิส 1 ชั่วโมง 35 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดผัดคะน้าหมูกรอบ";food.Image_FCFood="swim";food.Calorie_Food="546";food.Exercise="เท่ากับว่ายน้ำ 62 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวผัดกุ้ง";food.Image_FCFood="ropejumping";food.Calorie_Food="557";food.Exercise="เท่ากับกระโดดเชือก 58 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวผัดหมู";food.Image_FCFood="ropejumping";food.Calorie_Food="557";food.Exercise="เท่ากับกระโดดเชือก 58 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ยำมาม่า";food.Image_FCFood="dance";food.Calorie_Food="215";food.Exercise="เท่ากับเต้นแอโรบิก 33 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวขาหมู";food.Image_FCFood="tennis";food.Calorie_Food="690";food.Exercise="เท่ากับเล่นเทนนิส 1 ชั่วโมง 44 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดผัดผักรวม";food.Image_FCFood="bicycle";food.Calorie_Food="332";food.Exercise="เท่ากับปั่นจักรยาน 69 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวคลุกกะปิ";food.Image_FCFood="run";food.Calorie_Food="410";food.Exercise="เท่ากับวิ่ง 52 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวต้ม(หมู/กุ้ง)";food.Image_FCFood="swim";food.Calorie_Food="230";food.Exercise="เท่ากับว่ายน้ำท่ากบ 23 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวมันไก่";food.Image_FCFood="hulahoop";food.Calorie_Food="600";food.Exercise="เท่ากับเล่นฮูลาฮูป 1 ชั่วโมง 25 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวมันไก่ทอด";food.Image_FCFood="swim";food.Calorie_Food="695";food.Exercise="เท่ากับว่ายน้ำ 1 ชั่วโมง 45 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวหมกไก่";food.Image_FCFood="ropejumping";food.Calorie_Food="540";food.Exercise="เท่ากับกระโดดเชือก 57 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวหมูแดง";food.Image_FCFood="jump";food.Calorie_Food="500";food.Exercise="เท่ากับกระโดดตบ 1 ชั่วโมง 57 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "บะหมี่หมูแดง";food.Image_FCFood="tennis";food.Calorie_Food="231";food.Exercise="เท่ากับเล่นเทนนิส 34 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ผัดไทกุ้งสด";food.Image_FCFood="boxing";food.Calorie_Food="565";food.Exercise="เท่ากับต่อยมวย 1 ชั่วโมง 2 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "หอยทอด";food.Image_FCFood="run";food.Calorie_Food="650";food.Exercise="เท่ากับวิ่ง 110 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวโจ๊กหมู";food.Image_FCFood="tabletennis";food.Calorie_Food="236";food.Exercise="เท่ากับเล่นปิงปอง 1 ชั่วโมง 2 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "มั่นฝรั่งทอด(เฟร้นฟราย)1 ชิ้น";food.Image_FCFood="run";food.Calorie_Food="28";food.Exercise="เท่ากับวิ่ง 1 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "หมูปิ้ง 1 ไม้";food.Image_FCFood="bowling";food.Calorie_Food="125";food.Exercise="เท่ากับเล่นโบว์ลิ่ง 25 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวราดยำไข่ดาว";food.Image_FCFood="hulahoop";food.Calorie_Food="638";food.Exercise="เท่ากับเล่นฮูลาฮูป 1 ชั่วโมง 35 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "คอหมูย่าง 1 จาน";food.Image_FCFood="dance";food.Calorie_Food="200";food.Exercise="เท่ากับเต้นแอโรบิก 30 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "นมจืด (250 cc) 1 กล่อง";food.Image_FCFood="run";food.Calorie_Food="160";food.Exercise="เท่ากับวิ่ง 20 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ก๋วยจั๊บน้ำข้น";food.Image_FCFood="walk";food.Calorie_Food="368";food.Exercise="เท่ากับเดิน 130 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "น้ำอัดลมประเภทโคล่า(325 cc) 1 กระป๋อง";food.Image_FCFood="swim";food.Calorie_Food="130";food.Exercise="เท่ากับว่ายน้ำ 20 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ขนมจีนน้ำเงี๊ยว";food.Image_FCFood="bowling";food.Calorie_Food="308";food.Exercise="เท่ากับเล่นโบว์ลิ่ง 60 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ขนมจีนแกงเขียวหวาน";food.Image_FCFood="dance";food.Calorie_Food="416";food.Exercise="เท่ากับเต้นแอโรบิก 63 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ปอเปี๊ยะสด 1 ชิ้น";food.Image_FCFood="bowling";food.Calorie_Food="175";food.Exercise="เท่ากับเล่นโบว์ลิ่ง 38 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ส้มตำปู 1 จาน";food.Image_FCFood="run";food.Calorie_Food="35";food.Exercise="เท่ากับวิ่ง 1 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ส้มตำไทย 1 จาน";food.Image_FCFood="drivecar";food.Calorie_Food="55";food.Exercise="เท่ากับขับรถ 30 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวหมกไก่";food.Image_FCFood="swim";food.Calorie_Food="551";food.Exercise="เท่ากับว่ายน้ำท่ากบ 54 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ซาลาเปาไส้หมู";food.Image_FCFood="bowling";food.Calorie_Food="120";food.Exercise="เท่ากับเล่นโบว์ลิ่ง 25 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวหมูอบ";food.Image_FCFood="run";food.Calorie_Food="432";food.Exercise="เท่ากับวิ่ง 68 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวเหนียวหมูทอด 1 ชุด";food.Image_FCFood="swim";food.Calorie_Food="440";food.Exercise="เท่ากับว่ายน้ำ 50 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวสวย(ข้าวขาว) 3 ทัพพี";food.Image_FCFood="bicycle";food.Calorie_Food="240";food.Exercise="เท่ากับปั่นจักรยาน 50 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวสวย(ข้าวกล้อง) 3 ทัพพี";food.Image_FCFood="bicycle";food.Calorie_Food="240";food.Exercise="เท่ากับั่นจักรยาน 50 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ข้าวผัดหมูใส่ไข่ 1 จาน";food.Image_FCFood="hulahoop";food.Calorie_Food="660";food.Exercise="เท่ากับเล่นฮูลาฮูป 1 ชั่วโมง 45 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ก๋วยเตี๋ยวเส้นเล็กต้มยำหมู 1 ชาม";food.Image_FCFood="bicycle";food.Calorie_Food="335";food.Exercise="เท่ากับปั่นจักรยาน 69 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ก๋วยเตี๋ยวเส้นเล็กหมูแห้ง 1 ชาม";food.Image_FCFood="bicycle";food.Calorie_Food="330";food.Exercise="เท่ากับปั่นจักรยาน 69 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ก๋วยจั๊บ 1 ชาม";food.Image_FCFood="bicycle";food.Calorie_Food="240";food.Exercise="เท่ากับปั่นจักรยาน 50 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "กล้วยหอม 1 ผล";food.Image_FCFood="bowling";food.Calorie_Food="120";food.Exercise="เท่ากับเล่นโบว์ลิ่ง 25 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ไข่เจียว,ไข่ดาว 1 ฟอง";food.Image_FCFood="bicycle";food.Calorie_Food="215";food.Exercise="เท่ากับปั่นจักรยาน 42 นาที";foodRepo.insert(food);
//        foodRepo = new FoodRepo(this);food.Name_Food = "ขนมปังขาว 1 แผ่น";food.Image_FCFood="drivecar";food.Calorie_Food="68";food.Exercise="เท่ากับขับรถ 30 นาที";foodRepo.insert(food);
//
//    }
//    @Override
//    public void onResume(){
//        super.onResume();
//
//    }
//
//    @Override
//    @TargetApi(Build.VERSION_CODES.HONEYCOMB)
//    public boolean onCreateOptionsMenu(Menu menu) {
//
//        getMenuInflater().inflate(R.menu.options_menu, menu);
//
//
//        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
//            SearchManager manager = (SearchManager) getSystemService(Context.SEARCH_SERVICE);
//            SearchView search = (SearchView) menu.findItem(R.id.search).getActionView();
//            search.setSearchableInfo(manager.getSearchableInfo(getComponentName()));
//
//            search.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
//
//                @Override
//                public boolean onQueryTextSubmit(String s) {
//                    Log.d(TAG, "onQueryTextSubmit ");
//                    cursor = foodRepo.getFoodListByKeyword(s);
//                    if (cursor==null){
//                        Toast.makeText(AddMenuFoodActivity.this,"No records found!", Toast.LENGTH_LONG).show();
//                    }else{
//                        Toast.makeText(AddMenuFoodActivity.this, cursor.getCount() + " records found!", Toast.LENGTH_LONG).show();
//                    }
//                    foodAdapter.swapCursor(cursor);
//
//                    return false;
//                }
//
//                @Override
//                public boolean onQueryTextChange(String s) {
//                    Log.d(TAG, "onQueryTextChange ");
//                    cursor = foodRepo.getFoodListByKeyword(s);
//                    if (cursor!=null){
//                        foodAdapter.swapCursor(cursor);
//                    }
//                    return false;
//                }
//
//            });
//
//        }
//
//        return true;
//    }
//}
