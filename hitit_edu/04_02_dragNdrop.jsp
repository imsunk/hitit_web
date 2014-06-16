<%@ page language="java" contentType="text/html; charset=UTF-8"
	errorPage="error.jsp" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>DragNDrop</title>
<meta name="Author" content="김선호">
<meta name="Keywords" content="js, jquery, css">
<meta name="Description" content="js, jquery, css에 대한 실습 예제이다.">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<style type="text/css">
#zone {
	width: 200px;
	height: 100px;
	background-color: silver;
}

#dragitem {
	color: red;
	background-color: pink;
	width: 100px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var ei = document.getElementById("dragitem");
		var ez = document.getElementById("zone");

		ei.ondragstart = function(event) {
			event.dataTransfer.setData("Text", ei.innerHTML);
		}

		ez.ondragover = function(event) {
			event.preventDefault();
		}

		ez.ondrop = function(event) {
			event.target.innerHTML = "";
			var types = event.dataTransfer.types;

			if (types) {
				for ( var i = 0; i < types.length; i++) {
					var data = event.dataTransfer.getData(types[i]);
					event.target.innerHTML += "[" + types[i] + "]" + data;
				}
			}

			event.preventDefault();
		}
	});
</script>
</head>
<body>
	<div class="div1" id="dragitem" draggable="true">
		<a href="javascript:alert('낚시');
		window.location.href='http://t.co/eXU89ba';
		" id="a1">재미있죠?</a> 다들 웹 프로그래밍 즐기고 있나요
		ㅋㅋ?
	</div>
	<p>
		<textarea id="zone"></textarea>
	</p>

</body>
</html>
