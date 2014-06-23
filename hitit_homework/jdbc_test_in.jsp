<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01_15일 숙제 - JDBC 연결하기</title>
</head>
<body>
	<h1>입력값을 적어주세요</h1>
	<form method="post" action="./jdbc_test_out.jsp">
		이름 : <input type="text" name="name" /><br />
		나이 : <input type="number" min="4" max="99" step="1" value="24" name="age"/>
		<br />
		<input type="submit" value="출력" />
	</form>
 </body>
</html>