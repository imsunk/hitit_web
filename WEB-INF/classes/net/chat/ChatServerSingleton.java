package net.chat;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Stack;

import net.chat.db.ChatDAO;

public class ChatServerSingleton {
    private volatile static ChatServerSingleton single;
    
    private HashMap<Integer, Stack<String>> roomHm = null;
    private HashMap<Integer, Integer> roomMsgCountHm = null;
    private boolean isStart = false;
    private ChatDAO dao = null; 
    
    public static ChatServerSingleton getInstance(){
        if (single == null) {
            synchronized(ChatServerSingleton.class) {
                if (single == null) { // 초기화 구간
                    single = new ChatServerSingleton();
                    single.loadRoomsFromDB();
                }
            }
        }
        return single;
    }
    
	public void loadRoomsFromDB(){
		if (!isStart) { // 아직 시작 안되어있으면
			roomHm = new HashMap<Integer, Stack<String>>();
			roomMsgCountHm = new HashMap<Integer, Integer>();
			dao = new ChatDAO();

			ArrayList<Integer> roomList = dao.getChatRoomList();
			Iterator<Integer> iter = roomList.iterator();
			while (iter.hasNext()) {
				int tmp = iter.next();
				roomHm.put(tmp, new Stack<String>());
				roomMsgCountHm.put(tmp, 0);
			}
		}
		isStart = true;
	}
	
	public void enterRoom(int roomNum, String hakia_id) {
		boolean idExist = dao.existUserInChatRoom(roomNum, hakia_id);
		if(idExist == true){ // 이미 입장된 아이디가 있는 경우
			// 표시 할 필요 없음
		} else {
			// dao.intoChatRoom(hakia_id,roomNum); // 왜 없지?
			Stack<String> msgStack = roomHm.get(roomNum); // 해당 방의 메세지 스택
			int manCount = roomMsgCountHm.get(roomNum); // 사람수
			manCount++; // 사람수 더하고
			roomMsgCountHm.put(roomNum, manCount); // 메세지 카운트 관리하는 해쉬맵에 다시 등록
			msgStack.push(hakia_id + "님이 입장하셨습니다."); // 메세지 스택에 입장메세지 넣기
		}
	}
	
	public void exitRoom(int roomNum, String hakia_id) throws SQLException {
		boolean idExist = dao.existUserInChatRoom(roomNum, hakia_id);
		if(idExist == false){ // 해당 방에 입장되어있지 않음
			// 출력 필요 없음
		} else {
			dao.outChatRoom(hakia_id, roomNum);
			Stack<String> msgStack = roomHm.get(roomNum);
			int manCount = roomMsgCountHm.get(roomNum);
			manCount--;
			roomMsgCountHm.put(roomNum, manCount);
			msgStack.push(hakia_id + "님이 나가셨습니다.");
		}
	}
	
	public int getManCount(int roomNum) {
		return roomMsgCountHm.get(roomNum);
	}
	
	public int getMsgStackSize(int roomNum){
		return roomHm.get(roomNum).size();
	}
	
	public void pushMsg(int roomNum, String msg){
		Stack<String> msgStack = roomHm.get(roomNum);
		msgStack.push(msg);
	}
	
	public void trunkMsgStack(int roomNum, int minSize){
		Stack<String> msgStack = roomHm.get(roomNum);
		while(msgStack.size() > minSize){
			msgStack.remove(0);
		}
	}
	
	public ArrayList<String> getMsgList(int roomNum){
		Stack<String> msgStack = roomHm.get(roomNum);
		return new ArrayList<String>(msgStack);
	}
	
    private ChatServerSingleton(){
    	
    }
}