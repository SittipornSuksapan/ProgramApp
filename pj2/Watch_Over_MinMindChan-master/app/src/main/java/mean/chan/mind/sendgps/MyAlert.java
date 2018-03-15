package mean.chan.mind.sendgps;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/**
 * Created by MindBU on 12/3/2560.
 */

public class MyAlert {

    //ประกาศตัวแปร
    private Context context;
    private static final int INT = R.mipmap.name;

    public MyAlert(Context context) {
        this.context = context;
    }

    public void myDialog(String strTitle, String strMessage) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setCancelable(false);
        builder.setIcon(INT);
        builder.setTitle(strTitle);
        builder.setMessage(strMessage);
        builder.setPositiveButton("OK", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        builder.show();
    }

}//Main Class
