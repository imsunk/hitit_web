<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<title>회원가입 페이지</title>
<form name="joinform" action="./MemberJoinAction.me" method="post">
회원가입 페이지
아이디
<input type="text" name="M_ID"/></td>
비밀번호
<input type="password" name="M_PW"/></td>
이름
<input type="text" name="M_NAME"/></td>
나이
<input type="text" name="M_AGE" maxlength="2" size="5"/></td>
성별
<input type="radio" name="M_GENDER" value="남" checked/>남자
<input type="radio" name="M_GENDER" value="여"/>여자
이메일 주소
<input type="text" name="M_EMAIL" size="30" /></td>
<a href="javascript:joinform.submit()">회원가입</a>
<a href="javascript:joinform.reset()">다시작성</a>
