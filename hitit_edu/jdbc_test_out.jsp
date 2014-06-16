<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="java.sql.*, java.util.*"%>
<%		
		request.setCharacterEncoding("UTF-8");
		//String name = request.getParameter("name");
		//int age = Integer.parseInt(request.getParameter("age"));
		//System.out.println("검색 값 - name = "+name+", age = "+age);
		
		/* 
		String url = "jdbc:mysql://localhost:3306/test2";
		String option = "?useUnicode=true&characterEncoding=utf-8";
		String id = "root";
		String pwd = "wjstks";
		url = url + option;
		String query = "select * from hitit_names where name=?";
		 */
		
		String url = "jdbc:cubrid:localhost:33000:demodb:::";
		String option = "?charset=utf-8";
		String id = "dba";
		String pwd = "hitit113112";
		url = url + option;
		
		/* String query = "SELECT host_year, nation_code, gold, " + 
			    "SUM(gold) OVER (PARTITION BY nation_code ORDER BY host_year) sum_gold " + 
			    "FROM participant "+
			    "WHERE nation_code LIKE 'AU%'"; */
			    
		String query = "SELECT host_year, nation_code, gold FROM participant;";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int host_year = 0;
		String nation_code = null;
		int gold = 0, silver = 0, bronze = 0, sum_gold = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01_15일 숙제 - JDBC 연결하기</title>
</head>
<body>
	<%
	try{
		//Class.forName("com.mysql.jdbc.Driver").newInstance();
		Class.forName("cubrid.jdbc.driver.CUBRIDDriver").newInstance();
		conn = DriverManager.getConnection(url, id, pwd);
		pstmt = conn.prepareStatement(query);
		//pstmt.setString(1, name);
		rs = pstmt.executeQuery();
	%>
	<table width="550px" border="2">
		<tr><th>이름</th><th>나이</th></tr>
		<%
		if(rs.next()){
		%>
		<tr>
			<td>host_year</td><td>nation_code</td><td>gold</td><td>sum_gold</td>
		</tr>
		<%		
			while(rs.next()){
				host_year = rs.getInt("host_year");
				nation_code = rs.getString("nation_code");
				gold = rs.getInt("gold");
				//sum_gold = rs.getInt("sum_gold");
		%>
		<tr>
			<td><%=host_year %></td><td><%=nation_code %></td><td><%=gold %></td><%-- <td><%=sum_gold %></td> --%>
		</tr>				
		<%} %>
	<%}else{ %>
		 <tr>
			<td colspan="2">결과값이 없습니다.</td>
		</tr>	
	<%} %>
<%} 
	catch(Exception e){
		System.out.println("Connection Error" + e);
		e.printStackTrace();
	}finally{
		if(rs!=null) try{rs.close();}catch(SQLException ex){}
		if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		if(conn!=null) try{conn.close();}catch(SQLException ex){}
	}
	%>
	</table>
	<a href="./jdbc_test_in.jsp">입력하기</a>
</body>
</html>