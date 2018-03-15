package mind.chan.mean.watchchild;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by masterung on 7/12/2017 AD.
 */

public class MyOpenHelper extends SQLiteOpenHelper{

    private Context context;
    public static final String database_name = "Watch.db";
    private static final int database_version = 1;
    private static final String create_child_table = "CREATE TABLE childTABLE (" +
            "id INTEGER PRIMARY KEY," +
            "Code TEXT);";

    public MyOpenHelper(Context context) {
        super(context, database_name, null, database_version);
        this.context = context;
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL(create_child_table);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

    }
}   // Main Class
