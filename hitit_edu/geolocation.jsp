<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GeoLocation example</title>

<script type="text/javascript" 
	src="https://maps.google.com/maps/api/js?sensor=true">
</script>

<script type="text/javascript">
	//위치를 알려주는 함수
	function display_geolocation_properties(position) {
		document.form1.capability.value = "W o r k i n g . . .";
		document.form1.latitude.value = position.coords.latitude;
		document.form1.longitude.value = position.coords.longitude;
	}
	//button click시 실행되는 함수
	function retrieve_location() {
		if (navigator.geolocation) {
			document.form1.capability.value = "Starting...";
			navigator.geolocation.getCurrentPosition(
					display_geolocation_properties, handle_error);
			document.form1.capability.value = "Finished";
		} else {
			alert("This browser does not support geolocation services.");
		}
	}
	//이용 가능한 브라우저인지 체크함
	function verify_geolocation_capability() {
		if (navigator.geolocation) {
			document.form1.capability.value = "Enabled";
		} else {
			document.form1.capability.value = "Not Enabled";
		}
	}
	//error처리 handler
	function handle_error(error) {
		document.form1.capability.value = "ERROR: " + error.code;
	}
	
</script>

<script type="text/javascript">
  function initialize() {
    var latlng = new google.maps.LatLng(-34.397, 150.644);
    var myOptions = {
      zoom: 8,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"),
        myOptions);
  }

</script>
</head>
<!-- 지원 가능한 브라우저인지 확인하기 위해서 onload를 한다 -->
<body onload="verify_geolocation_capability()"> 이함수를 시작하겠다

	<form name="form1" id="form1">
		Geolocation use: <input type="text" name="capability" value="stop">
		<p />
		Latitude: <input type="text" name="latitude">
		<p />
		Longitude: <input type="text" name="longitude">
		<p />
		<!-- onclick시 retrieve_location() 함수를 호출 -->
		<input type="button" name="submit" value="Get Latitude and Longitude"
			onclick="retrieve_location()">
	</form>

</body>
</html>



