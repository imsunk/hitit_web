<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8"%>
<%
	response.setHeader("Cache-Control","max-age=0"); 
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1.21 - ajax를 이용한 실시간 채팅</title>
<script src="js/hittok1.js"></script>
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
</head>
<body>
	<div id="search">
		<input name="name" type="text" class="input01" id="name">
		<input name="pwd" type="text" class="input01" id="textbox"
			onkeydown="if (event.keyCode == 13){ getData($('#name')[0].value,this.value); return false;}">
	</div>
	<div id="result">
	<pre></pre>
	</div>
</body>
</html>