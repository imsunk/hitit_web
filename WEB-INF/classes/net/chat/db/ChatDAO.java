package net.chat.db;

import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class ChatDAO {
	/** DB연결용 **/
	public Connection getConnection() {
		return getConnectionJDNI();
	}

	public Connection getConnectionJDNI() {
		Context initCtx;
		Connection conn = null;

		try {
			initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource) envCtx.lookup("jdbc/MysqlDB_test2");
			conn = ds.getConnection();
			return conn;
		} catch (NamingException e) {
			e.printStackTrace();
			System.out.println(e);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB Connect Fail: " + e);
		}
		return conn;
	}
	
	public void intoChatRoom(String charName, int roomNum){ // 채팅 유저 목록에 추가
		Connection conn = getConnection();
		PreparedStatement ptmt = null;

		try{
			ptmt = conn.prepareStatement("insert into m2chat_user (user_nick, user_id, room_id) values (?,?,?)");
			ptmt.setString(1,charName);
			ptmt.setString(2,charName);
			ptmt.setInt(3,roomNum);
			ptmt.executeUpdate();
		} catch(SQLException se){ // 인서트시 현재 있는 경우 예외나와서 무시
			System.err.println("intoChatRoom: " + se);
		} finally {
			if (ptmt != null) try {	ptmt.close(); } catch (Exception e) {}
			if (conn != null) try { conn.close(); } catch (Exception e) {}
		}
	}
	
	public void outChatRoom(String charName, int roomNum){ // 채팅 유저 목록에서 삭제
		Connection conn = getConnection();
		PreparedStatement ptmt = null;

		try{
			ptmt = conn.prepareStatement("delete from m2chat_user where room_id=? and  user_id= ?");
			ptmt.setString(1,charName);
			ptmt.setString(2,charName);
			ptmt.setInt(3,roomNum);
			ptmt.executeUpdate();
		} catch(SQLException se){ // 인서트시 현재 있는 경우 예외나와서 무시
			System.err.println("outChatRoom: " + se);
		} finally {
			if (ptmt != null) try {	ptmt.close(); } catch (Exception e) {}
			if (conn != null) try { conn.close(); } catch (Exception e) {}
		}
	}
	
	public ArrayList<String> getChatUserList(int roomNum){
		Connection conn = getConnection();
		PreparedStatement ptmt = null;
		ResultSet rs = null;
		ArrayList<String> result = new ArrayList<String>(); 
		try{
			ptmt = conn.prepareStatement("select user_id from m2chat_user where room_id = ?");
			ptmt.setInt(1,roomNum);
			rs = ptmt.executeQuery();
			while(rs.next()){	
				result.add(rs.getString(1));
			}
		} catch(SQLException se){ // 인서트시 현재 있는 경우 예외나와서 무시
			System.err.println("getChatUserList: " + se);
		} finally {
			if (rs != null) try { rs.close(); } catch (Exception e) {}
			if (ptmt != null) try {	ptmt.close(); } catch (Exception e) {}
			if (conn != null) try { conn.close(); } catch (Exception e) {}
		}
		return result;
	}
	
	public ArrayList<Integer> getChatRoomList(){
		Connection conn = getConnection();
		PreparedStatement ptmt = null;
		ResultSet rs = null;
		ArrayList<Integer> result = new ArrayList<Integer>(); 
		try{
			ptmt = conn.prepareStatement("SELECT room_id from m2chat");
			rs = ptmt.executeQuery();
			while(rs.next()){	
				result.add(rs.getInt(1));
			}
		} catch(SQLException se){ // 인서트시 현재 있는 경우 예외나와서 무시
			System.err.println("getChatRoomList: " + se);
		} finally {
			if (rs != null) try { rs.close(); } catch (Exception e) {}
			if (ptmt != null) try {	ptmt.close(); } catch (Exception e) {}
			if (conn != null) try { conn.close(); } catch (Exception e) {}
		}
		return result;
	}
	
	public boolean existUserInChatRoom(int roomNum, String user_id){
		Connection conn = getConnection();
		PreparedStatement ptmt = null;
		ResultSet rs = null;
		boolean result = false; 
		try{
			ptmt = conn.prepareStatement("select user_id, room_id from m2chat_user WHERE room_id = ? and user_id = ?");
			ptmt.setInt(1,roomNum);
			ptmt.setString(2,user_id);
			rs = ptmt.executeQuery();
			while(rs.next()){	
				result = true;
			}
		} catch(SQLException se){ // 인서트시 현재 있는 경우 예외나와서 무시
			System.err.println("existUserInChatRoom: " + se);
		} finally {
			if (rs != null) try { rs.close(); } catch (Exception e) {}
			if (ptmt != null) try {	ptmt.close(); } catch (Exception e) {}
			if (conn != null) try { conn.close(); } catch (Exception e) {}
		}
		return result;
	}
}
