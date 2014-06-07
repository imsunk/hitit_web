<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ page import="net.board.db.*" %><%
//BoardBean board=(BoardBean)request.getAttribute("boarddata"); %><html>
<head>
	<title><%=request.getParameter("category")%> 게시판</title>
	<style>@import "<%=request.getContextPath()%>/board/css/default.css";</style>
</head>
<body>
<!-- 게시판 등록 -->
<form action="./BoardAddAction.bo" method="post" 
	enctype="multipart/form-data" name="boardform">
	<input name="CATEGORY" type="hidden" value="<%=request.getParameter("category") %>" />
<table cellpadding="0" cellspacing="0">
	<tr class="center" valign="middle">
		<td colspan="5"><%=request.getParameter("category")%> 게시판</td>
	</tr>
	<tr>
		<td height="16">
			<div class="center">글쓴이</div>
		</td>
		<td>
			<input name="B_NAME" type="text" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td height="16">
			<div class="center">비밀번호</div>
		</td>
		<td>
			<input name="B_PASS" type="password" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td height="16">
			<div class="center">제 목</div>
		</td>
		<td>
			<input name="B_SUBJECT" type="text" size="50" maxlength="100" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td>
			<div class="center">내 용</div>
		</td>
		<td>
			<textarea name="B_CONTENT" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td>
			<div class="center">파일 첨부</div>
		</td>
		<td>
			<input name="B_FILE" type="file"/>
		</td>
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr class="center" valign="middle">
		<td colspan="5">
			<a href="javascript:addboard()">[등록]</a>&nbsp;&nbsp;
			<a href="javascript:history.go(-1)">[뒤로]</a>
		</td>
	</tr>
</table>
</form>
<!-- 게시판 등록 -->
</body>
</html>