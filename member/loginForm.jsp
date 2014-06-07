<%@ page language="java" contentType="text/html; charset=UTF-8"%>


<title>로그인 페이지</title>

<form name="loginform" action="./MemberLoginAction.me" method="post">
로그인 페이지
아이디
<input type="text" name="M_ID"/>
비밀번호 
<input type="password" name="M_PW"/>
<a href="javascript:loginform.submit()">로그인</a>
<a href="MemberJoin.me">회원가입</a>
