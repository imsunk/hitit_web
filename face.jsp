<%@ page errorPage="error.jsp" contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=0"); %><!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>전북대 웹동아리 Hit IT</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/index.css">
		<link rel="stylesheet" href="css/menu.css">

		<jsp:include page="./templete/script.jspf" />
	</head>
	<body>
		<div id="wrap">
			<jsp:include page="./templete/header.jspf" />
			<jsp:include page="./templete/navigator.jspf" />
			<div id="contents">
				<jsp:include page="./page/contents_face.jspf" />
			</div><!--div contents-->
			<jsp:include page="./templete/banner.jspf" />
			<jsp:include page="./templete/footer.jspf" />
		<div>
	</body>
</html>