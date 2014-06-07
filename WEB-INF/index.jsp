<%@ page contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=0"); %>
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

<!-- 		<div class="section"> -->

<!-- 			<div class="container"> -->

<!-- 				<div class="row"> -->
					
<!-- 					<div class="col-lg-6 col-md-6 col-sm-6"> -->
<!-- 						<h2>노예처럼 코더가 된다!!</h2> -->
<!-- 						<ul> -->
<!-- 							<li>시험기간만 되면 대여섯 마리씩 모여 날을 샌다고 하는데</li> -->
<!-- 							<li>Java 전문! 안드로이드 전문! 웹 (Jsp) 전문 동아리!</li> -->
<!-- 							<li>printf 만 찍다 죽으려면 다른데 가라!</li> -->
<!-- 							<li>1일 1닭 전문</li> -->
<!-- 							<li>if( 닭 ) { out.println( " !!!  TRUUUEEEEEEE !!!" ); }</li> -->
<!-- 							<li>당신의 배때기를 부르게 만드는 밥동아리 힛잇!</li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				/.row -->

<!-- 			</div> -->
<!-- 			<!-- /.container --> 

<!-- 		</div> -->
<!-- 		<!-- /.section --> 
		
	</div>
	<div class="joinBanner">
		<div class="joinWrap">
		<div class="join">
			<img src="./img/joinus.gif">
		</div>	
		<div class="Banner">
		<form class="form-horizontal">
			<div class="form-group has-success">
				<label class="col-xs-2 control-label" for="inputSuccess">ID</label>
				<div class="col-xs-10">
					<input type="text" id="inputSuccess" class="form-control"
						placeholder="Input with success">
				</div>
			</div>
			<div class="form-group has-warning">
				<label class="col-xs-2 control-label" for="inputWarning">PW</label>
				<div class="col-xs-10">
					<input type="password" id="inputWarning" class="form-control"
						placeholder="Input with warning">
				</div>
			</div>
			<div class="form-group has-warning">
				<label class="col-xs-2 control-label" for="inputWarning">전공</label>
				<div class="col-xs-10">
					<input type="password" id="inputWarning" class="form-control"
						placeholder="Input with warning">
				</div>
			</div>
			<div class="form-group has-warning">
				<label class="col-xs-2 control-label" for="inputWarning">이름</label>
				<div class="col-xs-10">
					<input type="password" id="inputWarning" class="form-control"
						placeholder="Input with warning">
				</div>
			</div>
			<div class="form-group has-warning">
				<label class="col-xs-2 control-label" for="inputWarning">별명</label>
				<div class="col-xs-10">
					<input type="password" id="inputWarning" class="form-control"
						placeholder="Input with warning">
					<span class="help-block">앞으로 이걸로 부를거임</span>
					
				</div>
			</div>
			<div class="form-group has-warning">
				<label class="col-xs-2 control-label" for="inputWarning">Email</label>
				<div class="col-xs-10">
					<input type="password" id="inputWarning" class="form-control"
						placeholder="Input with warning">
				</div>
			</div>
			
			<div class="form-group has-warning">
				<label class="col-xs-2 control-label" for="inputWarning">서식지</label>
				<div class="col-xs-10">
					<input type="password" id="inputWarning" class="form-control"
						placeholder="Input with warning">
				</div>
			</div>
			<div class="submitButton">
				<button type="button" class="btn btn-primary" >회원가입</button>
			</div>
		</form>
		</div>
		</div>
	</div>
	
	<div class="clear"></div>
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
					<form class="form-horizontal">
						<div class="form-group has-success">
							<label class="col-xs-2 control-label" for="inputSuccess">ID</label>
							<div class="col-xs-10">
								<input type="text" id="inputSuccess" class="form-control" placeholder="Input with success"> 
							</div>
						</div>
						<div class="form-group has-warning">
							<label class="col-xs-2 control-label" for="inputWarning">PW</label>
							<div class="col-xs-10">
								<input type="password" id="inputWarning" class="form-control" placeholder="Input with warning"> 
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div class="layer2">
		<div class="bg"></div>
		<div id="signup" class="pop-layer">
			<div class="pop-container">
				<div class="pop-conts">
					<form class="form-horizontal">
						<div class="form-group has-success">
							<label class="col-xs-2 control-label" for="inputSuccess">ID</label>
							<div class="col-xs-10">
								<input type="text" id="inputSuccess" class="form-control" placeholder="Input with success"> 
							</div>
						</div>
						<div class="form-group has-warning">
							<label class="col-xs-2 control-label" for="inputWarning">PW</label>
							<div class="col-xs-10">
								<input type="password" id="inputWarning" class="form-control" placeholder="Input with warning"> 
							</div>
						</div>
						<div class="form-group has-warning">
							<label class="col-xs-2 control-label" for="inputWarning">Email</label>
							<div class="col-xs-10">
								<input type="password" id="inputWarning" class="form-control" placeholder="Input with warning"> 
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
