<%@ page contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=0"); %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hit-IT - About</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <%@include file="./in_meta.jspf"%>
</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="./in_navibar.jspf"%>
    </nav>

    <div class="container">

        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">
                    <small>웹 동아리 Hit IT에 오신것을 환영합니다.</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">About</li>
                </ol>
            </div>

        </div>

        <div class="row">

            <div class="col-md-6">
                <img class="img-responsive" src="/img/main_4.jpg">
            </div>
            <div class="col-md-6">
                <h2>전북대 유일의 웹 동아리</h2>
                <p>홈페이지 제작, JSP, MYSQL, CSS 등을 공부</p>
                <p>저수준의 프로그래밍 보다는, 실전 프로젝트 위주의 공부를 지향</p>
                <p>연혁</p>
				<p>동아리 창립 2012.4.4</p>
            </div>
        </div>
	</div>
    <div class="container" style="width:100%";>

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
