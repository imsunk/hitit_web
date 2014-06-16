<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01.04 jsp 강의 - 자바스크립트를 이용한 MAP</title>
</head>

<script type="text/javascript" 
	src="https://maps.google.com/maps/api/js?sensor=true">
</script>

<script type="text/javascript">
	if(navigator.geolocation){
		//geolocation
		navigator.getlocation.getCurrentPosition(showPosition);
	}
	else{
		document.write("죄송합니다. 사용하고 계신 브라우저는 geolocation을 지원하지 않습니다.");
		alert("사용할 수 없습니다.");
	};
	
	function showPosition(position){
		var lat = position.coords.latitude;
		var lng = position.coords.longitude;
		
		alert("위도: "+lat+" 경도: "+lng);
	};
	//현재 위치정보 습득

</script>
<body>
	<div id="map_canvas" style="width: 100%; height: 100%"></div>
</body>
</html>