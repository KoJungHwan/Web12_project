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
<link rel='stylesheet' type='text/css' href='css/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='css/fullcalendar.print.css'
	media='print' />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<script type='text/javascript' src='js/jquery-1.8.1.min.js'></script>
<script type='text/javascript' src='js/jquery-ui-1.8.23.custom.min.js'></script>
<script type='text/javascript' src='js/fullcalendar.min.js'></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<script>
	$(function() {
		$(function() {
			var mindate = 0;
			var date = 0;
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
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		$('#calendar').fullCalendar(
				{
					editable : false,
					events : [ {
						title : 'All Day Event',
						start : new Date(y, m, 1)
					}, {
						title : 'Long Event',
						start : new Date(y, m, d - 5),
						end : new Date(y, m, d - 2)
					} ],
					eventDrop : function(event, delta) {
						alert(event.title + ' was moved ' + delta + ' days\n'
								+ '(should probably update your database)');
					},
					loading : function(bool) {
						if (bool)
							$('#loading').show();
						else
							$('#loading').hide();
					}
				});

		$("#tabs li").click(function() {
			//  First remove class "active" from currently active tab
			$("#tabs li").removeClass('active');
			//  Now add class "active" to the selected/clicked tab
			$(this).addClass("active");
			//  Hide all tab content
			$(".tab_content").hide();
			//  Here we get the href value of the selected tab
			var selected_tab = $(this).find("a").attr("href");
			//  Show the selected tab content
			$(selected_tab).fadeIn();
			//  At the end, we add return false so that the click on the link is not executed
			return false;
		});
		$("#tabs1 li").click(function() {
			//  First remove class "active" from currently active tab
			$("#tabs1 li").removeClass('active');
			//  Now add class "active" to the selected/clicked tab
			$(this).addClass("active");
			//  Hide all tab content
			$(".tab_content1").hide();
			//  Here we get the href value of the selected tab
			var selected_tab = $(this).find("a").attr("href");
			//  Show the selected tab content
			$(selected_tab).fadeIn();
			//  At the end, we add return false so that the click on the link is not executed
			return false;
		});
		$("#tabs2 li").click(function() {
			//  First remove class "active" from currently active tab
			$("#tabs2 li").removeClass('active');
			//  Now add class "active" to the selected/clicked tab
			$(this).addClass("active");
			//  Hide all tab content
			$(".tab_content2").hide();
			//  Here we get the href value of the selected tab
			var selected_tab = $(this).find("a").attr("href");
			//  Show the selected tab content
			$(selected_tab).fadeIn();
			//  At the end, we add return false so that the click on the link is not executed
			return false;
		});
		$('#tabs li>a:first').click();
		$('#tabs1 li>a:first').click();
		$('#tabs2 li>a:first').click();
	});
</script>
</head>
<body>

	<jsp:include page="share/header.jsp"></jsp:include>
	<div class="wrap">
		<div class="main_left">
			<div class="tab">
				<div id="main_inform">
					<ul id="tabs">
						<li><a href="#photos"><span>Photos</span></a></li>
						<li><a href="#map"><span>Maps</span></a></li>
						<li><a href="#streetview"><span>Street View</span></a></li>
						<li><a href="#calendar"><span>Calendar</span></a> <span></span></li>
					</ul>
					<div id="tabs_content_container">
						<div id="photos" class="tab_content">
							<p>approximation of availability. We suggest that you contact
								the host to confirm. The prices listed are per day. The calendar
								is updated every five minutes and is only an approximation of
								availability. We suggest that you contact the host to confirm.</p>
						</div>
						<div id="map" class="tab_content">
							<p>This tab has icon in it.</p>
						</div>
						<div id="streetview" class="tab_content">
							<p>Suspendisse blandit velit eget erat suscipit in malesuada
								odio venenatis.</p>
						</div>
						<div id='calendar' class="tab_content"></div>
					</div>
				</div>
			</div>
			<div class="tab">
				<div id="description">
					<ul id="tabs1">
						<li><a href="#desc"><span>Description</span></a></li>
						<li><a href="#amen"><span>Amenities</span></a></li>
						<li><a href="#rule"><span>House Rules</span></a></li>
					</ul>
					<div id="tabs_content_container">
						<div id="photos" class="tab_content1">
							<p>approximation of availability. We suggest that you contact
								the host to confirm. The prices listed are per day. The calendar
								is updated every five minutes and is only an approximation of
								availability. We suggest that you contact the host to confirm.</p>
						</div>
						<div id="desc" class="tab_content1">
							<p>This tab has icon in it.</p>
						</div>
						<div id="amen" class="tab_content1">
							<p>Suspendisse blandit velit eget erat suscipit in malesuada
								odio venenatis.</p>
						</div>
						<div id='rule' class="tab_content1"></div>
					</div>
				</div>
			</div>
			<div class="tab">
				<div id="review">
					<ul id="tabs2">
						<li><a href="#rev"><span>Review</span></a></li>
					</ul>
					<div id="rev" class="tab_content2">
						<p>This tab has icon in it.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="main_right">
			<div id="reserve">
				<div id="price">
					form<br> <span></span>
					<form>
						<select>
							<option>Per Night</option>
							<option>Per Week</option>
							<option>Per Month</option>
						</select>
				</div>
				<div class="check">
					Check In <input type="text" name="checkIn" class="checkin"
						placeholder="Check In">
				</div>
				<div class="check">
					Check Out <input type="text" name="checkOut" class="checkout"
						placeholder="Check Out">
				</div>
				<div class="check">
					Guest <select>
						<%
							for (int i = 1; i < 16; i++) {
						%>
						<option>
							<%=i%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="submit">
					Subtotal<br> <span></span> <input type="submit" name="submit"
						value="Book It" class="btn-primary">
				</div>
				</form>
			</div>
			<div id="master">
				<div>
					<img src="img/square_225.jpg" alt="name"> <span>NAME</span>
					<form>
						<input type="button" name="contact" value="Contact Me">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
