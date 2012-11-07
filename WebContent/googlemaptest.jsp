<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<script type='text/javascript' src='js/jquery-1.8.1.min.js'></script>
<script type='text/javascript' src='js/jquery-ui-1.8.23.custom.min.js'></script>
	
<script type="text/javascript">
$(function(){
	var latlng = new google.maps.LatLng(37.333589, 127.186317);
	var myOptions = {
		zoom : 15,
		center : latlng,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	}
	var map = new google.maps.Map(document.getElementById("map_canvas"),
			myOptions);
	var marker = new google.maps.Marker({
		position : latlng,
		map : map
	});
	var infoWindow = new google.maps.InfoWindow();
	infoWindow.setPosition(latlng);
	infoWindow.open(map);
});
</script>
</head>
<body>
	<div id="map_canvas" style="width:500px; height:500px;"></div>
</body>
</html>