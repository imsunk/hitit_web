package net.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	public MemberDAO() {
		try{
			Context init = new InitialContext();
	  		ds = 
	  			(DataSource) init.lookup("java:comp/env/jdbc/MysqlDB_test2");
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}
	
	public int isMember(MemberBean member){
		String sql="SELECT PW FROM member WHERE ID=?";
		int result=-1;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getM_ID());
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(rs.getString("PW").equals(member.getM_PW())){
					result=1;//일치.
				}else{
					result=0;//불일치.
				}
			}else{
				result=-1;//아이디 존재하지 않음.
			}
		}catch(Exception ex){
			System.out.println("isMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		
		return result;
	}
	
	public boolean joinMember(MemberBean member){
		String sql="INSERT INTO member VALUES (?,?,?,?,?,?,?)";
		int result=0;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getM_ID());
			pstmt.setString(2, member.getM_PW());
			pstmt.setString(3, member.getMajor());
			pstmt.setString(4, member.getM_NAME());
			pstmt.setString(5, member.getNickName());
			pstmt.setString(6, member.getM_EMAIL());
			pstmt.setString(7, member.getAddress());
//			System.out.println(member.getNickName());
//			System.out.println(member.getMajor());
//			System.out.println(member.getAddress());
			result=pstmt.executeUpdate();
			if(result!=0){
				return true;
			}
		}catch(Exception ex){
			System.out.println("joinMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		
		return false;
	}
	
	public int idCheck(String id){
		String sql="select id from member where id=?";
		int result = 0;
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()){
				result=-1;
			}
		}catch(Exception ex){
			System.out.println("idCheck 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		
		return result;
	}
	
	public List getMemberList(){
		String sql="SELECT * FROM MEMBER";
		List memberlist=new ArrayList();
		
		try{
			con=ds.getConnection();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				MemberBean mb=new MemberBean();
				mb.setM_ID(rs.getString("ID"));
				mb.setM_PW(rs.getString("PW"));
				mb.setMajor(rs.getString("Major"));
				mb.setM_NAME(rs.getString("Name"));
				mb.setM_EMAIL(rs.getString("Email"));
				mb.setAddress(rs.getString("Address"));
				mb.setNickName(rs.getString("NickName"));
				memberlist.add(mb);
			}
			return memberlist;
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return null;
	}
	

	public MemberBean getDetailMember(String id){
		String sql="SELECT * FROM MEMBER WHERE M_ID=?";
		
		MemberBean mb=new MemberBean();
		try{
			
			con = ds.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			rs.next();

			mb.setM_ID(rs.getString("ID"));
			mb.setM_PW(rs.getString("PW"));
			mb.setMajor(rs.getString("Major"));
			mb.setM_NAME(rs.getString("Name"));
			mb.setM_EMAIL(rs.getString("Email"));
			mb.setAddress(rs.getString("Address"));
			mb.setNickName(rs.getString("NickName"));

			return mb;
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		
		return null;
	}
	
	/*
	public boolean deleteMember(String id){
	 String sql ="DELETE FROM MEMBER WHERE M_ID=?";
	 int result = 0;
	 try{
	  con = ds.getConnection();
	  pstmt=con.prepareStatement(sql);
	  pstmt.setString(1,id);

	  result = pstmt.executeUpdate();
	  if(result != 0){
	   return true;
	  }

	 }
	 catch(Exception ex){
	  System.out.println("deleteMember 에러: " + ex);	
	 }

	 finally{
	 if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
	 }
	 return false;
	}
	*/
	public boolean deleteMember(String id){
		String sql1 = "DELETE FROM M_BOARD WHERE MB_ID=?";
		String sql2 = "DELETE FROM MEMBER WHERE ID=?";
		boolean isSuccess = false;
		int result1=0;
		int result2=0;
		boolean result =false;
		System.out.println("deleteId="+id);
		try{
			con=ds.getConnection();
			con.setAutoCommit(false);
			pstmt=con.prepareStatement(sql1);
			pstmt.setString(1, id);
			result1=pstmt.executeUpdate();

			pstmt=con.prepareStatement(sql2);
			pstmt.setString(1, id);
			result2=pstmt.executeUpdate();
			if(result1>0 && result2>0){
				result = true;
			}
			isSuccess=true;
		}catch(Exception ex){
			System.out.println("deleteMember 에러: " + ex);	
		}finally{
			try{
			if(isSuccess){
				con.commit();
			}
			else{
				con.rollback();
			}
			}
			catch(Exception e){};
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		
		return result;
	}
}
