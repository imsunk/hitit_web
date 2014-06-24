<%@ page language="java" contentType="text/html; charset=utf-8"%><%@ page
	import="net.board.db.*"%>
<%BoardBean board = (BoardBean)request.getAttribute("boarddata"); %>
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



<link href="css/blog-post.css" rel="stylesheet">


<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="css/index_main.css" rel="stylesheet">
<link href="css/flat-ui.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">
<link href="board/css/board_view.css" rel="stylesheet">
<link href="css/index_main.css" rel="stylesheet">

</head>
<!-- head 끝 -->
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="../in_navibar.jspf"%>
	</nav>
	<div class="container">
		<!-- 게시판 설명 부분 -->
		<div class="page-header">
			<!-- col-lg-12 -->
		</div>
		<!-- row -->
		<div class="row">
			<div class="col-lg-12">
				<!-- article 하나 -->
				<div class="panel-group" id="accordion">
					<form action="<%=request.getContextPath()%>/BoardAddAction.bo"
						method="post" enctype="multipart/form-data" name="boardform">
						<h1><%=board.getB_SUBJECT() %></h1>
						<p class="lead">
							by <a href="#fakelink"><%=board.getB_NAME() %></a>
						</p>
						<hr>
						<span class="glyphicon glyphicon-time"></span> Posted on <%=board.getB_DATE()%></br>
						<hr>
						<div class="panel-body">
						<%
						String content=board.getB_CONTENT();
							if(content.length()<600){
							%><textarea style="border: 1px solid white" cols="67" rows=10
									readonly><%=content %></textarea><%
							}else{
								
									%><textarea style="border: 1px solid white" cols="67" rows=<%=content.length()/16 %>
									readonly><%=content %></textarea><%
							} %>
						</div>
						<hr>
						<%if(!(board.getB_FILE()==null)){ %>
						<a
							href="<%=request.getContextPath()%>/board/boardupload/<%=board.getB_FILE()%>"><%=board.getB_FILE() %>
						</a>
						<hr>
						<%} %>
						
						<div class="col-xs-2" >
							<div class="col-xs-3" >
								<a class="btn btn-block btn-lg btn-primary"
									href="<%=request.getContextPath()%>/BoardReplyView.bo?num=<%=board.getB_NUM() %>">답변</a>
							</div>
							<div class="col-xs-3">
								<a class="btn btn-block btn-lg btn-inverse"
									href="<%=request.getContextPath()%>/BoardModify.bo?num=<%=board.getB_NUM() %>&category=<%=board.getCATEGORY() %>">수정</a>
							</div>
							<div class="col-xs-3">
								<a class="btn btn-block btn-lg btn-danger"
									href="<%=request.getContextPath()%>/BoardDelete.bo?num=<%=board.getB_NUM() %>&category=<%=board.getCATEGORY() %>">삭제</a>
							</div>
							<div class="col-xs-3">
								<a class="btn btn-block btn-lg btn-info"
									href="<%=request.getContextPath()%>/BoardList.bo?category=<%=board.getCATEGORY() %>">목록</a>
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
					<p>Copyright &copy; Hit-IT 2014</p>
				</div>
			</div>
		</footer>
	</div>
	<!-- /.container -->
	<!-- JavaScript -->
	<script src="js/jquery-1.10.2.js">
		
	</script>
	<script src="js/bootstrap.js">
		
	</script>
	<script src="js/modern-business.js">
		
	</script>
</body>
</html>
