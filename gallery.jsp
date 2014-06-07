<%@ page errorPage="500.jsp" contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=0"); %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hit-IT Gallery</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/blueimp/blueimp-gallery.css">
	<link rel="stylesheet" href="css/blueimp/blueimp-gallery-indicator.css">
	<link rel="stylesheet" href="css/blueimp/blueimp-gallery-video.css">
	<link rel="stylesheet" href="css/blueimp/getPhoto.css">
	<%@include file="./in_meta.jspf"%>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="./in_navibar.jspf"%>
    </nav>

    <div class="container">
       <h2></h2>
       <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">
                    <small>재미없는,있는 기억들</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Gallery</li>
                </ol>
            </div>

        </div>
		<div id="links" class="links"></div>
		<div id="blueimp-gallery" class="blueimp-gallery">
			<div class="slides"></div>
			<h3 class="title"></h3>
			<a class="prev">‹</a> <a class="next">›</a> <a class="close">×</a> <a
				class="play-pause"></a>
			<ol class="indicator"></ol>
		</div>
    </div>
    <!-- /.container -->
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
   	<script src="js/blueimp/blueimp-helper.js"></script>
	<script src="js/blueimp/blueimp-gallery.min.js"></script>
	<script src="js/blueimp/blueimp-gallery-fullscreen.js"></script>
	<script src="js/blueimp/blueimp-gallery-indicator.js"></script>
    <script src="js/blueimp/jquery.blueimp-gallery.js"></script>
	<script src="js/blueimp/getPhoto.js"></script>
</body>

</html>
