<%@ page language="java" contentType="text/html; charset=utf-8" %><%@ page import="java.util.*, java.text.SimpleDateFormat, net.board.db.*" %><%

BoardDAO boarddao=new BoardDAO();
List boardList = (List)request.getAttribute("boardlist");
int listcount=((Integer)request.getAttribute("listcount")).intValue();
int nowpage=((Integer)request.getAttribute("page")).intValue();
int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
int startpage=((Integer)request.getAttribute("startpage")).intValue();
int endpage=((Integer)request.getAttribute("endpage")).intValue();
String category = (String)request.getAttribute("category");
String[] numberArr = new String[]{ "One" ,"Two" ,"Three" ,"Four" ,"Five" ,"Six" ,"Seven" ,"Eight" ,"Nine" ,"Ten" };
int nIdx = 0;
%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>게시판 </title>
	 
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.css" rel="stylesheet">

		<!-- Add custom CSS here -->
		<link href="css/modern-business.css" rel="stylesheet">
		<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="css/modern-business.css" rel="stylesheet">
		<%@include file="../in_meta.jspf"%>
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
						<%=boarddao.getCategoryName(category)%> 게시판<br/>
						<small>공통의 주제로 이야기 합니다</small>
					</h1>
					<ol class="breadcrumb">
						<li>
							<a href="index.jsp">Home</a>
						</li>
						<li class="active">
							<%=boarddao.getCategoryName(category)%> 게시판
						</li>
					</ol>
				</div><!-- col-lg-12 -->
			</div><!-- row -->


			<div class="row">
				<div class="col-lg-12">
				<!-- article 하나 -->
			<%
				if( listcount > 0 ){ // 글이 하나라도 잇는 경우
					for(int i=0;i<boardList.size();i++){
						BoardBean bl=(BoardBean)boardList.get(i); 
			%>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title board-item">
									<a class="accordion-toggle num" data-toggle="collapse" data-parent="#accordion" href="#collapse<%=numberArr[nIdx]%>">
										<%= bl.getB_NUM() %>
									</a>
			<%
						if( bl.getB_RE_LEV() != 0 ) {
							for(int a=0 ; a <= bl.getB_RE_LEV()*2 ; a++){ 
								out.println("&nbsp;"); // 답글 들여쓰기때문에
							}
							//out.println("-");
						} else { 
							//out.println("-");
						} 
			%>
									<a data-role="button" class="accordion-toggle title" data-toggle="collapse" data-parent="#accordion" href="#collapse<%=numberArr[nIdx]%>" href="<%=request.getContextPath()%>/BoardDetailAction.bo?num=<%=bl.getB_NUM()%>&category=<%=bl.getCATEGORY() %>">
									<%=bl.getB_SUBJECT() %>
									</a>
									<a data-role="button" class="accordion-toggle author" href="<%=request.getContextPath()%>/BoardDetailAction.bo?num=<%=bl.getB_NUM()%>&category=<%=bl.getCATEGORY() %>">
									<%=bl.getB_NAME() %>
									</a>
									<a data-role="button" class="accordion-toggle date" href="<%=request.getContextPath()%>/BoardDetailAction.bo?num=<%=bl.getB_NUM()%>&category=<%=bl.getCATEGORY() %>">
									<%=bl.getB_DATE() %>
									</a>
<%-- 									<a data-role="button" class="accordion-toggle count" href="<%=request.getContextPath()%>/BoardDetailAction.bo?num=<%=bl.getB_NUM()%>&category=<%=bl.getCATEGORY() %>"> --%>
<%-- 									<%=bl.getB_READCOUNT() %>  --%>
<!-- 									</a> -->
								</h4>
							</div>
							<div id="collapse<%=numberArr[nIdx]%>" class="panel-collapse collapse">
								<div class="panel-body">
									<%=bl.getB_CONTENT()%>
								</div>
							</div>
						</div>
			<%
						nIdx++;
					} // for - articles
			%>
					</div>
				</div>
			</div>
	
			<!-- 게시판 네비게이션 바 -->
			<div class="panel-heading board-navibar" height="20">
			<%
					if(nowpage<=1){ %>
					[이전]&nbsp;
			<%
					} else {
			%>
					<a href="<%=request.getContextPath()%>/BoardList.bo?page=<%=nowpage-1 %>&category=<%=category%>">[이전]</a>&nbsp;
			<%
					} // 현재 페이지가 끝인지 체크
			%>
			
			<%
					for ( int a = startpage ; a <= endpage ; a++){
						if(a==nowpage){ 
			%>
					[<%=a %>]
			<%
						} else {
			%>
				<a href="<%=request.getContextPath()%>/BoardList.bo?page=<%=a %>&category=<%=category%>">[<%=a %>]
				</a>&nbsp;
			<%
						} // 현재 페이지 번호가 아님
			%>
			<%
					} // 네이게이션 숫자 루프 끝
			%>

			<%
					if(nowpage>=maxpage){
			%>
					[다음]
			<%
					} else {
			%>
					<a href="<%=request.getContextPath()%>/BoardList.bo?page=<%=nowpage+1 %>&category=<%=category%>">[다음]</a>
			<%
					} // 다음이 있는지 체크
			%>
			<input type="text" onkeydown="if (event.keyCode == 13){ location.href =location.href.split('?')[0]+'?category=<%=category%>&keyword='+this.value; return false;} " style="display:inline-block" />
			<a href="./BoardWrite.bo?category=<%=category%>">[글쓰기]</a>
		</div>
							<!-- /. 게시판 네비게이션 바 -->
			<%
				} // 리스트 항목이 1개 이상 존재 하면
			%>

		<!-- /.container -->
		<div class="container">
			<hr>
			<footer>
				<div class="row">
					<div class="col-lg-12">
						<p>Copyright &copy; Hit-IT 2014 </p>
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