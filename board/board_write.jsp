<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%@ page import="net.board.db.*"%>
<%
//BoardBean board=(BoardBean)request.getAttribute("boarddata"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>게시글 작성</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<%@include file="../in_meta.jspf"%>

</head>
<!-- head 끝 -->
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="../in_navibar.jspf"%>
	</nav>
	<div class="container" style="margin-top: 3%;">
		<!-- 게시판 설명 부분 -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					<%=request.getParameter("category")%>
					게시판 <small>공통의 주제로 이야기 합니다</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active"><%=request.getParameter("category")%> 게시판</li>
				</ol>
			</div>
			<!-- col-lg-12 -->
		</div>
		<!-- row -->

		<div class="row">
			<div class="col-lg-12">
				<!-- article 하나 -->
				<div class="panel-group" id="accordion">
					<form action="<%=request.getContextPath()%>/BoardAddAction.bo"
						method="post" enctype="multipart/form-data" name="boardform">

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title board-item">
									<input name="CATEGORY" type="hidden"
										value="<%=request.getParameter("category") %>" /> <a
										class="accordion-toggle num" data-toggle="collapse"
										data-parent="#accordion" href="#collapse"> 글쓴이 </a>
								</h4>
							</div>
							<div id="collapse" class="panel-collapse collapse in">
								<div class="panel-body">
									<input name="B_NAME" class="form-control" type="text"
										maxlength="10" value="" />
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title board-item">
									<a class="accordion-toggle num" data-toggle="collapse"
										data-parent="#accordion" href="#collapse"> 비밀번호 </a>
								</h4>
							</div>
							<div id="collapse" class="panel-collapse collapse in">
								<div class="panel-body">
									<input name="B_PASS" class="form-control" type="password"
										maxlength="10" value="" />
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title board-item">
									<a class="accordion-toggle num" data-toggle="collapse"
										data-parent="#accordion" href="#collapse"> 제 목 </a>
								</h4>
							</div>
							<div id="collapse" class="panel-collapse collapse in">
								<div class="panel-body">
									<input name="B_SUBJECT" class="form-control" type="text"
										size="50" maxlength="100" value="" />
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title board-item">
									<a class="accordion-toggle num" data-toggle="collapse"
										data-parent="#accordion" href="#collapse"> 내 용 </a>
								</h4>
							</div>
							<div id="collapse" class="panel-collapse collapse in">
								<div class="panel-body">
									<textarea name="B_CONTENT" class="form-control" cols="67"
										rows="15"></textarea>
								</div>
							</div>
						</div>
						<div class="col-xs-2">
							<div class="col-xs-3">
								<a href="javascript:addboard()" class="btn btn-block btn-lg btn-primary">등록</a>
							</div>
							<div class="col-xs-3">
								<a href="javascript:history.go(-1)" class="btn btn-block btn-lg btn-inverse">뒤로</a>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- /.container -->
	<div class="container">
		<hr>
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Company 2013</p>
				</div>
			</div>
		</footer>
	</div>
	<!-- /.container -->

	<!-- JavaScript -->
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/modern-business.js"></script>
</body>
</html>