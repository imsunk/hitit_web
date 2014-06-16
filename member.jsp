<%@ page contentType="text/html; charset=utf-8"%>
<% response.setHeader("Cache-Control","max-age=0"); %>
<% if(session.getAttribute("id")==null) {%>
	<script>
	alert("로그인해주세요");
	location.href='./index.jsp';
	</script>
	<%}else{ %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Hit-IT - 생긴거</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/modern-business.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/member.css" rel="stylesheet">
<link href="css/index.main.css" rel="stylesheet">
<%@include file="./in_meta.jspf"%>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="./in_navibar.jspf"%>
	</nav>

	<div class="container" style="margin-top: 100px;">
		<div class="row">			
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/jungkookang.jpg">
				</div>
				<div class="caption">
					<h3>강전구(대장)</h3>
					<p>전북대 컴퓨터공학 09</p>					

				</div>
			</div>
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/taeyounghong.jpg" alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>홍태영(대장다음)</h3>
					<p>전북대학교 컴퓨터공학부 09</p>
				</div>
			</div>	
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/yoonsubkim.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>김윤섭(경리)</h3>
					<p>컴퓨터공학09</p>
				</div>
			</div>
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/jiwoolim.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>임지우(기사)</h3>
					<p>전북대학교 컴퓨터공학부 09</p>
				</div>
			</div>
			
					
		</div>
		<div class="row">
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/seulkigo.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>고슬기</h3>
					<p>전북대학교 컴퓨터공학13</p>
				</div>
			</div>

			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/noname1.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>고성식(루키)</h3>
					<p>전북대학교 컴퓨터공학08</p>
				</div>
			</div>

			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/noname2.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>유동윤</h3>
					<p>전북대학교 컴퓨터공학08</p>
				</div>
			</div>

			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/pwkim.jpg" alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>문평화</h3>
					<p>전북대학교 컴퓨터공학08</p>
				</div>
			</div>
		</div>
		<div class=row>
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/nahaeki.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>기나해</h3>
					<p>전북대학교 전자공학부13</p>
				</div>
			</div>
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/yuIngyu.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>유인규</h3>
					<p>전북대학교 컴퓨터공학부04</p>
				</div>
			</div>
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/changsungkim.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>김창성</h3>
					<p>전북대학교 컴퓨터공학부 09</p>
				</div>
			</div>
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/seonhokim.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>김선호(7008-1 NPC)</h3>
					<p>전북대학교 컴퓨터공학08</p>
				</div>
			</div>
			
		</div>
		<div class=row>

			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/sungdongnyuk.jpg"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>성동녁</h3>
					<p>전북대학교 컴퓨터공학부 08</p>
				</div>
			</div>

			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/hykim.jpg" alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>이형섭(재미있는)</h3>
					<p>전북대학교 컴퓨터공학부 09</p>
				</div>
			</div>
			
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/jooheekim.jpg"	>
				</div>
				<div class="caption">
					<h3>김주희(빵)</h3>
					<p>전북대학교 전자공학부13</p>
				</div>
			</div>
			
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/wongihong.png"
						alt="Generic placeholder thumbnail">
				</div>
				<div class="caption">
					<h3>홍원기(슈퍼덕후)</h3>
					<p></p>
				</div>
			</div>

		</div>

		<div class=row>
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/laesunk.jpg">
				</div>
				<div class="caption">
					<h3>김래선(반덕후)</h3>
					<p>전북대학교 컴퓨터공학부 07</p>
				</div>
			</div>
			<div class="four_rows">
				<div class="thumbnail">
					<img src="/img/face/donghyuk.jpg">
				</div>
				<div class="caption">
					<h3>서동혁</h3>
					<p>전북대학교 수학과 13</p>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="container" style="width:100%">
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
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/modern-business.js"></script>
</body>

</html>

<%} %>
