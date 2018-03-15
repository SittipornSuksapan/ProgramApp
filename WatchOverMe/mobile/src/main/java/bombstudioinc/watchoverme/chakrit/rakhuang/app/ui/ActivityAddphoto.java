package bombstudioinc.watchoverme.chakrit.rakhuang.app.ui;

import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;

import java.io.ByteArrayOutputStream;

import bombstudioinc.watchoverme.chakrit.rakhuang.app.R;

/**
 * Created by Chakrit  Rakhuang on 11-Aug-16.
 */

public class ActivityAddphoto extends AppCompatActivity {

    private ImageView imageViewupload;
    private Button addphotoadddata;
    private static final int SELECT_PICTURE = 100;
    private EditText input_name;
    private EditText txt_phone;

    // creating an instance of Firebase Storage
    FirebaseStorage storage = FirebaseStorage.getInstance();
    //creating a storage reference. Replace the below URL with your Firebase storage URL.
    StorageReference storageRef = storage.getReferenceFromUrl("gs://watchoverme-f1d06.appspot.com\n" +
            "file_upload UPLOAD FILE");

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_addphoto);

        //getting the reference of the views
        imageViewupload = (ImageView) findViewById(R.id.imageViewupload);
        addphotoadddata = (Button) findViewById(R.id.addphotoadddata);
        input_name = (EditText) findViewById(R.id.input_name);
        txt_phone = (EditText) findViewById(R.id.txt_phone);
        onImageViewClick(); // for selecting an Image from gallery.
        onUploadButtonClick(); // for uploading the image to Firebase Storage.
    }
//----------------------------------------------------------------------------------------------------------------------------
//    Select Picture
//----------------------------------------------------------------------------------------------------------------------------
    private void onImageViewClick() {
        imageViewupload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent();
                i.setType("image/*");
                i.setAction(Intent.ACTION_GET_CONTENT);
                startActivityForResult(Intent.createChooser(i, "Select Picture"), SELECT_PICTURE);
            }
        });
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == RESULT_OK) {
            if (requestCode == SELECT_PICTURE) {
                Uri selectedImageUri = data.getData();
                if (null != selectedImageUri) {
                    // Get the path from the Uri
                    String path = getPathFromURI(selectedImageUri);
                    Log.i("IMAGE PATH TAG", "Image Path : " + path);
                    // Set the image in ImageView
                    imageViewupload.setImageURI(selectedImageUri);

                }
            }
        }
    }

    private String getPathFromURI(Uri contentUri) {
        String res = null;
        String[] proj = {MediaStore.Images.Media.DATA};
        Cursor cursor = getContentResolver().query(contentUri, proj, null, null, null);
        if (cursor != null && cursor.moveToFirst()) {
            int column_index = cursor.getColumnIndexOrThrow(MediaStore.Images.Media.DATA);
            res = cursor.getString(column_index);
        }
        assert cursor != null;
        cursor.close();
        return res;
    }
//----------------------------------------------------------------------------------------------------------------------------
//    Uploadimage , Upload Data
//----------------------------------------------------------------------------------------------------------------------------
    private void onUploadButtonClick () {
        addphotoadddata.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Creating a reference to the full path of the file. myfileRef now points
                // gs://watchoverme-f1d06.appspot.com/myuploadedfile.jpg
                StorageReference myfileRef = storageRef.child("myuploadedfile.jpg");
                imageViewupload.setDrawingCacheEnabled(true);
                imageViewupload.buildDrawingCache();
                Bitmap bitmap = imageViewupload.getDrawingCache();
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, baos);
                byte[] data = baos.toByteArray();

                UploadTask uploadTask = myfileRef.putBytes(data);
                uploadTask.addOnFailureListener(new OnFailureListener() {
                    @Override
                    public void onFailure(@NonNull Exception exception) {
                        Toast.makeText(ActivityAddphoto.this, "TASK FAILED", Toast.LENGTH_SHORT).show();
                    }
                }).addOnSuccessListener(new OnSuccessListener<UploadTask.TaskSnapshot>() {
                    @Override
                    public void onSuccess(UploadTask.TaskSnapshot taskSnapshot) {
                        Toast.makeText(ActivityAddphoto.this, "TASK SUCCEEDED", Toast.LENGTH_SHORT).show();
                        Uri downloadUrl = taskSnapshot.getDownloadUrl();
                        assert downloadUrl != null;
                        String DOWNLOAD_URL = downloadUrl.getPath();
                        Log.v("DOWNLOAD URL", DOWNLOAD_URL);
                        Toast.makeText(ActivityAddphoto.this, DOWNLOAD_URL, Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });

    }
}