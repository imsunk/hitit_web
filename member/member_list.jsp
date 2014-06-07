<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="net.member.db.*" %>
<%
List memberlist = (List)request.getAttribute("memberlist");
%>
<title>회원관리 시스템 관리자모드(회원 목록 보기)</title>

회원 목록
<%
for(int i=0;i<memberlist.size();i++){ 
MemberBean member=(MemberBean)memberlist.get(i);
%>
<a href="MemberViewAction.me?id=<%=member.getM_ID() %>">
<%=member.getM_ID() %>
</a>
<a href="MemberDeleteAction.me?id=<%=member.getM_ID() %>">삭제</a>
<%} %>
<a href="./BoardList.bo">[게시판 이동]</a>


