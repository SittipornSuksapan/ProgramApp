package mean.chan.mind.sendgps;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.baoyz.swipemenulistview.SwipeMenu;
import com.baoyz.swipemenulistview.SwipeMenuCreator;
import com.baoyz.swipemenulistview.SwipeMenuItem;
import com.baoyz.swipemenulistview.SwipeMenuListView;
import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

public class SwipeContactActivity extends AppCompatActivity {

    private SwipeMenuListView mListView;
    private ListDataAdapter mListDataAdapter;
    private ArrayList<String> mArrayList = new ArrayList<>();
    private String[] telString,idString;

    private String[] loginStrings;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_swipe_contact);

        mListView=(SwipeMenuListView)findViewById(R.id.listView);
        mListView.setSwipeDirection(SwipeMenuListView.DIRECTION_LEFT);


        //button back
        backController();
        inFo();
        getValueFromIntent();
        //initControls();
        synJSON();
    }

    private void getValueFromIntent() {
        loginStrings = getIntent().getStringArrayExtra("Login");
        String tag = "17JulyV1";
        Log.d(tag, "ID_parent ==>" + loginStrings);

    }

    @Override
    protected void onRestart() {
        super.onRestart();
        synJSON();
    }

    private void synJSON() {
        MySynJSON mySynJSON = new MySynJSON();
        mySynJSON.execute();
    }




    //Create Inner Class
    public class MySynJSON extends AsyncTask<Void, Void, String> {

        @Override
        protected String doInBackground(Void... voids) {

            try {
                //ส่ง id ผู้ปกครองไปเช็ค
                OkHttpClient okHttpClient = new OkHttpClient();
                RequestBody requestBody = new FormEncodingBuilder()
                        .add("isAdd", "true")
                        .add("id_Parent", loginStrings[0])
                        .build();
                Request.Builder builder = new Request.Builder();
                Request request = builder.url("http://androidthai.in.th/dom/getContact.php").post(requestBody).build();
                Response response = okHttpClient.newCall(request).execute();
                return response.body().string();

            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }

        }   // doInBack



        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            Log.d("21April", "JSON ==> " + s);



            try {

                final JSONArray jsonArray = new JSONArray(s);

                final String[] nameString = new String[jsonArray.length()];
                telString = new String[jsonArray.length()];
                idString = new String[jsonArray.length()];
                //lngStrings = new String[jsonArray.length()];

                for (int i=0;i<jsonArray.length();i++) {

                    JSONObject jsonObject = jsonArray.getJSONObject(i);

                    nameString[i] = jsonObject.getString("Name");
                    telString[i] = jsonObject.getString("Tel");
                    idString[i] = jsonObject.getString("id");

                    mArrayList.add(nameString[i]);
                    //lngStrings[i] = jsonObject.getString("Lng");

                    Log.d("21April", "Name ==> " + i + " == " + nameString[i]);
                    Log.d("21April", "Tel ==> " + i + " == " + telString[i]);
                    Log.d("21April", "id ==> " + i + " == " + idString[i]);

                }   // for

                Log.d("21April", "json length ==> " + jsonArray.getString(0));


                mListDataAdapter = new ListDataAdapter();

                mListView.setAdapter(mListDataAdapter);



                SwipeMenuCreator creator = new SwipeMenuCreator() {

                    @Override
                    public void create(SwipeMenu menu) {
                        //create an action that will be showed on swiping an item in the list
                       SwipeMenuItem item1 = new SwipeMenuItem(
                                getApplicationContext());
                        item1.setBackground(new ColorDrawable(Color.parseColor("#00cc66")));
                        // set width of an option (px)
                        item1.setWidth(120);
                        item1.setTitle("Call");
                        item1.setTitleSize(18);
                        item1.setTitleColor(Color.WHITE);
                        menu.addMenuItem(item1);

                        SwipeMenuItem item2 = new SwipeMenuItem(
                                getApplicationContext());
                        // set item background
                        item2.setBackground(new ColorDrawable(Color.RED));
                        item2.setWidth(120);
                        item2.setTitle("Delete");
                        item2.setTitleSize(18);
                        item2.setTitleColor(Color.WHITE);
                        menu.addMenuItem(item2);
                    }
                };
                //set MenuCreator
                mListView.setMenuCreator(creator);

                mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

                        String uri = "tel:" + telString[i];
                        Intent intent = new Intent(Intent.ACTION_CALL, Uri.parse(uri));
                        startActivity(intent);
                    }   // onItem
                });


                mListView.setOnMenuItemClickListener(new SwipeMenuListView.OnMenuItemClickListener() {
                    @Override
                    public boolean onMenuItemClick(int position, SwipeMenu menu, int index) {

                        switch (index) {
                            case 0:
                                String uri = "tel:" + telString[position];
                                Intent intent = new Intent(Intent.ACTION_CALL, Uri.parse(uri));
                                startActivity(intent);
                                //Toast.makeText(SwipeContactActivity.this,"Like button press",Toast.LENGTH_SHORT).show();
                                break;
                            case 1:

                                Log.d("21April", "id ==> " + position + " == " + mArrayList.get(position));
                                mArrayList.remove(position);

                                DeleteContact deleteContact = new DeleteContact(SwipeContactActivity.this);
                                deleteContact.execute(idString[position]);

                                Log.d("21April", "id ==> " + position + " == " + idString[position]);
                                mListDataAdapter.notifyDataSetChanged();

                                Toast.makeText(SwipeContactActivity.this,"Deleted " + nameString[position] + " Success.",Toast.LENGTH_SHORT).show();
                                break;
                        }
                        return true;
                    }
                });

                //mListView

                mListView.setOnMenuStateChangeListener(new SwipeMenuListView.OnMenuStateChangeListener() {
                    @Override
                    public void onMenuOpen(int position) {

                    }

                    @Override
                    public void onMenuClose(int position) {

                    }
                });

                mListView.setOnSwipeListener(new SwipeMenuListView.OnSwipeListener() {
                    @Override
                    public void onSwipeStart(int position) {

                    }

                    @Override
                    public void onSwipeEnd(int position) {

                    }
                });

            } catch (Exception e) {
                e.printStackTrace();
            }

        }   // onPost

    }   // MySynJSON class







/*
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {

        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }


    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_add) {
            //TODO add item to list from here
            //mArrayList.add("List item --> "+mArrayList.size());
            mListDataAdapter.notifyDataSetChanged();
        }
        return super.onOptionsItemSelected(item);
    }
*/



    class ListDataAdapter extends BaseAdapter {
/*
        //Explicit
        private Context context;
        private String[] titleStrings, titleStrings2;

        public ListDataAdapter(Context context, String[] titleStrings, String[] titleStrings2) {
            this.context = context;
            this.titleStrings = titleStrings;
            this.titleStrings2 = titleStrings2;
        }//Constructor

*/
        ViewHolder holder;

        @Override
        public int getCount() {
            return mArrayList.size();
            //return titleStrings.length;
        }

        @Override
        public Object getItem(int i) {
            return null;
        }

        @Override
        public long getItemId(int i) {
            return 0;
        }

        @Override
        //public View getView(int i, View view, ViewGroup viewGroup) {
/*
            LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            View view1 = layoutInflater.inflate(R.layout.number_listview, viewGroup, false);

            TextView numTextView = (TextView) view1.findViewById(R.id.textView8); //เปลี่ยนเป็น textview อัตโนมัติ
            String strNum = Integer.toString(i + 1);
            numTextView.setText(strNum + ".");

            TextView titleTextView = (TextView) view1.findViewById(R.id.textView9);
            titleTextView.setText(titleStrings[i]);

            TextView titleTextView2 = (TextView) view1.findViewById(R.id.textView10);
            titleTextView2.setText(titleStrings2[i]);



            return view1;     */

        public View getView(int position, View convertView, ViewGroup parent) {
            if(convertView==null){

                holder=new ViewHolder();

                convertView=getLayoutInflater().inflate(R.layout.list_item,null);

                holder.mTextview=(TextView)convertView.findViewById(R.id.textView);
                convertView.setTag(holder);

            }else {

                holder= (ViewHolder) convertView.getTag();
            }

            holder.mTextview.setText(mArrayList.get(position));

            return convertView;
        }

        class ViewHolder {

            TextView mTextview;

        }

    }



    public void clickAddContact(View view) {
        Intent intent = new Intent(SwipeContactActivity.this, AddNumberActivity.class);
        intent.putExtra("Login", loginStrings);
        startActivity(intent);

        //startActivity(new Intent(NumberActivity.this, AddNumberActivity.class));
    }



    private void backController() {
        ImageView imageView = (ImageView) findViewById(R.id.imvBack);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });

    } //button back

    private void inFo() {

        String tag = "INFO";
        Log.d(tag, "SUCCESS");

        ImageView infoImageView = (ImageView) findViewById(R.id.imvInfo);
        infoImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(SwipeContactActivity.this, InfoContactActivity.class);
                intent.putExtra("Login", loginStrings);
                startActivity(intent);
                finish();
            }
        });
    }

}
