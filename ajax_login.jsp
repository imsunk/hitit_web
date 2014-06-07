<%@ page errorPage="error.jsp" contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=3600000000"); 
	session.setAttribute("Account", "aaaa");
	out.print(1);
%>