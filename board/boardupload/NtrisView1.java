package com.example.test;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

public class NtrisView extends View {

	Bitmap winter;

	Context context;
	Canvas canvas;
	
	public class DrawTask extends AsyncTask<Integer, Integer, Integer> { // Í∑∏Î¶¨Í∏??∞Î†à?úÏö©
		public DrawTask() {
		}
		protected Integer doInBackground(Integer... params) {
			// ?êÎûò??Î∞±Í∑∏?ºÏö¥?úÎ°ú ?†Ïùº????
			drawNtrisBoard(canvas);
			return null;
		}
		protected void onCancelled() {
			super.onCancelled();
		}

		protected void onPreExecute() {
			super.onPreExecute();
		}
		protected void onProgressUpdate(Integer... values) {
			super.onProgressUpdate(values);
		}
	}
	
	DrawTask drawTask = new DrawTask();
	
	public NtrisView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		this.context = context;
	}

	public NtrisView(Context context, AttributeSet attrs) {
		super(context, attrs);
		this.context = context;
	}

	public NtrisView(Context context) {
		super(context);
		this.context = context;
		init(context);
	}

	@Override
	protected void onDraw(Canvas canvas) {
		this.canvas = canvas;
		if (winter == null) {
			init(context);
		}

		drawNtrisBoard(canvas);
		super.onDraw(canvas);
	}

	private void init(Context context) {
		winter = BitmapFactory.decodeResource(getResources(), R.drawable.winter);	
		invalidate();
		drawTask.execute();
	}

	private void drawNtrisBoard(Canvas canvas) {

		canvas.drawBitmap(winter, 0, 0, null);

	}
}
