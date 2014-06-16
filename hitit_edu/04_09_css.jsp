<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<!-- start virtual class style -->
<style type="text/css">

/* FONT 관련 */
@font-face {
	font-family: 'MyWebFont';
	src: url('Fonts/NanumGothic.eot'); /* IE9 Compat Modes */ 
	src: /* url('NanumFont_TTF_ALL/webfont.eot?#iefix') format('embedded-opentype'), *//* IE6-IE8 */ 
	     url('Fonts/NanumGothic.woff') format('woff'); /* Modern Browsers */ 
	     /* url('NanumFont_TTF_ALL/NanumBrush.ttf')  format('truetype'); *//* Safari, Android, iOS */ 
	     /* url('webfont.svg#svgFontName') format('svg'); *//* Legacy iOS */ 
	}
	

body,p,h1,h2,h3,h4,h5,h6,ul,li,ol,dl,dt,dd,table,caption,form,fieldset,legend{
	margin: 0;
	padding: 0;
}

body {
	font-family: 12px "굴림", Gulim;
	margin: 100px;
	background: url(good.png) 0 0 no-repeat;
	background-size: 100% 100%;
}

#link {
	text-align: center;
	width: 700px;
}

#link li:nth-child(2n) { /* a:link랑 같음 */
	color: rgb(5, 245, 216);
	font-weight: bold;
	text-decoration: none;
	padding: 20px 0;
	font-size: 2em;
}

h1,ul {
	padding: 20px 0;
}

ul li {
	list-style-type: none;
	display: inline;
	padding: 0 20px;
}

a {
	color: #000;
}
/*두번째메뉴*/
.m2 a {
	text-decoration: none;
}

.m2 a:hover {
	color: green;
	text-decoration: none;
}
/*세번째메뉴*/
.m3 a {
	text-decoration: none;
}

.m3 a:hover {
	color: green;
	text-decoration: underline;
}
/*네번째메뉴*/
.m4 a {
	text-decoration: none;
}

.m4 a {
	color: blue;
	padding: 5px 20px;
}

.m4 a:hover {
	color: white;
	background: #0264CF;
	text-decoration: underline;
}
/*각 메뉴아래 경계선*/
.m1 {
	border-bottom: 1px dashed;
}

.m2 {
	border-bottom: 1px dashed;
}

.m3 {
	border-bottom: 1px dashed;
}

.m4 {
	border-bottom: 1px dashed;
}
/*다섯번째메뉴*/
.m5 li {
	padding: 0 20px;
} /*각 메뉴사이의 여백(링크없는)*/
.m5 a {
	color: #000;
	text-decoration: none;
} /*링크텍스트 밑줄제거*/
.m5 a:hover {
	text-decoration: underline;
} /* 롤오버 밑줄 */
.s1 a {
	color: red;
} /*링크의 s1클래스에만 빨간글자로*/
.s2 a {
	color: blue;
} /*링크의 s1클래스에만 파란글자로*/
.s3 a {
	color: green;
} /*링크의 s1클래스에만 초록글자로*/
#link {
	margin-bottom: 100px;
}
/*/////////////////////////div link2/////////////////*/
/*첫번째 메뉴*/
.menu1 a {
	color: #AEC6AE;
	font-weight: bold;
	text-decoration: none;
	padding-bottom: 3px;
}

.menu1 a:hover {
	color: #689A67;
	border-bottom: 5px solid #689A67;
}

.menu1 a:visited {
	color: rgb(235, 123, 81);
	border-bottom: 5px solid #689A67;
}

/*첫번째와 두번째 메뉴 사이 여백*/
.menu1 {
	margin-bottom: 100px;
}
/*두번째 메뉴*/
.menu2 a { /* a:link랑 같음 */
	color: #758793;
	font-weight: bold;
	text-decoration: none;
	padding: 20px 0;
}

.menu2 a:visited { /* 한 번 클릭한 적이 있을때 */
	color: rgb(218, 156, 25);
	background: url("tab_pyra.gif") no-repeat center top;
}

.menu2 a:hover { /* 마우스가 링크위에 올라와 있는 경우 */
	color: rgb(25, 218, 79); /* 에메랄드 색 */ 
	background: url("tab_pyra.gif") no-repeat center top;
}

.menu2 a:active { /* 마우스가 링크위에 올라와 있을 때 */
	color: rgb(135, 20, 211);
	background: url("tab_pyra.gif") no-repeat center top;
}

.menu2 a:focus { /* 키보드나 마우스를 이용해서 해당 요소에 포커스가 되어 있을 때 */
	color: rgb(211, 20, 104);
	background: url("tab_pyra.gif") no-repeat center top;
}

/* 순서가 맞아야 모두 동작한다.. */
</style>
<!-- end virtual class style -->

<!-- start display element style -->
<style type="text/css">
.display_ex {
	font-size: 2em;
}
/*
display:    none;            나타나지 않게
            block;            나타나게, 블록처럼
            inline;            인라인처럼
            inline-block;    인라인+블록처럼
*/
.box .block {
	height: 50px;
	border: 3px solid #000;
}

.box .inline {
	height: 50px;
	border: 3px solid #000;
}

.box2 .block {
	display: block;
	height: 50px;
	border: 3px solid #000;
}

.box2 .inline {
	display: block;
	height: 50px;
	border: 3px solid #000;
}

.box3 .block {
	display: inline;
	height: 50px;
	border: 3px solid #000;
}

.box3 .inline {
	display: inline;
	height: 50px;
	border: 3px solid #000;
}

.box4 .block {
	display: inline-block;
	height: 50px;
	border: 3px solid #000;
}

.box4 .inline {
	display: inline-block;
	height: 50px;
	border: 3px solid #000;
}
</style>
<style>
.positioning p{
	/* FONT 적용 */
	font-family:  MyWebFont, Arial, Helvetica, sans-serif;
	border: 1px solid #000;
}
.talent {
	border: 1px solid #ff0000;
	background:#f2f2f2; color: #ff0000;
	font-weight:bold;
 	/* position: static; */ /* 기본 */
	/* position: relative; top: 30px; left: 30px; *//* 직전 태그를 기준으로 */
	/* position: absolute; top: 30px; left:30px; *//* <body>를 기준으로 */
	position: fixed; top: 30px; left: 30px; /* <body>가 기준이지만 스크롤 영향 X  */
}

.positioning .rel_sen{
	border: 1px solid #000;
	height: 50px; position: relative;
}

.positioning .rel_sen .talent{
	border: 1px solid #ff0000;
	background:#f2f2f2; color: #ff0000;
	font-weight:bold;
	position: absolute;
	top: 10px; left: 30px;
}
</style>
<!-- end display element style -->
<meta charset="utf-8" http-equiv="Content-Type" content="text/html">
<title>04_08_css css가상클래스 테스트</title>
</head>
<body>
	<div id="link">
		<h1>변화가 없는 형태의 하이퍼링크</h1>
		<ul class="m1">
			<li><a href="#">처음으로</a>|</li>
			<li><a href="#">메뉴1</a>|</li>
			<li><a href="#">메뉴2</a>|</li>
			<li><a href="#">메뉴3</a>|</li>
			<li><a href="#">메뉴4</a></li>
		</ul>
		<h1>롤올버 색상 나타나는 형태의 하이퍼링크</h1>
		<ul class="m2">
			<li><a href="#">처음으로</a>|</li>
			<li><a href="#">메뉴1</a>|</li>
			<li><a href="#">메뉴2</a>|</li>
			<li><a href="#">메뉴3</a>|</li>
			<li><a href="#">메뉴4</a></li>
		</ul>
		<h1>롤오버 밑줄 나타나는 형태의 하이퍼링크</h1>
		<ul class="m3">
			<li><a href="#">처음으로</a>|</li>
			<li><a href="#">메뉴1</a>|</li>
			<li><a href="#">메뉴2</a>|</li>
			<li><a href="#">메뉴3</a>|</li>
			<li><a href="#">메뉴4</a></li>
		</ul>
		<h1>롤오버 배경색 변경되는 형태의 하이퍼링크</h1>
		<ul class="m4">
			<li><a href="#">처음으로</a>|</li>
			<li><a href="#">메뉴1</a>|</li>
			<li><a href="#">메뉴2</a>|</li>
			<li><a href="#">메뉴3</a>|</li>
			<li><a href="#">메뉴4</a></li>
		</ul>
		<h1>여러가지 롤오버 텍스트 메뉴</h1>
		<ul class="m5">
			<li class="s1">...<a href="#">RED</a>...|
			</li>
			<li class="s2">...<a href="#">BLUE</a>...|
			</li>
			<li class="s3">...<a href="#">GREEN</a>...|
			</li>
		</ul>
	</div>

	<div class="link2">
		<ul class="menu1">
			<li><a href="#">소개하고픈 링크</a></li>
			<li><a href="#">즐겨읽는 책</a></li>
			<li><a href="#">좋아하는 영화</a></li>
			<li><a href="#">함께듣는 음악</a></li>
		</ul>
		<ul class="menu2">
			<li><a href="https://www.google.co.kr/search?q=%EC%97%90%EB%94%94%ED%8A%B8%ED%94%8C%EB%9F%AC%EC%8A%A4&aq=f&oq=%EC%97%90%EB%94%94%ED%8A%B8%ED%94%8C%EB%9F%AC%EC%8A%A4&aqs=chrome.0.57j0l3.6473j0&sourceid=chrome&ie=UTF-8">소개하고픈 링크</a></li>
			<li><a href="#2">즐겨읽는 책</a></li>
			<li><a href="#3">좋아하는 영화</a></li>
			<li><a href="#4">함께듣는 음악</a></li>
		</ul>
	</div>

	<div style="padding: 40px; margin: 0 auto; text-align: center;">가상
		클래스 예제 끝, display 예제 시작</div>
	<div class="display_ex">
		<div class="box">
			<div class="block">Block 요소 태그</div>
			<span class="inline">span 태그</span>
		</div>

		<hr />

		<div class="box2">
			<div class="block">Block 요소</div>
			<span class="inline">Block 요소</span>
		</div>

		<hr />

		<div class="box3">
			<div class="block">기본 block이지만 inline 요소</div>
			<span class="inline">inline 요소</span>
		</div>

		<hr />

		<div class="box4">
			<div class="block">기본 block, inline-Block요소</div>
			<span class="inline">기본 inline, inline-Block요소</span>
		</div>
	</div>
	
	<div class="positioning">
		<p>첫번째 문장입니다.</p>
		<p>두번째 문장입니다.</p>
		<p class="talent">세번째 문장입니다.</p>
		<p>네번째 문장입니다.</p>
	</div>
	
		<div class="positioning">
		<p>첫번째 문장입니다.</p>
		<p>두번째 문장입니다.</p>
		<div class="rel_sen">
			<p class="talent">세번째 문장입니다.</p>
		</div>
		<p>네번째 문장입니다.</p>
	</div>
</body>
</html>