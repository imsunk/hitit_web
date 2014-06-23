<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="java.sql.*, java.util.*, java.text.SimpleDateFormat"%>
<%		
	request.setCharacterEncoding("utf8");
	String name = java.net.URLDecoder.decode(request.getParameter("name"), "UTF-8");
	String msg = java.net.URLDecoder.decode(request.getParameter("msg"), "UTF-8");
	//int age = Integer.parseInt(request.getParameter("age"));
	System.out.println("검색 값 - name = "+name+", age = "+msg);
	
	String url = "jdbc:mysql://localhost:3306/hitit";
	String option = "?useUnicode=true&characterEncoding=UTF8";
	String id = "hitit";
	String pwd = "hitit113112";
	url = url + option;
	//String query = "select * from myroom where =? and age=?";
	String query1 = "insert into myhittok values('B', now(), ?, ?);";
	String query2 = "select * from myhittok;";
	//DateFormat format2 = DateFormat.getDateInstance(DateFormat.LONG);
	Connection conn = null;
	PreparedStatement pstmt1 = null;
	//ResultSet rs1 = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs2 = null;
%>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection(url, id, pwd);
		pstmt1 = conn.prepareStatement(query1);
		pstmt1.setString(1, name);
		pstmt1.setString(2, msg);
		pstmt1.executeUpdate();
		
		pstmt2 = conn.prepareStatement(query2);
		rs2 = pstmt2.executeQuery();
		
		out.println("<hittok>");
		while(rs2.next()){
			out.println("<hittok_item>");
			out.println("<room>"+rs2.getString("room")+"</room>");
			out.println("<date>"+rs2.getString("date")+"</date>");
			out.println("<name>"+rs2.getString("name")+"</name>");
			out.println("<msg>"+rs2.getString("msg")+"</msg>");
			out.println("</hittok_item>");
		}
		out.println("</hittok>");
	}catch(Exception e){
		System.out.println("Connection Error" + e);
		e.printStackTrace();
	}finally{
		if(pstmt1!=null) try{pstmt1.close();}catch(SQLException ex){}
		if(rs2!=null) try{rs2.close();}catch(SQLException ex){}
		if(pstmt2!=null) try{pstmt2.close();}catch(SQLException ex){}
		if(conn!=null) try{conn.close();}catch(SQLException ex){}
	}	
%>
<!-- 
<hittok>
	<hittok_item>
		<room>A</room>
		<date>130118175500</date>
		<name>김선호</name>
		<msg>hittok!!! 1등</msg>
	</hittok_item>
	<hittok_item>
		<room>B</room>
		<date>130118175511</date>
		<name>김선호1</name>
		<msg>hittok!!! 2등</msg>
	</hittok_item>
</hittok> -->
<%-- <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="550px" border="2">
		<tr><th>이름</th><th>나이</th></tr>
		<%
		if(rs.next()){
		%>
		<tr>
			<td><%=name %></td><td><%=age %></td>
		</tr>
		<%		
			while(rs.next()){
				name = rs.getString("name");
				age = rs.getInt("age");
		%>
		<tr>
			<td><%=name %></td><td><%=age %></td>
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
</html> --%>