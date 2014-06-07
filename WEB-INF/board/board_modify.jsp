<%@ page language="java" contentType="text/html; charset=utf-8" %><%@ page import="net.board.db.*" %><%
BoardBean board = (BoardBean)request.getAttribute("boarddata"); %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<title><%=board.getCATEGORY() %> 게시판</title>
	 
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.css" rel="stylesheet">

		<!-- Add custom CSS here -->
		<link href="css/modern-business.css" rel="stylesheet">
		<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

	</head>
	<!-- head 끝 -->
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<%@include file="../in_navibar.jspf"%>
		</nav>
		<div class="container">
			<!-- 게시판 설명 부분 -->
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						<%=board.getCATEGORY() %> 게시판
						<small>공통의 주제로 이야기 합니다</small>
					</h1>
					<ol class="breadcrumb">
						<li>
							<a href="index.jsp">Home</a>
						</li>
						<li class="active">
							<%=board.getCATEGORY() %> 게시판
						</li>
					</ol>
				</div><!-- col-lg-12 -->
			</div><!-- row -->
			
			<div class="row">
				<div class="col-lg-12">
				<!-- article 하나 -->
					<div class="panel-group" id="accordion">
						<form action="BoardModifyAction.bo" method="post" name="modifyform">

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title board-item">
										<input name="CATEGORY" type="hidden" value="<%=request.getParameter("category") %>" />
										<a class="accordion-toggle num" data-toggle="collapse" data-parent="#accordion" href="#collapse">
											글쓴이
										</a>
									</h4>
								</div>
								<div id="collapse" class="panel-collapse collapse in">
									<div class="panel-body">
										<input name="B_NAME" class="form-control" type="text" maxlength="10"  value="<%=board.getB_NAME() %>">
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title board-item">
										<a class="accordion-toggle num" data-toggle="collapse" data-parent="#accordion" href="#collapse">
											비밀번호
										</a>
									</h4>
								</div>
								<div id="collapse" class="panel-collapse collapse in">
									<div class="panel-body">
										<input name="B_PASS" class="form-control" type="password" maxlength="10" value=""/>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title board-item">
										<a class="accordion-toggle num" data-toggle="collapse" data-parent="#accordion" href="#collapse">
											제 목
										</a>
									</h4>
								</div>
								<div id="collapse" class="panel-collapse collapse in">
									<div class="panel-body">
										<input name="B_SUBJECT" class="form-control" type="text" size="50" maxlength="100"  value="<%=board.getB_SUBJECT() %>"/>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title board-item">
										<a class="accordion-toggle num" data-toggle="collapse" data-parent="#accordion" href="#collapse">
											내 용
										</a>
									</h4>
								</div>
								<div id="collapse" class="panel-collapse collapse in">
									<div class="panel-body">
										<textarea name="B_CONTENT" class="form-control" cols="67" rows="15"><%=board.getB_CONTENT() %></textarea>
									</div>
								</div>
							</div>
							<input type="hidden" name="B_NUM" value="<%=board.getB_NUM() %>" />
							<input type="hidden" name="category" value="<%=board.getCATEGORY() %>" />
							<%if(!(board.getB_FILE()==null)){ %>
							파일 첨부
							&nbsp;&nbsp;<%=board.getB_FILE() %>
							<%} %>
							<a href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp;<a href="javascript:history.go(-1)">[뒤로]</a>&nbsp;&nbsp;
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