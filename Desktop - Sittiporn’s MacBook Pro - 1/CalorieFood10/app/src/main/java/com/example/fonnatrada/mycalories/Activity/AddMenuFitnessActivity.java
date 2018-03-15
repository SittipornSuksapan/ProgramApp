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
//import android.widget.ListView;
//import android.widget.Toast;
//
//import com.example.fonnatrada.mycalories.Adapter.FitnessAdapter;
//import com.example.fonnatrada.mycalories.Model.Fitness;
//import com.example.fonnatrada.mycalories.Model.FitnessRepo;
//
//import caloriefood.projectandroid.com.caloriefood.R;
//
//
//public class AddMenuFitnessActivity extends AppCompatActivity {
//    private FitnessAdapter fitnessAdapter;
//    Cursor cursor;
//    ListView listView;
//    FitnessRepo fitnessRepo ;
//    private final static String TAG = AddMenuFitnessActivity.class.getName().toString();
//
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_add_menu_fitness);
//
//        if(cursor==null){
//            insertFitness();
//        }
//
//        fitnessRepo = new FitnessRepo(this);
//        cursor = fitnessRepo.getFitnessList();
//        fitnessAdapter = new FitnessAdapter(AddMenuFitnessActivity.this,  cursor, 0);
//        listView = (ListView) findViewById(R.id.listViewAddMenuEx);
//        listView.setAdapter(fitnessAdapter);
//
//    }
//    private void insertFitness(){
//
//        Fitness fitness = new Fitness();
//
//        fitnessRepo = new FitnessRepo(this);
//        fitness.Name_Fitness = "วิ่ง 30 นาที (8.8 กม./ซม.)";
//        fitness.Image_Fitness="run";
//        fitness.Calorie_Fitness="178 Kcal";
//        fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "วิ่ง 60 นาที (8.8 กม./ซม.)";fitness.Image_Fitness="run";fitness.Calorie_Fitness="356 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เล่นโบว์ลิ่ง 30 นาที";fitness.Image_Fitness="bowling";fitness.Calorie_Fitness="154 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เล่นโบว์ลิ่ง 60 นาที";fitness.Image_Fitness="bowling";fitness.Calorie_Fitness="308 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "ว่ายน้ำ 30 นาที (1.12 กม./ซม.)";fitness.Image_Fitness="swim";fitness.Calorie_Fitness="332 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "ว่ายน้ำ 60 นาที (1.12 กม./ซม.)";fitness.Image_Fitness="swim";fitness.Calorie_Fitness="664 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "ปั่นจักรยาน 60 นาที (8.8 กม./ซม.)";fitness.Image_Fitness="bicycle";fitness.Calorie_Fitness="304 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "ปั่นจักรยาน 120 นาที (8.8 กม./ซม.)";fitness.Image_Fitness="bicycle";fitness.Calorie_Fitness="608 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เล่นฮูลาฮูป 30 นาที";fitness.Image_Fitness="hulahoop";fitness.Calorie_Fitness="298 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เล่นฮูลาฮูป 60 นาที";fitness.Image_Fitness="hulahoop";fitness.Calorie_Fitness="596 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "ขับรถ 30 นาที";fitness.Image_Fitness="drivecar";fitness.Calorie_Fitness="60 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "ขับรถ 60 นาที";fitness.Image_Fitness="drivecar";fitness.Calorie_Fitness="120 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เดินขึ้นบันได 30 นาที (3.2 กม./ซม.)";fitness.Image_Fitness="stairs";fitness.Calorie_Fitness="320 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เดินขึ้นบันได 60 นาที (3.2 กม./ซม.)";fitness.Image_Fitness="stairs";fitness.Calorie_Fitness="640 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "นั่งทำงานใช้สมอง 60 นาที";fitness.Image_Fitness="work";fitness.Calorie_Fitness="110 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "นั่งทำงานใช้สมอง 120 นาที";fitness.Image_Fitness="work";fitness.Calorie_Fitness="220 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เดินบนทางราบ 30 นาที (3.2 กม./ซม.)";fitness.Image_Fitness="walkontheplane";fitness.Calorie_Fitness="90 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เดินบนทางราบ 60 นาที (3.2 กม./ซม.)";fitness.Image_Fitness="walkontheplane";fitness.Calorie_Fitness="180 Kcal";fitnessRepo.insert(fitness);
//
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เต้นแอโรบิก 30 นาที";fitness.Image_Fitness="dance";fitness.Calorie_Fitness="207 Kcal";fitnessRepo.insert(fitness);
//        fitnessRepo = new FitnessRepo(this);fitness.Name_Fitness = "เต้นแอโรบิก 60 นาที";fitness.Image_Fitness="dance";fitness.Calorie_Fitness="414 Kcal";fitnessRepo.insert(fitness);
//    }
//
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
//        getMenuInflater().inflate(R.menu.options_menu_ex, menu);
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
//                    cursor = fitnessRepo.getFitnessListByKeyword(s);
//                    if (cursor==null){
//                        Toast.makeText(AddMenuFitnessActivity.this,"No records found!", Toast.LENGTH_LONG).show();
//                    }else{
//                        Toast.makeText(AddMenuFitnessActivity.this, cursor.getCount() + " records found!", Toast.LENGTH_LONG).show();
//                    }
//                    fitnessAdapter.swapCursor(cursor);
//
//                    return false;
//                }
//
//                @Override
//                public boolean onQueryTextChange(String s) {
//                    Log.d(TAG, "onQueryTextChange ");
//                    cursor = fitnessRepo.getFitnessListByKeyword(s);
//                    if (cursor!=null){
//                        fitnessAdapter.swapCursor(cursor);
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
