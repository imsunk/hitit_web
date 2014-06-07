package net.board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	DataSource ds;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public BoardDAO() {
		try{
			Context init = new InitialContext();
	  	    ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB_test2");
	  		
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
		
	}
	//글의 개수 구하기
	public int getListCount(String category) {
		int x= 0;
		
		try{
			
			con=ds.getConnection();
			//if(getDebugMode())stem.out.println("getConnection");
			pstmt=con.prepareStatement("select count(*) from m2board where CATEGORY = ?");
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			if(getDebugMode())System.out.println("getListCount 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return x;
	}
	
	//글 목록 보기
	public List getBoardList(int page,int limit, String category){
		String B_list_sql="select B_NUM, B_NAME, B_SUBJECT, B_CONTENT, B_FILE, B_RE_REF, B_RE_LEV, B_RE_SEQ, B_READCOUNT, B_DATE from "+
		//"(select rownum rnum,B_NUM,B_NAME,B_SUBJECT,"+
		"(select @RNUM := @RNUM + 1 as rnum,B_NUM,B_NAME,B_SUBJECT,"+
		"B_CONTENT,B_FILE,B_RE_REF,B_RE_LEV,"+
		"B_RE_SEQ,B_READCOUNT,B_DATE, CATEGORY from "+
		//"(select * from m2board order by B_RE_REF desc,B_RE_SEQ asc)) "+
		"(select B_NUM, B_NAME, B_PASS, B_SUBJECT, B_CONTENT, B_FILE, B_RE_REF, B_RE_LEV, B_RE_SEQ, B_READCOUNT, B_DATE, CATEGORY from m2board where CATEGORY = ? order by B_RE_REF desc,B_RE_SEQ asc) alias1, (select @RNUM := 0) R) alias2 "+
		"where rnum>=? and rnum<=? and CATEGORY = ? order by B_DATE desc ";
		
		List list = new ArrayList();
		
		int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
		int endrow=startrow+limit-1; //읽을 마지막 row 번호.		
		try{
			con = ds.getConnection();
			pstmt = con.prepareStatement(B_list_sql);
			pstmt.setString(1, category);
			pstmt.setInt(2, startrow);
			pstmt.setInt(3, endrow);
			pstmt.setString(4, category);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BoardBean board = new BoardBean();
				board.setB_NUM(rs.getInt("B_NUM"));
				board.setB_NAME(rs.getString("B_NAME"));
				board.setB_SUBJECT(rs.getString("B_SUBJECT"));
				board.setB_CONTENT(rs.getString("B_CONTENT"));
				board.setB_FILE(rs.getString("B_FILE"));
				board.setB_RE_REF(rs.getInt("B_RE_REF"));
				board.setB_RE_LEV(rs.getInt("B_RE_LEV"));
				board.setB_RE_SEQ(rs.getInt("B_RE_SEQ"));
				board.setB_READCOUNT(rs.getInt("B_READCOUNT"));
				board.setB_DATE(rs.getDate("B_DATE"));
				board.setCATEGORY(category);
				list.add(board);
			}
			
			return list;
		}catch(Exception ex){
			if(getDebugMode())System.out.println("getBoardList 에러 : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return null;
	}

	public List getBoardList(int page,int limit, String category, String keyword){
		String B_list_sql="select B_NUM, B_NAME, B_SUBJECT, B_CONTENT, B_FILE, B_RE_REF, B_RE_LEV, B_RE_SEQ, B_READCOUNT, B_DATE from "+
		//"(select rownum rnum,B_NUM,B_NAME,B_SUBJECT,"+
		"(select @RNUM := @RNUM + 1 as rnum,B_NUM,B_NAME,B_SUBJECT,"+
		"B_CONTENT,B_FILE,B_RE_REF,B_RE_LEV,"+
		"B_RE_SEQ,B_READCOUNT,B_DATE, CATEGORY from "+
		//"(select * from m2board order by B_RE_REF desc,B_RE_SEQ asc)) "+
		"(select B_NUM, B_NAME, B_PASS, B_SUBJECT, B_CONTENT, B_FILE, B_RE_REF, B_RE_LEV, B_RE_SEQ, B_READCOUNT, B_DATE, CATEGORY from m2board where CATEGORY = ? order by B_RE_REF desc,B_RE_SEQ asc) alias1, (select @RNUM := 0) R) alias2 "+
		"where rnum>=? and rnum<=? and CATEGORY = ? and B_CONTENT like ? order by B_DATE desc ";
		
		List list = new ArrayList();
		
		int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
		int endrow=startrow+limit-1; //읽을 마지막 row 번호.		
		try{
			con = ds.getConnection();
			pstmt = con.prepareStatement(B_list_sql);
			pstmt.setString(1, category);
			pstmt.setInt(2, startrow);
			pstmt.setInt(3, endrow);
			pstmt.setString(4, category);
			pstmt.setString(5, "%"+keyword+"%");
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BoardBean board = new BoardBean();
				board.setB_NUM(rs.getInt("B_NUM"));
				board.setB_NAME(rs.getString("B_NAME"));
				board.setB_SUBJECT(rs.getString("B_SUBJECT"));
				board.setB_CONTENT(rs.getString("B_CONTENT"));
				board.setB_FILE(rs.getString("B_FILE"));
				board.setB_RE_REF(rs.getInt("B_RE_REF"));
				board.setB_RE_LEV(rs.getInt("B_RE_LEV"));
				board.setB_RE_SEQ(rs.getInt("B_RE_SEQ"));
				board.setB_READCOUNT(rs.getInt("B_READCOUNT"));
				board.setB_DATE(rs.getDate("B_DATE"));
				board.setCATEGORY(category);
				list.add(board);
			}
			
			return list;
		}catch(Exception ex){
			if(getDebugMode())System.out.println("getBoardList[검색] 에러 : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 내용 보기.
	public BoardBean getDetail(int num) throws Exception{
		
		BoardBean board = null;
		try{
			con = ds.getConnection();
			pstmt = con.prepareStatement(
					"select B_NUM, B_NAME, B_PASS, B_SUBJECT, B_CONTENT, B_FILE, B_RE_REF, B_RE_LEV, B_RE_SEQ, B_READCOUNT, B_DATE, CATEGORY from m2board where B_NUM = ?");
			pstmt.setInt(1, num);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				board = new BoardBean();
				board.setB_NUM(rs.getInt("B_NUM"));
				board.setB_NAME(rs.getString("B_NAME"));
				board.setB_SUBJECT(rs.getString("B_SUBJECT"));
				board.setB_CONTENT(rs.getString("B_CONTENT"));
				board.setB_FILE(rs.getString("B_FILE"));
				board.setB_RE_REF(rs.getInt("B_RE_REF"));
				board.setB_RE_LEV(rs.getInt("B_RE_LEV"));
				board.setB_RE_SEQ(rs.getInt("B_RE_SEQ"));
				board.setB_READCOUNT(rs.getInt("B_READCOUNT"));
				board.setB_DATE(rs.getDate("B_DATE"));
				board.setCATEGORY(rs.getString("CATEGORY"));
			}
			return board;
		}catch(Exception ex){
			if(getDebugMode())System.out.println("getDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 등록
	public boolean boardInsert(BoardBean board){
		
		int num =0;
		String sql="";
		
		int result=0;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement("select max(B_num) from m2board");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;
			
			sql="insert into m2board (B_NUM,B_NAME,B_PASS,B_SUBJECT,";
			sql+="B_CONTENT, B_FILE, B_RE_REF,"+
				"B_RE_LEV,B_RE_SEQ,B_READCOUNT,"+
//				"B_DATE) values(?,?,?,?,?,?,?,?,?,?,sysdate)";
				"B_DATE, CATEGORY) values(?,?,?,?,?,?,?,?,?,?,now(),?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getB_NAME());
			pstmt.setString(3, board.getB_PASS());
			pstmt.setString(4, board.getB_SUBJECT());
			pstmt.setString(5, board.getB_CONTENT());
			pstmt.setString(6, board.getB_FILE());
			pstmt.setInt(7, num);
			pstmt.setInt(8, 0);
			pstmt.setInt(9, 0);
			pstmt.setInt(10, 0);
			pstmt.setString(11, board.getCATEGORY());
			
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			if(getDebugMode())System.out.println("boardInsert 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return false;
	}
	
	//글 답변
	public int boardReply(BoardBean board){
		
		String B_max_sql="select max(B_num) from m2board";
		String sql="";
		int num=0;
		int result=0;
		
		int re_ref=board.getB_RE_REF();
		int re_lev=board.getB_RE_LEV();
		int re_seq=board.getB_RE_SEQ();
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(B_max_sql);
			rs = pstmt.executeQuery();
			if(rs.next())num =rs.getInt(1)+1;
			else num=1;
			
			sql="update m2board set B_RE_SEQ=B_RE_SEQ+1 where B_RE_REF=? ";
			sql+="and B_RE_SEQ>?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,re_ref);
			pstmt.setInt(2,re_seq);
			result=pstmt.executeUpdate();
			
			re_seq = re_seq + 1;
			re_lev = re_lev+1;
			
			sql="insert into m2board (B_NUM,B_NAME,B_PASS,B_SUBJECT,";
			sql+="B_CONTENT, B_FILE,B_RE_REF,B_RE_LEV,B_RE_SEQ,";
			//sysdate
			sql+="B_READCOUNT,B_DATE, CATEGORY) values(?,?,?,?,?,?,?,?,?,?,now(),?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getB_NAME());
			pstmt.setString(3, board.getB_PASS());
			pstmt.setString(4, board.getB_SUBJECT());
			pstmt.setString(5, board.getB_CONTENT());
			pstmt.setString(6, ""); //답장에는 파일을 업로드하지 않음.
			pstmt.setInt(7, re_ref);
			pstmt.setInt(8, re_lev);
			pstmt.setInt(9, re_seq);
			pstmt.setInt(10, 0);
			pstmt.setString(11, board.getCATEGORY());
			pstmt.executeUpdate();
			return num;
		}catch(SQLException ex){
			if(getDebugMode())System.out.println("boardReply 에러 : "+ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return 0;
	}
	
	//글 수정
	public boolean boardModify(BoardBean modifyboard) throws Exception{
		
		String sql="update m2board set B_SUBJECT=?,B_CONTENT=? where B_NUM=?";
		
		try{
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modifyboard.getB_SUBJECT());
			pstmt.setString(2, modifyboard.getB_CONTENT());
			pstmt.setInt(3, modifyboard.getB_NUM());
			pstmt.executeUpdate();
			return true;
		}catch(Exception ex){
			if(getDebugMode())System.out.println("boardModify 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
			}
		return false;
	}
	
	//글 삭제
	public boolean boardDelete(int num){
		
		String B_delete_sql="delete from m2board where B_num=?";
		
		int result=0;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(B_delete_sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			if(getDebugMode())System.out.println("boardDelete 에러 : "+ex);
		}	finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null) con.close();
				}
				catch(Exception ex){}
		}
		return false;
	}
	
	//조회수 업데이트
	public void setReadCountUpdate(int num) throws Exception{
		
		String sql="update m2board set B_READCOUNT = "+
			"B_READCOUNT+1 where B_NUM = "+num;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
		}catch(SQLException ex){
			if(getDebugMode())System.out.println("setReadCountUpdate 에러 : "+ex);
		}
		finally{
			try{
			if(pstmt!=null)pstmt.close();
			if(con!=null) con.close();
			}
			catch(Exception ex){}
		
	}
	}
	
	//글쓴이인지 확인
	public boolean isBoardWriter(int num,String pass){
		
		String B_sql="select B_PASS from m2board where B_NUM=?";
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(B_sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();
			
			if(pass.equals(rs.getString("B_PASS"))){
				return true;
			}
		}catch(SQLException ex){
			if(getDebugMode())System.out.println("isBoardWriter 에러 : "+ex);
		}
	finally{
			try{
			if(pstmt!=null)pstmt.close();
			if(con!=null) con.close();
			}
			catch(Exception ex){}
		
	}
		return false;
	}

	public String getCategoryName(String category) {
		String x= "noname";
		
		try{
			
			con=ds.getConnection();
			//if(getDebugMode())stem.out.println("getConnection");
			pstmt=con.prepareStatement("select name from m2board_info where category = ?");
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x=rs.getString(1);
			}
		}catch(Exception ex){
			if(getDebugMode())System.out.println("getCategoryName 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return x;
	}

	public boolean getDebugMode() {
		return true;
	}

}
	