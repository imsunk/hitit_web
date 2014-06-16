<%@ page language="java" contentType="text/html; charset=UTF-8"
    errorPage="error.jsp" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title> 자바스크립트, J쿼리, CSS </title>
		<meta name="Generator" content="EditPlus">
		<meta name="Author" content="홍원기">
		<meta name="Keywords" content="js, jquery, css">
		<meta name="Description" content="js, jquery, css에 대한 실습 예제이다.">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<script type="text/javascript" src="http://sesangsokuro.cafe24.com/projectH/js/jquery-1.7.2.min.js"></script>
		<style>
		/*reset.css*/
			/* cascade style sheet */
			.div1{
				width: 200px;
				height: 300px;
				background-color: red;
			}
			#a1{
				font-size: 50px;
				color: red;
				background-color: black;
			}
			.menu{
				width: 200px;
				height: 100px;
				background-color: gray;
			}

			.menu .user_join{
				font-weight: 900;

			}
			#user_join {
				color: red;
				text-decoration: underline;
		</style>
		<script>
			//document.getElementsByName("aa")
			//document.getElementsByName("aa")[0].innerText
			//alert(document.getElementsByName("aa")[0].name);
			
			$("#test_box").animate({
				opacity: 0.25,
				left: "+=50",
				height: "toggle"
			  }, 5000, function() {
				// Animation complete.
			 });			
			
			  $("#a1").click(function(){
				$("#test_box").animate({ 
				  width: "70%",
				  opacity: 0.4,
				  marginLeft: "0.6in",
				  fontSize: "3em", 
				  borderWidth: "10px"
				}, 1500 );
			  });
			//[출처] [jQuery] .animate()|작성자 렌보

		</script>
	</head>
	<body>
		<div class="div1" id="test_box">
			<a href="#" onclick="alert(this.document)" name="aa" id="a1">아아</a>
			good!!
		</div>
		<div class="menu">		
			<div class="user_join">
				회원가입
			</div>
			<div>
				결제
			</div>
		</div>
		<div id="user_join">
			사업자 회원 가입
		</div>
	</body>
</html>
