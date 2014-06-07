package net.board.filter;

public class SpamFilter {
	
	public static boolean isUpperCase(char input){
		if( input >= 65 && input <= 90){
			return true; // 대문자
		} else if( input >= 97 && input <= 122 ){
			return false; // 소문자
		}
		// 영어 아님
		return false;
	}
	
	public static float getChangeCaseRate(String string){
		int length = string.length();
		int changeCount = 0;
		for(int i = 0; i < length-1; i++){
			if(isUpperCase(string.charAt(i)) != isUpperCase(string.charAt(i+1))){
				changeCount++;
			}
		}
		return (float)((float)changeCount/(float)length);
	}
}