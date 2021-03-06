<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/project1.css" rel="stylesheet">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<script>
	$(function() {
		var mindate = 0;
		var date = 0;
		$("#home").addClass("active");
		$(".checkin").datepicker({
			minDate : 0
		});
		$('.checkin').change(function() {
			mindate = $(".checkin").datepicker('getDate');
			date = new Date(mindate.getTime());
			date.setDate(date.getDate() + 1);
			$(".checkout").datepicker("option", "minDate", date);
		});
		$(".checkout").datepicker();
	});
</script>
</head>
<body>
	<jsp:include page="share/header.jsp"></jsp:include>
	<div id="header">
		<div id="header_top">
			<div id="header_search">
				<form method="post">
					<input type="text" name="search" id="search" size="30"
						placeholder="Local"> <input type="text" name="checkIn"
						class="checkin" size="10" placeholder="Check In" id="start">
					<input type="text" name="checkOut" class="checkout" size="10"
						placeholder="Check Out" id="end"> <input type="submit"
						value="Search" id="search_button">
				</form>
			</div>
		</div>
		<jsp:include page="share/navbar.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="main_content">
			<a href="NewFile1.jsp"><img alt="room1" src="img/large.jpg"	class="left_picture"></a> 
			<a href="NewFile1.jsp"><img	alt="room2" src="img/large-1.jpg" class="right_picture"></a> 
			<a href="roomInform.jsp"><img alt="room3" src="img/large-2.jpg"	class="left_picture"></a>
			<a href="NewFile1.jsp"><img alt="room4" src="img/large-3.jpg" class="right_picture"></a>
		</div>
	</div>
	<jsp:include page="share/footer.jsp"></jsp:include>
</body>
</html>