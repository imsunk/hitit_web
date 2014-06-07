<%@ page buffer="10kb" errorPage="error.jsp"
	contentType="text/html; charset=utf-8"
	import="java.sql.*,javax.sql.*,java.io.*"%>
<%! 
	// DB 연결할 아이디 생성
	String url, id = "root", passwd = "";	
	public void jspInit() {
		try {
			url = "jdbc:mysql://localhost:3306/work";
			String option="?useUnicode=true&characterEncoding=utf-8";
			url = url + option;
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%><%
	// DB연결
	Connection conn = DriverManager.getConnection(url, id, passwd);
	
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String nick = request.getParameter("nick");
	String password = request.getParameter("password");
	String password_chk = request.getParameter("password_chk");
	String phone = request.getParameter("phone");
	String personal_ok = request.getParameter("personal_ok");
	String message_ok = request.getParameter("message_ok");
	String mail_ok = request.getParameter("mail_ok");

	if( email == null || name == null || nick == null || password == null || password_chk == null || phone == null || personal_ok == null || message_ok == null || mail_ok == null){
		// return 
		out.println("error null");
		out.println("<br />"+ email );
		out.println("<br />"+ name );
		out.println("<br />"+ nick );
		out.println("<br />"+ password );
		out.println("<br />"+ phone );
		out.println("<br />"+ personal_ok );
		out.println("<br />"+ message_ok );
		out.println("<br />"+ mail_ok );

	} else if( !password.equals(password_chk)){
		out.println("error password_chk");
	} else {
		out.println("<br />"+ email );
		out.println("<br />"+ name );
		out.println("<br />"+ nick );
		out.println("<br />"+ password );
		out.println("<br />"+ phone );
		out.println("<br />"+ personal_ok );
		out.println("<br />"+ message_ok );
		out.println("<br />"+ mail_ok );
	}

	PreparedStatement ptmt = conn.prepareStatement("insert into tr_member ( email, name, nick, password, phone, personal_ok, message_ok, email_ok, authentication_ok ) values ( ?, ?, ? , ? , ? , ? , ? , ? , ? )");


	ptmt.setString(1, email );
	ptmt.setString(2, name );
	ptmt.setString(3, nick );
	ptmt.setString(4, password );
	ptmt.setString(5, phone );
	ptmt.setInt(6, personal_ok.equals("on")? 1:0 );
	ptmt.setInt(7, message_ok.equals("on")? 1:0 );
	ptmt.setInt(8, mail_ok.equals("on")? 1:0 );
	ptmt.setInt(9, 0 ); // authentication_ok 메일인증을 받아야됨

	
	try {
		ptmt.executeUpdate();
		//pageContext.include( "character_create.jsp" );
		//response.sendRedirect("../character_create.jsp");
		out.print("<script>alert('계정등록이 완료되었습니다.');</script>");
	} catch (SQLException e) {
		out.print("<script>alert('가입이 되지 않았습니다. 잠시 후 다시 시도하세요.');</script>");
		throw e;
		//location.replace('account_join.jsp');
		//response.sendRedirect( "../account_join.jsp" );
	} finally {
		ptmt.close();
	}

	// 인증메일 보내기
	// 뒤로가기 안되게
	// 개인정보 암호화?
	// 로그인시 로그인 페이지로

	//insert into tr_member ( email, name, nick, password, phone, personal_ok, message_ok, email_ok, authentication_ok )
	//values ( ?, ?, ? , ? , ? , ? , ? , ? , ? );

%>