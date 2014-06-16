<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
  html { height: 100% }
  body { height: 100%; margin: 0px; padding: 0px }
  #map_canvas { height: 100% }
</style>
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
  function showMap() {
	var lat = document.form1.latitude.value;
	var lng = document.form1.longitude.value;
    var latlng = new google.maps.LatLng(lat, lng);
    var myOptions = {
      zoom: 18,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"),
        myOptions);
    
    var marker = new google.maps.Marker({
    	position: latlng,
    	map: map,
    	title: "Hello World!",
    	draggable: true,
    	animation: google.maps.Animation.DROP
    });
    
    	google.maps.event.addListener(marker, 'click', toggleBounce);
    }
  
  function toggleBounce(){
	  if(marker.getAnimation() != null){
		  marker.setAnimation(null);
	  }
	  else{
		  marker.setAnimation(google.maps.Animation.BOUNCE);
	  }
  }
</script>

<title>GoogleMap & geoLocation Example</title>
</head>
<body onload="verify_geolocation_capability()">
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
		<input type="button" name="oncanvas" value="Get MY Corrdinate"
			onclick="showMap()">
	</form>
	
	<div id="map_canvas" style="width:100%; height:100%"></div>
</body>
</html>