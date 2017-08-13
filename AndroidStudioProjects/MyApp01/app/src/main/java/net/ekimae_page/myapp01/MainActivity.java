package net.ekimae_page.myapp01;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void chageLabel(View view) {
        TextView tv = (TextView)findViewById(R.id.txt1);
        tv.setText("Changed!");
    }
}
