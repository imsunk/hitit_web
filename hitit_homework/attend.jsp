<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>전북대 웹동아리 Hit IT</title>
<style>
@import "./css/reset.css";
</style>
<style>
#wrap {
	width: 960px;
	margin: 0 auto;
}

#head {
	height: 100px;
	background-color: #fff;
}

#logo {
	width: 100px;
	height: 100px;
	background-color: #ddc
}

#top_banner {
	position: relative;
	top: -100px;
	left: 100px;
	width: 855px;
	height: 100px;
	background: url("image/hitit_top_banner1.png");
	margin-left: 5px;
}

#menu {
	height: 20px;
	background-color: #ddd;
	padding: 0px;
	background: url('./image/hitit_navigator.png');
	margin: 5px 0px;
}

#menu .list {
	position: relative;
	background-color: #aaa;
	width: 100px;
	height: 20px;
	display: inline-block;
	margin: 0px;
	vertical-align: top;
	padding: 0px
}

#menu .list a {
	border: 0px solid black;
	width: 100px;
	height: 20px;
	display: block;
	margin: 0px
}

/* 네비게이터 익스플로어용 */
#menu #list1 a {
	background: url('./image/hitit_navigator.png') 0 100px;
}

#menu #list2 a {
	background: url('./image/hitit_navigator.png') -100px 0px
}

#menu #list3 a {
	background: url('./image/hitit_navigator.png') -200px 0px
}

#menu #list4 a {
	background: url('./image/hitit_navigator.png') -300px 0px
}

#menu #list5 a {
	background: url('./image/hitit_navigator.png') -400px 0px
}

#menu #list6 a {
	background: url('./image/hitit_navigator.png') -500px 0px
}

/* 익스플로어에서 적용안됨 */
#menu .list:nth-child(1) a {
	background: url('./image/hitit_navigator.png') 0 100px
}

#menu .list:nth-child(2) a {
	background: url('./image/hitit_navigator.png') -100px 0px
}

#menu .list:nth-child(3) a {
	background: url('./image/hitit_navigator.png') -200px 0px
}

#menu .list:nth-child(4) a {
	background: url('./image/hitit_navigator.png') -300px 0px
}

#menu .list:nth-child(5) a {
	background: url('./image/hitit_navigator.png') -400px 0px
}

#menu .list:nth-child(6) a {
	background: url('./image/hitit_navigator.png') -500px 0px
}

#menu .list:nth-child(1) a:hover {
	background: url('./image/hitit_navigator_over.png') 0 100px
}

#menu .list:nth-child(2) a:hover {
	background: url('./image/hitit_navigator_over.png') -100px 0px
}

#menu .list:nth-child(3) a:hover {
	background: url('./image/hitit_navigator_over.png') -200px 0px
}

#menu .list:nth-child(4) a:hover {
	background: url('./image/hitit_navigator_over.png') -300px 0px
}

#menu .list:nth-child(5) a:hover {
	background: url('./image/hitit_navigator_over.png') -400px 0px
}

#menu .list:nth-child(6) a:hover {
	background: url('./image/hitit_navigator_over.png') -500px 0px
}

#menu .list:first-child {
	margin-left: 0px;
} /*베이스라인 확인할 것*/
#contents {
	text-align: center;
	background-color: #eed;
}

#board ul {
	margin: 5px 5px;
}

#notice {
	width: 300px;
	background-color: #cae;
	padding: 0px;
}

#notice .title {
	background-color: #888;
}

#free_bd {
	width: 300px;
	background-color: #eaa;
	padding: 0px;
}

#free_bd .title {
	background-color: #888;
}

#qna_bd {
	width: 300px;
	background-color: #acd;
	padding: 0px;
}

#qna_bd .title {
	background-color: #888;
}

#study_bd {
	width: 300px;
	background-color: #ddf;
	padding: 0px;
}

#study_bd .title {
	background-color: #888;
}

#contest {
	width: 400px;
	height: 500px;
	background-color: #77f;
	text-align: left;
	display: inline;
}

#contents {
	min-height: 400px;
	padding: 10px;
	border: 20px;
	-moz-border-image: url('./image/Haunted Two.gif') 30 30 round;
	/* Old Firefox */
	-webkit-border-image: url('./image/Haunted Two.gif') 30 30 round;
	/* Safari */
	-o-border-image: url('./image/Haunted Two.gif') 30 30 round;
	/* Opera */
	border-image: url('./image/Haunted Two.gif') 30 30 round;
}

a:link {
	text-decoration: none;
	color: darkblue;
}

a:visited {
	text-decoration: none;
	color: darkblue;
}

a:hover {
	text-decoration: none;
	color: red;
	font-weight: 900
}

a:active {
	text-decoration: none;
	color: yellow;
}

#foot {
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	margin: 5px 0;
	padding: 10px;
	color: gray;
}
</style>
<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
<script>
	$(document).ready(function() {
		rollBanner();
		//setTimeout(1000, rollBanner());
	});

	function rollBanner() {
		console.log('test');
		//setTimeout(2000, rollBanner());
	}
</script>
<script>
	function rolllTopBanner() {
		var width = 860;
		var heigh = 100;
		var slideCount = 6;

		var tmp = 0;

	}
</script>
</head>
<body>
	<div id="wrap">
		<div id="head">
			<div id="logo">
				<a href="/"><img src="image/logo_icon.png" width="100"
					height="100" alt="로고"></a>
			</div>
			<div id="top_banner" style=""></div>
		</div>
		<div>
			<ul id="menu">
				<li class="list" id="list1"><a href="./hitit.jsp">
						<!--Hit IT?-->
				</a></li>
				<li class="list" id="list2"><a href="./notice.jsp">
						<!--공지-->
				</a></li>
				<li class="list" id="list3"><a href="./face.jsp">
						<!--회원들-->
				</a></li>
				<li class="list" id="list4"><a href="./board.jsp">
						<!--게시판-->
				</a></li>
				<li class="list" id="list5"><a href="./study_group.jsp">
						<!--스터디2그룹-->
				</a></li>
				<li class="list" id="list6"><a href="">
						<!--명부-->
				</a></li>
			</ul>
		</div>
		<div id="chat">
			<embed height="100" width="100%"
				src="http://www.gagalive.kr/livechat1.swf?chatroom=hitit">
		</div>
		<div id="contents">
			<div>
				<style>
td,th {
	width: 70px;
	padding: 2px;
	border: #626262 solid 1px;
}
</style>
				<h1>스터디 그룹</h1>
				<hr>
				<form action="study_group_check.jsp" method="post">
					<table>
						<tbody>
							<tr>
								<th>조</th>
								<th>이름</th>
								<th>12/29(금)</th>
								<th>12/31(월)</th>
							</tr>
							<tr>
								<td>1</td>
								<td>김래선</td>
								<td>O</td>
								<td><input type="checkbox" name="group1" value="김래선"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>김선호</td>
								<td>O</td>
								<td><input type="checkbox" name="group1" value="김선호"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>강전구</td>
								<td>O</td>
								<td><input type="checkbox" name="group1" value="강전구"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>고슬기</td>
								<td>O</td>
								<td><input type="checkbox" name="group1" value="고슬기"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>최인수</td>
								<td>O</td>
								<td><input type="checkbox" name="group1" value="최인수"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>김창성</td>
								<td>O</td>
								<td><input type="checkbox" name="group1" value="김창성"></td>
							</tr>
							<tr>
								<td rowspan="5">2</td>
								<td>강우영</td>
								<td>O</td>
								<td><input type="checkbox" name="group2" value="강우영"></td>
							</tr>
							<tr>
								<td>성동녁</td>
								<td>X</td>
								<td><input type="checkbox" name="group2" value="성동녘"></td>
							</tr>
							<tr>
								<td>유지연</td>
								<td>O</td>
								<td><input type="checkbox" name="group2" value="유지연"></td>
							</tr>
							<tr>
								<td>조수민</td>
								<td>O</td>
								<td><input type="checkbox" name="group2" value="조수민"></td>
							</tr>
							<tr>
								<td>구경진</td>
								<td>O</td>
								<td><input type="checkbox" name="group2" value="구경진"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>홍원기</td>
								<td>O</td>
								<td><input type="checkbox" name="group3" value="홍원기"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>최요한</td>
								<td>X</td>
								<td><input type="checkbox" name="group3" value="최요한"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>곽민호</td>
								<td>O</td>
								<td><input type="checkbox" name="group3" value="곽민호"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>장영진</td>
								<td>X</td>
								<td><input type="checkbox" name="group3" value="장영진"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>이현수</td>
								<td>O</td>
								<td><input type="checkbox" name="group3" value="이현수"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>유인규</td>
								<td>X</td>
								<td><input type="checkbox" name="group3" value="유인규"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>김인창</td>
								<td>X</td>
								<td><input type="checkbox" name="group3" value="김인창"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>홍태영</td>
								<td>O</td>
								<td><input type="checkbox" name="group3" value="홍태영"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>양다솜</td>
								<td>O</td>
								<td><input type="checkbox" name="group3" value="양다솜"></td>
							</tr>
							<tr>
								<td colspan="3"></td>
								<td><input type="submit" value="출석완료"></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>

			<table
				style="width: 200px; height: 200px; border: 20px solid blue; margin: 20px;">
				<tbody>
					<tr>
						<td style="padding: 40px">block 엘리먼트 (개체) 의 특성 <br> 마진,
							보더, 패딩
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!--div contents-->
		<style>
#left_slidemenu {
	position: fixed;
	width: 120px;
	height: 440px; /*top:92px;네비게이션바 위치*/
	top: 130px;
	right: 1130px;
	background: none;
}

#left_slidemenu #wing_banner1 {
	width: 120px;
	height: 65px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
	border-right: lightgray solid 1px;
	border-bottom: gray solid 1px;
}

#left_slidemenu #wing_banner2 {
	width: 120px;
	height: 65px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
}

#left_slidemenu #wing_banner3 {
	width: 120px;
	height: 65px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
}

#left_slidemenu #wing_banner4 {
	width: 120px;
	height: 65px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
}

#left_slidemenu #wing_banner5 {
	width: 120px;
	height: 65px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
}

#left_slidemenu #wing_banner6 {
	width: 120px;
	height: 65px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
}

#left_slidemenu #wing_banner7 {
	width: 120px;
	height: 65px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
}

#left_slidemenu #wing_banner8 {
	width: 110px;
	height: 99px;
}

#left_slidemenu_counter {
	position: absolute;
	width: 25px;
	height: 440px; /*top:92px;네비게이션바 위치*/ /*top:157px; right:935px;*/
	top: 239px;
	right: 1007px;
	background: none;
	font-size: 12px;
}

#left_slidemenu_counter #wing_banner1 {
	width: 25px;
	height: 11px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
	margin-bottom: 54px;
}

#left_slidemenu_counter #wing_banner2 {
	width: 25px;
	height: 11px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
	margin-bottom: 54px;
}

#left_slidemenu_counter #wing_banner3 {
	width: 25px;
	height: 11px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
	margin-bottom: 54px;
}

#left_slidemenu_counter #wing_banner4 {
	width: 25px;
	height: 11px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
	margin-bottom: 54px;
}

#left_slidemenu_counter #wing_banner5 {
	width: 25px;
	height: 11px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
	margin-bottom: 54px;
}

#left_slidemenu_counter #wing_banner6 {
	width: 25px;
	height: 11px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
	margin-bottom: 54px;
}

#left_slidemenu_counter #wing_banner7 {
	width: 25px;
	height: 11px;
	display: block;
	overflow: hidden;
	/*background: url("img/carhistory.gif") no-repeat 0px 0px;*/
	margin-left: 0px;
	margin-bottom: 54px;
}

#left_slidemenu_counter p {
	width: 20px
}

#right_slidemenu {
	position: absolute;
	width: 50px;
	height: 440px; /*top:92px;네비게이션바 위치*/
	top: 116px;
	left: 935px;
	background: none;
}

#right_slidemenu #wing_banner1 {
	width: 75px;
	height: 165px;
	/*background: url("img/wing_banner1_jongdal.gif") no-repeat 0px 0px;*/
}

#right_slidemenu #wing_banner2 {
	width: 75px;
	height: 165; /*background: url("img/wing_banner1.png");*/
}

#right_slidemenu #wing_banner3 {
	width: 75px;
	height: 165; /*background: url("img/wing_banner1.png");*/
	margin-top: -3px;
}

#right_slidemenu #wing_banner4 {
	margin-top: 165px;
	width: 100px;
	height: 130px; /*background: url("img/wing_banner1.png");*/
}
</style>
		<!-- jquery 1.3.2 의 영향을 받음-->
		<script type="text/javascript">
			$(document).ready(
					function() {
						var currentPosition = parseInt($("#left_slidemenu")
								.css("top"));
						$(window).scroll(function() {
							var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
							$("#left_slidemenu").stop().animate({
								"top" : position + currentPosition + "px"
							}, 300);
						});
					});
			$(document).ready(
					function() {
						var currentPosition = parseInt($("#right_slidemenu")
								.css("top"));
						$(window).scroll(function() {
							var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
							$("#right_slidemenu").stop().animate({
								"top" : position + currentPosition + "px"
							}, 300);
						});
					});
			$(document).ready(
					function() { // 슬라이드 카운터도 같이 이동하게
						var currentPosition = parseInt($(
								"#left_slidemenu_counter").css("top"));
						$(window).scroll(function() {
							var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
							$("#left_slidemenu_counter").stop().animate({
								"top" : position + currentPosition + "px"
							}, 300);
						});
					});
		</script>
		<script>
			function updateBannerCount(num, count) {
				$('#count' + num).text(count);
			}

			function initCount() { // 리퀘스트 수를 늘려 좋은 방법은 아니다
				//for(var i =7; i <= 7; i++){
				//			checkingBannerClick(i);

				//}
				checkingBannerClick2(1);
				checkingBannerClick2(2);
				checkingBannerClick2(3);
				checkingBannerClick2(4);
				checkingBannerClick2(5);
				checkingBannerClick2(6);
				checkingBannerClick2(7);
			}
			function checkingBannerClick(num) {
				//카운트 1개 추가 하면서 카운트 결과 출력
				$.ajax({
					type : 'get',
					async : true,
					url : '/check_banner_count.jsp?num=' + num,
					success : function(msg) {
						updateBannerCount(num, msg);
					}
				});
			}
			function checkingBannerClick2(num) {
				// 카운트 추가하지 않으면서 카운트 결과 출력
				$.ajax({
					type : 'get',
					async : true,
					url : '/check_banner_count2.jsp?num=' + num,
					success : function(msg) {
						updateBannerCount(num, msg);
					}
				});
			}
		</script>
		<div id="right_slidemenu">
			<!--
				<ul>
					<li id="wing_banner1">
						<a href="http://chakhanhalbu.com/sms_form.html">
							<img src="img/wing_banner1_jongdal.gif"/>
						</a>
					</li>
					<li id="wing_banner2">
						<a href="http://chakhanhalbu.com/sms_auction_form.html">
							<img src="img/wing_banner2_huiwon.gif"/>
						</a>
					</li>
				</ul>
				-->
		</div>
		<!-- div right_slidemenu -->
		<div id="left_slidemenu">
			<ul>
				<li id="wing_banner1"><a href="http://www.homejjang.com/"
					onclick="checkingBannerClick('1');" target="_blank"><img
						src="http://www.homejjang.com/images/logo.png" width="120"
						height="65"></a></li>
			</ul>
		</div>
		<!--
			<div id="left_slidemenu_counter">
				<ul>
					<li id="wing_banner1"><p id="count1">1</p></li>
					<li id="wing_banner2"><p id="count2">1</p></li>
					<li id="wing_banner3"><p id="count3">1</p></li>
					<li id="wing_banner4"><p id="count4">1</p></li>
					<li id="wing_banner5"><p id="count5">1</p></li>
					<li id="wing_banner6"><p id="count6">1</p></li>
					<li id="wing_banner7"><p id="count7">1</p></li>
				</ul>
			</div>
			-->
		<script>
			//initCount();
		</script>
		<div id="foot">
			<div>
				<ul>
					<li>지도교수 : 이효종</li>
					<li>회장 : 홍원기</li>
					<li>부회장 : 김선호 &lt; 가입문의 &lt;</li>
					<li>2012년 겨울 현재 - 임진년 겨울 웹과 앱 강좌 진행중</li>
					<li>동아리 회원 상시 모집 중</li>
				</ul>
			</div>
		</div>

		<div></div>
	</div>
</body>
</html>