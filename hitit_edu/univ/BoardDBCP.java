package univ;

import java.sql.*; 
import java.util.*; 
import javax.sql.*; 
import javax.naming.*; 

//DBCP�� �̿��� ���̺� board ó�� �����ͺ��̽� ���� �ڹٺ��� ���α׷�
public class BoardDBCP {

	// �����ͺ��̽� ������� ���� ����
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;

	// JDBC ����̹� �ε� �޼ҵ�
	public BoardDBCP() {
		try {
			InitialContext ctx = new InitialContext();
		    ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	// �����ͺ��̽� ���� �޼ҵ� 
	public void connect() {
		try {
		    con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// �����ͺ��̽� ���� ���� �޼ҵ� 
	public void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// �Խ����� ��� ���ڵ带 ��ȯ �޼���
	public ArrayList<BoardEntity> getBoardList() {	
		connect();
		ArrayList<BoardEntity> list = new ArrayList<BoardEntity>();
		
		String SQL = "select * from board";
		try {
			pstmt = con.prepareStatement(SQL);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				BoardEntity brd = new BoardEntity();
				brd.setId ( rs.getInt("id") );
				brd.setName ( rs.getString("name") );
				brd.setPasswd ( rs.getString("passwd") );
				brd.setTitle ( rs.getString("title") );
				brd.setEmail ( rs.getString("email") );
				brd.setRegdate ( rs.getTimestamp("regdate") );
				brd.setContent ( rs.getString("content") );
				//����Ʈ�� �߰�
				list.add(brd);
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		return list;
	}

	// �� Ű id�� ���ڵ带 ��ȯ�ϴ� �޼���
	public BoardEntity getBoard(int id) {	
		connect();
		String SQL = "select * from board where id = ?";
		BoardEntity brd = new BoardEntity();
		
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();			
			rs.next();
			brd.setId ( rs.getInt("id") );
			brd.setName ( rs.getString("name") );
			brd.setPasswd ( rs.getString("passwd") );
			brd.setTitle ( rs.getString("title") );
			brd.setEmail ( rs.getString("email") );
			brd.setRegdate ( rs.getTimestamp("regdate") );
			brd.setContent ( rs.getString("content") );
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		return brd;
	}

	// �Խù� ��� �޼���
	public boolean insertDB(BoardEntity board) {
		boolean success = false; 
		connect();
		String sql ="insert into board values(0, ?, ?, ?, ?, sysdate(), ?)";		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getPasswd());
			pstmt.setString(3, board.getTitle());
			pstmt.setString(4, board.getEmail());
			pstmt.setString(5, board.getContent());
			pstmt.executeUpdate();
			success = true; 
		} catch (SQLException e) {
			e.printStackTrace();
			return success;
		}
		finally {
			disconnect();
		}
		return success;
	}
	
	// ������ ������ ���� �޼���
	public boolean updateDB(BoardEntity board) {
		boolean success = false; 
		connect();		
		String sql ="update board set name=?, title=?, email=?, content=? where id=?";	
		try {
			pstmt = con.prepareStatement(sql);
			// ���ڷ� ���� GuestBook ��ü�� �̿��� ����ڰ� ������ ���� ������ SQL�� �ϼ�
			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getEmail());
			pstmt.setString(4, board.getContent());
			pstmt.setInt(5, board.getId());
			int rowUdt = pstmt.executeUpdate();
			//System.out.println(rowUdt);
			if (rowUdt == 1) success = true;
		} catch (SQLException e) {
			e.printStackTrace();
			return success;
		}
		finally {
			disconnect();
		}
		return success;
	}
	
	// �Խù� ������ ���� �޼���
	public boolean deleteDB(int id) {
		boolean success = false; 
		connect();		
		String sql ="delete from board where id=?";
		try {
			pstmt = con.prepareStatement(sql);
			// ���ڷ� ���� �� Ű�� id ���� �̿��� ����
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			success = true;
		} catch (SQLException e) {
			e.printStackTrace();
			return success;
		}
		finally {
			disconnect();
		}
		return success;
	}

	// �����ͺ��̽����� ������ id�� passwd�� ��ġ�ϴ��� �˻��ϴ�  �޼���
	public boolean isPasswd(int id, String passwd) {
		boolean success = false;
		connect();		
		String sql ="select passwd from board where id=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			String orgPasswd = rs.getString(1);
			if ( passwd.equals(orgPasswd) ) success = true; 
			System.out.println(success);
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
			return success;
		}
		finally {
			disconnect();
		}
		return success;
	}
}