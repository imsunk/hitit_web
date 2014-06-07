<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="net.member.db.*"%>
<%
MemberBean member=(MemberBean)request.getAttribute("member");
%>
회원관리 시스템 관리자모드(회원 정보 보기)
아이디 : 
<%=member.getM_ID() %>
비밀번호 : 
<%=member.getM_PW() %>
이름 : 
<%=member.getM_NAME() %>
나이 : 
<%=member.getM_AGE() %>
성별 : 
<%=member.getM_GENDER() %>
이메일 주소 : 
<%=member.getM_EMAIL() %>
<a href=MemberListAction.me>리스트로 돌아가기</a>