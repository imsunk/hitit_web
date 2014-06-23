<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="java.sql.*, java.util.*"%>
<%		
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	System.out.println("검색 값 - name = "+name+", age = "+age);
	
	String url = "jdbc:mysql://localhost:3306/test2";
	String option = "?useUnicode=true&characterEncoding=utf-8";
	String id = "hitit";
	String pwd = "hitit113112";
	url = url + option;
	String query = "select * from kincjf where name=? and age=?";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
%>
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
</hittok>
<!-- <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html> -->