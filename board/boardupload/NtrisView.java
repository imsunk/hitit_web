package com.hakia.ntris.custom;

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

import com.hakia.ntris.R;
import com.hakia.ntris.game.NtrisBoard;
import com.hakia.ntris.game.UINT;

public class NtrisView extends View {

	Bitmap dot_blue;
	Bitmap dot_gray;
	Bitmap dot_green;
	Bitmap dot_orange;
	Bitmap dot_pink;
	Bitmap dot_red;
	Bitmap dot_sky;
	Bitmap dot_violet;

	NtrisBoard gameBoard;

	Context context;
	Canvas canvas;
	
	Handler handler = new Handler() { // 기본핸들러 틱 쓰려고 만듬
		public void handleMessage(Message msg) {
			switch (msg.what) {
				case 0 :
					handler.sendEmptyMessageDelayed(0, gameBoard.getTick()/30);
					invalidate();
					gameBoard.setNowTickCount(gameBoard.getNowTickCount()+1);
					if(gameBoard.getNowTickCount()%30 == 0){
						//gameBoard.move(UINT.VK_DOWN);
					}
					/*
					if(gameBoard.getGameStatus() == com.hakia.ntris.game.GAME_STATUS.stop){
				
					}
					*/
					break;
			}
		}
	};
	
	public class DrawTask extends AsyncTask<Integer, Integer, Integer> { // 그리기 쓰레드용
		public DrawTask() {
		}
		protected Integer doInBackground(Integer... params) {
			// 원래는 백그라운드로 할일을 함
			return null;
		}
		protected void onCancelled() {
			super.onCancelled();
		}
		protected void onPostExecute(Integer result) {
			super.onPostExecute(result);
			handler.sendEmptyMessageDelayed(0, gameBoard.getTick()/30); // tick 대신에 2000 
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
		if (dot_blue == null) {
			init(context);
		}

		drawNtrisBoard(canvas);
		super.onDraw(canvas);
	}

	private void init(Context context) {
		dot_blue = BitmapFactory.decodeResource(getResources(), R.drawable.dot_blue);
		dot_gray = BitmapFactory.decodeResource(getResources(), R.drawable.dot_gray);
		dot_green = BitmapFactory.decodeResource(getResources(), R.drawable.dot_green);
		dot_orange = BitmapFactory.decodeResource(getResources(), R.drawable.dot_orange);
		dot_pink = BitmapFactory.decodeResource(getResources(), R.drawable.dot_pink);
		dot_red = BitmapFactory.decodeResource(getResources(), R.drawable.dot_red);
		dot_sky = BitmapFactory.decodeResource(getResources(), R.drawable.dot_sky);
		dot_violet = BitmapFactory.decodeResource(getResources(), R.drawable.dot_violet);
		gameBoard = NtrisBoard.getInstance();
		invalidate();
		drawTask.execute();
	}

	private void drawNtrisBoard(Canvas canvas) {
		int top = 10;
		int left = 10;
		int block_width = 10;
		int block_height = 10;
		int[][] tmp = gameBoard.getBoard();
		for (int i = 0; i < 40; i++) {
			for (int j = 0; j < 20; j++) {
				switch (tmp[i][j]) {
					case 0 :
						// 빈 공간은 안그림
						break;
					case 1 :
						canvas.drawBitmap(dot_blue, left + j * block_width, top + i * block_height, null);
						break;
					case 2 :
						canvas.drawBitmap(dot_green, left + j * block_width, top + i * block_height, null);
						break;
					case 3 :
						canvas.drawBitmap(dot_orange, left + j * block_width, top + i * block_height, null);
						break;
					case 4 :
						canvas.drawBitmap(dot_pink, left + j * block_width, top + i * block_height, null);
						break;
					case 5 :
						canvas.drawBitmap(dot_red, left + j * block_width, top + i * block_height, null);
						break;
					case 6 :
						canvas.drawBitmap(dot_sky, left + j * block_width, top + i * block_height, null);
						break;
					case 7 :
						canvas.drawBitmap(dot_violet, left + j * block_width, top + i * block_height, null);
						break;
					default :
						canvas.drawBitmap(dot_gray, left + j * block_width, top + i * block_height, null);
						break;
				}
			}
		}
	}
}
