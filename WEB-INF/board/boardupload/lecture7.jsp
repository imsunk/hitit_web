올리겠습니당

room.xml먼저

<?xml version="1.0" encoding="UTF-8"?>
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

ajax_test.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% response.setHeader("Cache-Control","max-age=0"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1.18 - ajax를 이용한 채팅</title>
<script src="js/hittok.js"></script>
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
</head>
<body>
	<div id="search">
		<input name="keyword" type="text" class="input01" id="text box"
			onkeydown="if (event.keyCode == 13){ getData(); return false;}">
	</div>
	<div id="result">
	<pre></pre>
	</div>
</body>
</html>
