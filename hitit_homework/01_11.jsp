<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01_07일 - Javascript & CSS 숙제</title>
<link rel="stylesheet" href="./alice.css" type="text/css" media="screen">
<script src="./jquery-1.8.3.js" type="text/javascript"></script>
<script src="./alice.js" type="text/javascript"></script>
<script type="text/javascript">
	var handle = false;
	var step = 0;
	var isInc = true;
	function doShadowNew() {
		var e1 = document.getElementById("glowNew");
		//e1.style.textShadow = "1px 1px 3px #000";
		//step == 0 to 3
		if (step > 3) {
			isInc = false;
		}
		if (step == 0) {
			isInc = true;
		}
		if (isInc) {
			++step;
		} else {
			--step;
		}

		switch (step) {
		case 0:
			e1.style.borderStyle = "dotted solid double ridge";
			break;
		case 1:
			e1.style.borderStyle = "solid dotted double ridge";
			break;
		case 2:
			e1.style.borderStyle = "solid double dotted ridge";
			break;
		case 3:
			e1.style.borderStyle = "solid double ridge dotted";
			break;
		default:
			e1.style.borderStyle = "groove"
			break;
		}

		e1.style.textShadow = "0 0 " + step + "px #000";
	}

	function toggleShadowNew() {
		if (handle) {
			window.clearInterval(handle);
			handle = false;
		} else {
			handle = window.setInterval(function() {
				doShadowNew();
			}, 100);
		}
		return false;
	}
	
	$(function() {
	    var state = true;
	    $( "#button" ).click(function() {
	      if ( state ) {
	        $( "#chapter-1" ).animate({
	          backgroundColor: "#aa0000",
	          color: "#fff",
	          height: "auto",
	          width: "auto"
	        }, 1000 );
	      } else {
	        $( "#chapter-1" ).animate({
	          backgroundColor: "#fff",
	          color: "#000",
	          height: "toggle",
	          width: "auto"
	        }, 1000 );
	      }
	      state = !state;
	    });
	  });
</script>
<style>
	#glowNew {
		width: 300px;
		background-color: bisque;
		border-style: solid double ridge dotted;
		border-width: 30px;
		border-color: rosyBrown;
	}
	/* .toggler { width: 500px; height: 200px; position: relative; } */
	#button { padding: .5em 1em; text-decoration: none; }
	#chapter-1 { padding: 0.4em; position: relative; background: #fff; }
	#chapter-1 h1 { margin: 0; padding: 0.4em; text-align: center; }

</style>
</head>
<body>
	<div>
		<a onclick="return toggleShadowNew();" href="#"> Start/Stop
			Animate Shadow</a>
		<p />
		<div id="glowNew">Let's make glow a new message.</div>
	</div>
	<p />
	
	<h1>거울 나라의 앨리스</h1>
	<div class="author">루이스 캐롤 지음</div>
	<a href="#" id="button">Toggle Effect</a>
	<div class="chapter" id="chapter-1">
		<h2 class="chapter-title">1. Looking-Glass House</h2>
		<p>
			탁자 위에는 앨리스와 가까운 쪽에 책이 한 권 놓여 있었다. 앨리스는 앉아서 하얀 왕을 지켜보고 있는 동안(아직도 하얀 왕이
			걱정스러웠기 때문에, 하얀 왕이 또 기절하면 당장이라도 잉크를 끼얹을 준비를 하고 있었다.) 자기가 읽을 수 있는 부분을
			찾으려고 책장을 넘겼다. <span class="spoken">"&mdash;온통 내가 모르는 언어잖아,"
			앨리스는 혼잣말로 중얼거렸다.
		</p>
		<p>책에는 이렇게 적혀 있었다</p>
		<div class="poem">
			<h3 class="poem-title">YKCOWREBBAJ</h3>
			<div class="poem-stanza">
				<div>sevot yhtils eht dna ,gillirb sawT'</div>
				<div>;ebaw eht ni elbmig dna eryg diD</div>
				<div>,sevogorob eht erew ysmim llA</div>
				<div>.ebargtuo shtar emom eht dnA</div>
			</div>
		</div>
		<p>
			이것을 보고 앨리스는 한참동안 어리둥절했지만, 마침내 똑똑한 생각이 번득였다. 
			<span class="spoken">
			"이건 거울 책이잖아. 그러니까 거울에 비추어 보면, 낱말들이 다시 똑바로 보일거야."
			</span>
		</p>
		<p>앨리스가 읽은 시는 다음과 같았다.</p>
		<div class="poem">
			<h3 class="poem-title">JABBERWOCKY</h3>
			<div class="poem-stanza">
				<div>'Twas brillig, and the slithy toves</div>
				<div>Did gyre and gimble in the wabe;</div>
				<div>All mimsy were the borogoves,</div>
				<div>And the mome raths outgrabe.</div>
			</div>
		</div>
	</div>

</body>
</html>