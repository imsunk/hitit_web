<%@ page errorPage="error.jsp" contentType="text/html; charset=utf-8"%>
<% response.setHeader("Cache-Control","max-age=0"); %>
<%
	if(!request.getRemoteHost().equals("114.70.194.77")){ // 추가하려면 &&
%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title> 전북대 웹동아리 Hit IT</title>
		<jsp:include page="./templete/style.jspf" />
		<jsp:include page="./templete/script.jspf" />
	</head>
	<body>
		<div id="wrap">
			<jsp:include page="./templete/header.jspf" />
			<jsp:include page="./templete/navigator.jspf" />
			<div id="contents">
				<jsp:include page="./page/contents_study_group.jspf" />
			</div><!--div contents-->
			<jsp:include page="./templete/banner.jspf" />
			<jsp:include page="./templete/footer.jspf" />
		<div>
	</body>
</html>

<%}else{ %>
해당 아이피는 차단 되었습니다. <br />
<%}%>
