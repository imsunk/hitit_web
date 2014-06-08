<%@ page contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=0"); %>

<%
  request.setCharacterEncoding("utf-8");
  if(session!=null){
	  String id = (String)session.getAttribute("id");
	  String name = (String)session.getAttribute("name");
  }
  %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<script type="text/javascript">
	
	function layer_open(el){
		console.log("eadfad");
		var temp = $('#' + el);
		var bg = temp.prev().hasClass('bg');	//dimmed 레이어를 감지하기 위한 boolean 변수
		if(temp.attr('id')=="signin"){
			$('.layer').fadeIn();
		}else{
			$('.layer2').fadeIn();
		}

// 		if(bg){
// 			$('.layer').fadeIn();	//'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다. 
// 		}else{
// 			temp.fadeIn();
// 		}
	
		// 화면의 중앙에 레이어를 띄운다.
		if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
		else temp.css('top', '0px');
		if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
		else temp.css('left', '0px');

		temp.find('a.cbtn').click(function(e){
			if(bg|bgg){
				$('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다. 
			}else{
				temp.fadeOut();
			}
			e.preventDefault();
		});

		$('.layer .bg').click(function(e){	//배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
			$('.layer').fadeOut();
			e.preventDefault();
		});		
	}				
	
	</script>
	<title>Hit IT - 전북대 웹동아리</title>
	
	<%@include file="./in_meta.jspf"%>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="./in_navibar.jspf"%>
	</nav>
	<% if (session==null) {%>	
	<div id="myCarousel" class="carousel slide">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item">
				<div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Hitit ?');"></div>
				<div class="carousel-caption">
				</div>
			</div>
			
			<div class="item active">
				<div class="fill" style="background-image:url('./img/main_1.jpg');"></div>
				
			</div>
			
			<div class="item">
				<div class="fill" style="background-image:url('./img/main_3.jpg');"></div>
				
			</div>
			<div class="item">
				<div class="fill" style="background-image:url('./img/main_4.jpg');"></div>
				<div class="carousel-caption">
				</div>
			</div>

			<div class="item">
				<div class="fill" style="background-image:url('./img/main_5.jpg');"></div>
				<div class="carousel-caption">
				</div>
			</div>
		</div>
	</div>
	<div class="joinBanner">
		<div class="joinWrap">
			<div class="join">
				<img src="./img/joinus.gif">
			</div>	
			<div class="Banner">
			<form class="form-horizontal"action="./MemberJoinAction.me" method="post">
				<div class="form-group has-success">
					<label class="col-xs-2 control-label" for="inputSuccess">ID</label>
					<div class="col-xs-10">
						<input type="text" id="inputSuccess" name="id" class="form-control"
							placeholder="Input with success">
					</div>
				</div>
				<div class="form-group has-warning">
					<label class="col-xs-2 control-label" for="inputWarning">PW</label>
					<div class="col-xs-10">
						<input type="password" id="inputWarning" name="pw" class="form-control"
							placeholder="Input with warning">
					</div>
				</div>
				<div class="form-group has-warning">
					<label class="col-xs-2 control-label" for="inputWarning">전공</label>
					<div class="col-xs-10">
						<input type="text" id="inputWarning" name="major" class="form-control"
							placeholder="Input with warning">
					</div>
				</div>
				<div class="form-group has-warning">
					<label class="col-xs-2 control-label" for="inputWarning">이름</label>
					<div class="col-xs-10">
						<input type="text" id="inputWarning" name="name" class="form-control"
							placeholder="Input with warning">
					</div>
				</div>
				<div class="form-group has-warning">
					<label class="col-xs-2 control-label" for="inputWarning">별명</label>
					<div class="col-xs-10">
						<input type="text" id="inputWarning" name="nickName" class="form-control"
							placeholder="Input with warning">
						<span class="help-block">앞으로 이걸로 부를거임</span>
						
					</div>
				</div>
				<div class="form-group has-warning">
					<label class="col-xs-2 control-label" for="inputWarning">Email</label>
					<div class="col-xs-10">
						<input type="text" id="inputWarning" name="email" class="form-control"
							placeholder="Input with warning">
					</div>
				</div>
				
				<div class="form-group has-warning">
					<label class="col-xs-2 control-label" for="inputWarning">서식지</label>
					<div class="col-xs-10">
						<input type="text" id="inputWarning" name = "address" class="form-control"
							placeholder="Input with warning">
					</div>
				</div>
				<div class="submitButton">
					<input type="submit" class="btn btn-primary" value="회원가입"></input>
				</div>
			</form>
			</div>
		</div>
	</div>
	<%}else{ %>
	
	
	
	<div id="myCarousel" class="carousel slide" style="width:100%">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item">
				<div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Hitit ?');"></div>
				<div class="carousel-caption">
				</div>
			</div>
			
			<div class="item active">
				<div class="fill" style="background-image:url('./img/main_1.jpg');"></div>
				
			</div>
			
			<div class="item">
				<div class="fill" style="background-image:url('./img/main_3.jpg');"></div>
				
			</div>
			<div class="item">
				<div class="fill" style="background-image:url('./img/main_4.jpg');"></div>
				<div class="carousel-caption">
				</div>
			</div>

			<div class="item">
				<div class="fill" style="background-image:url('./img/main_5.jpg');"></div>
				<div class="carousel-caption">
				</div>
			</div>
		</div>
	</div>	
	<% } %>
	<div class="container" style="width:100%">
		<footer>
			<div class="row">
				<div class="col-lg-12" style="text-align: center;">
					<hr></hr>
					<p>Copyright &copy; HIT-IT 2014</p>
				</div>
			</div>
		</footer>

	</div>

	<!-- /.container -->
	
	<div class="layer">
		<div class="bg"></div>
		<div id="signin" class="pop-layer">
			<div class="pop-container">
				<div class="pop-conts">
					<form class="form-horizontal" action="./MemberLoginAction.me" method="post">
						<div class="form-group has-success">
							<label class="col-xs-2 control-label" for="inputSuccess">ID</label>
							<div class="col-xs-10">
								<input type="text" id="inputSuccess" name="id" class="form-control" placeholder="Input with success"> 
							</div>
						</div>
						<div class="form-group has-warning">
							<label class="col-xs-2 control-label" for="inputWarning">PW</label>
							<div class="col-xs-10">
								<input type="password" id="inputWarning" name="pw" class="form-control" placeholder="Input with warning"> 
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!-- JavaScript -->
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/modern-business.js"></script>
	 
</body>
</html>
