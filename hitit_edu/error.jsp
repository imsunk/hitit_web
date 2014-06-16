<%@ page isErrorPage="true"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<title><%=exception.getClass().getName()%></title>
<body>
	<h3 id="header"><%=exception.getClass().getName()%></h3>
	<textarea name="" rows="15" cols="60"><%=exception.getMessage()%></textarea>
	<div id="main">
		<input type="button" onClick="showDetail()" value="상세보기">
		<textarea name="" rows="15" cols="120">
			<%
				exception.printStackTrace(new java.io.PrintWriter(out));
			%>
		</textarea>
	</div>
</body>
