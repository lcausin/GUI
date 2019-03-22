package com.shine_research.sdk.keyboard;
import android.app.NativeActivity;
import android.os.Bundle;
import android.os.Build;
import android.util.AttributeSet;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.view.View;
import android.view.KeyEvent;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;

import android.app.NativeActivity;


public class KeyboardActivity extends NativeActivity implements KeyEvent.Callback
{
	private KeyboardView mKeyboardView;
	private String mKeyMultipleString;

	static class KeyboardView extends View {
        public KeyboardView(Context context) {
            super(context);
        }

        public KeyboardView(Context context, AttributeSet attrs) {
            super(context, attrs);
        }

        @Override
        public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
            if(Build.VERSION.SDK_INT >= 11) {
                outAttrs.imeOptions = EditorInfo.IME_FLAG_NO_FULLSCREEN;
            }

            final boolean fullEditor = false;
            InputConnection ic = new BaseInputConnection(this, fullEditor);

            return ic;
        }
    }

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mKeyboardView = new KeyboardView(this);

		setContentView(mKeyboardView);
        mKeyboardView.requestFocus();
        mKeyboardView.setFocusable(true);
        mKeyboardView.setFocusableInTouchMode(true);

	}

	public boolean showKeyboard() {
		((InputMethodManager)this.getSystemService(Context.INPUT_METHOD_SERVICE)).showSoftInput(mKeyboardView, 0);
		return true;
	}

	public boolean hideKeyboard() {
		((InputMethodManager)this.getSystemService(Context.INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(mKeyboardView.getWindowToken(), 0);
		return true;
	}

	public native void nativeOnKeyMultiple(String itemIdVerify);

	public boolean onKeyMultiple (int keyCode, int count, KeyEvent event)  
	{ 
		mKeyMultipleString = event.getCharacters();

		this.runOnUiThread( new Runnable()
		{
			public void run()
			{
				nativeOnKeyMultiple(mKeyMultipleString);
			}
		});

		return true;
	}
}
