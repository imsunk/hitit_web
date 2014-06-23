<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01.04 jsp 강의 - jsp를 이용한 audio & video 재생</title>
</head>
<script>
	//비디오 재생을 위한 play 함수
	function videoPlay() {
		var videoTag = document.getElementById("myvideo");
		videoTag.play();
	}
	//비디오 일시 정지를 위한 pause 함수
	function videoPause() {
		var videoTag = document.getElementById("myvideo");
		videoTag.pause();
	}
	/* getElenemtsByName으로는 관련 함수를 사용할 수 없다.. 왜??  */
	function audioPlay() {
		var audioTag = document.getElementById("myaudio");
		audioTag.play();
	}

	function audioPause() {
		var audioTag = document.getElementById("myaudio");
		audioTag.pause();
	}

	function aud_play_pause() {
		var myAudio = document.getElementById("myAudio");
		if (myAudio.paused) {
			myAudio.play();
		} else {
			myAudio.pause();
		}
	}
</script>
<body>
	<!-- audio tag, video tag는 HTML5에서만 사용되는 tag입니다. -->
	<audio id="myaudio" src="./g_aria.mp3" controls="controls">
		Your browser does not support the audio tag.
	</audio>
	<p />
	<!-- 	<video name="myvideo" controls src="./PSY-GANGNAM_STYLE_MV.mp4">
		죄송합니다. 이 브라우저는 HTML5의 비디오 태그를 지원하지 않습니다.
	</video>
	<p /> -->
	<iframe width="640" height="360"
		src="http://www.youtube.com/embed/u2zda0OaW5I?feature=player_detailpage"
		frameborder="0" allowfullscreen> </iframe>
	<p> iframe </p>
	<video controls src="http://media.w3.org/2010/05/bunny/movie.ogv"
		id="myvideo"> Your user agent does not support the HTML5 Video
		element.
	</video>
	<p> video </p>
	<embed width="420" height="345"
		src="http://www.youtube.com/v/9bZkp7q19f0"
		type="application/x-shockwave-flash">
	</embed>
	<embed src="http://www.youtube.com/v/yQ5U8suTUw0?version=3" type="application/x-shockwave-flash" allowfullscreen="true"allowScriptAccess="always" width="640" height="390">
	
	<p> embed - http://cappleblog.co.kr/529</p>	
	<!-- <iframe width="640" height="360" src="http://www.youtube.com/embed/9bZkp7q19f0?feature=player_detailpage" frameborder="0" allowfullscreen></iframe> -->
	<object data="http://www.youtube.com/embed/9bZkp7q19f0?feature=player_detailpage"
   width="560" height="315"></object>
	<p>object</p>

	<button type="button" onclick="videoPlay()">비디오 재생</button>
	<button type="button" onclick="videoPause()">비디오 일시정지</button>
	<button type="button" onclick="audioPlay()">오디오 재생</button>
	<button type="button" onclick="audioPause()">오디오 일시정지</button>

	<p />
	<audio id="myAudio" controls>
		<source
			src="http://media.w3.org/2010/07/bunny/04-Death_Becomes_Fur.mp4"
			type='audio/mp4'>
 	<source
				src="http://media.w3.org/2010/07/bunny/04-Death_Becomes_Fur.oga"
				type='audio/ogg; codecs=vorbis'>
 	Your user agent does not support the HTML5 Audio element.
	
	</audio>

	<button type="button" onclick="aud_play_pause()">Play/Pause</button>
</body>
</html>