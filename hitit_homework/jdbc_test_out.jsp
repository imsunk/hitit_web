<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="java.sql.*, java.util.*"%>
<%		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		String url = "jdbc:mysql://localhost:3306/hitit";
		String option = "?useUnicode=true&characterEncoding=utf-8";
		String id = "root";
		String pwd = "wjstks";
		url = url + option;
		String query = "select * from kincjf where name=? and age=?";
		Connection conn = null;
		PreparedStatement ptmt = null;
		ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01_15일 숙제 - JDBC 연결하기</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection(url, id, pwd);
		ptmt = conn.prepareStatement(query);
		ptmt.setString(1,name);
		ptmt.setInt(2,age);
		rs = ptmt.executeQuery();
		
	%>
	<table width="550px" border="2">
		<tr><th>이름</th><th>나이</th></tr>
		<tr>
		<% 
		while(rs.next()){
				name = rs.getString("name");
				age = rs.getInt("age");
			%>	
				
				<td><%=name %></td><td><%=age %></td>
			<% }%>	
		
			
		</tr>				
	</table>
	<a href="./jdbc_test_in.jsp">입력하기</a>
</body>
</html>