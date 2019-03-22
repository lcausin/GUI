package com.shine_research.sdk;

import com.shine_research.sdk.keyboard.KeyboardActivity;

import android.app.Dialog;

import android.os.Bundle;
import android.os.Build;

import android.util.AttributeSet;
import android.util.Log;
import android.net.Uri;
import android.content.Intent;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;

import android.graphics.Rect;

import com.shine_research.sdk.R;

public class MainActivity extends KeyboardActivity
{
	private Dialog mSplashDialog;

    static
    {
        System.loadLibrary("ShineApp");
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		showSplashScreen();
		super.onCreate(savedInstanceState);
		
		Log.i("ShineApp", "onCreate");		
	}
	
	@Override
	protected void onStart()
	{
		super.onStart();	
		Log.i("ShineApp", "onStart");
	}
	
	@Override
	protected void onResume()
	{
		super.onResume();
		Log.i("ShineApp", "onResume");
	}
	
	@Override
	protected void onPause()
	{
		super.onPause();
		Log.i("ShineApp", "onPause");
	}
	
	@Override
	protected void onStop()
	{
		super.onStop();
		Log.i("ShineApp", "onStop");
	}

	@Override
	protected void onDestroy()
	{
		super.onDestroy();
		Log.i("ShineApp", "onDestroy");
	}
	
	public void showSplashScreen()
	{
		final MainActivity activity = this;
        this.runOnUiThread(new Runnable()
		{
            @Override
            public void run()
			{
                activity.mSplashDialog = new Dialog(activity, R.style.SplashScreen_Fullscreen);

                activity.mSplashDialog.setContentView(R.layout.launch_screen);
                activity.mSplashDialog.setCancelable(false);

                if(!activity.mSplashDialog.isShowing())
				{
                    activity.mSplashDialog.show();
                }
            }
        });
    }

    public void hideSplashScreen()
	{
		final MainActivity activity = this;
        activity.runOnUiThread(new Runnable()
		{
            @Override
            public void run()
			{
                if(null != activity.mSplashDialog && activity.mSplashDialog.isShowing())
				{
                    activity.mSplashDialog.dismiss();
                    activity.mSplashDialog = null;
                }
            }
        });
    }
}
