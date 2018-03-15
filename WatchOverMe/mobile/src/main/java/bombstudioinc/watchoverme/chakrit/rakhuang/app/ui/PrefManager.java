package bombstudioinc.watchoverme.chakrit.rakhuang.app.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;

/**
 * Created by Chakrit  Rakhuang on 06-Aug-16.
 */

class PrefManager {

    private SharedPreferences pref;
    private SharedPreferences.Editor editor;

    //Shared preferences file name
    private static final String PREF_NAME = "Wrach Over";
    private static  final String FIRST_TIME_LAUNCH_APP = "firsttimeapp";

    @SuppressLint("CommitPrefEdits")
    public PrefManager(Context context) {
        int PRIVATW_MODE = 0;
        pref = context.getSharedPreferences(PREF_NAME, PRIVATW_MODE);
        editor = pref.edit();
    }

    void firsttimeapp(boolean firsttime) {
        editor.putBoolean(FIRST_TIME_LAUNCH_APP, firsttime);
        editor.commit();
    }

    boolean firsttimeapp(){
        return pref.getBoolean(FIRST_TIME_LAUNCH_APP, true);
    }
}