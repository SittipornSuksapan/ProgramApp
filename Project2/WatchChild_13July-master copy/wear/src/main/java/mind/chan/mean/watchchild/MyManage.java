package mind.chan.mean.watchchild;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/**
 * Created by masterung on 7/12/2017 AD.
 */

public class MyManage {

    private Context context;
    private MyOpenHelper myOpenHelper;
    private SQLiteDatabase sqLiteDatabase;

    public MyManage(Context context) {
        this.context = context;

        myOpenHelper = new MyOpenHelper(context);
        sqLiteDatabase = myOpenHelper.getWritableDatabase();

    }

    public long addValue(String strCode) {

        ContentValues contentValues = new ContentValues();
        contentValues.put("Code", strCode);

        return sqLiteDatabase.insert("childTABLE", null, contentValues);
    }


}   // Main Class
