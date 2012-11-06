<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/project.css" rel="stylesheet">
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
		var tab = $('#inform');
		var tab1 = $('#desc');
		var tab2 = $('#rev');

		tab.find('li>a').click(function() {
			$("#inform>ul>li").removeClass('selected');
			$("#inform>ul>li>div").hide();
			$(this).parent().addClass('selected')
			$(this).parent().find('div').show();
			$(this).parent().focus();
		});
		tab1.find('li>a').click(function() {
			$("#desc>ul>li").removeClass('selected');
			$("#desc>ul>li>div").hide();
			$(this).parent().addClass('selected')
			$(this).parent().find('div').show();
			$(this).parent().focus();
		});
		tab2.find('li>a').click(function() {
			$("#rev>ul>li").removeClass('selected');
			$("#rev>ul>li>div").hide();
			$(this).parent().addClass('selected')
			$(this).parent().find('div').show();
			$(this).parent().focus();
		});

		$("#inform li>a:first").click();
		$("#desc li>a:first").click();
		$("#rev li>a:first").click();

	});
</script>
</head>
<body>

	<jsp:include page="share/header.jsp"></jsp:include>
	<div class="wrap">
		<div id="main_inform">
			<div class="tab" id="inform">
				<ul>
					<li><a href="#"><span>Photos</span></a>
						<div>approximation of availability. We suggest that you
							contact the host to confirm. The prices listed are per day. The
							calendar is updated every five minutes and is only an
							approximation of availability. We suggest that you contact the
							host to confirm. The prices listed are per day. The calendar is
							updated every five minutes and is only an approximation of
							availability. We suggest that you contact the host to confirm.
							The prices listed are per day. The calendar is updated every five
							minutes and is only an approximation of availability. We suggest
							that you contact the host to confirm. The prices listed are per
							day. The calendar is updated every five minutes and is only an
							approximation of availability. We suggest that you contact the
							host to confirm. The prices listed are per day. The calendar is
							updated every five minutes and is only an approximation of
							availability. We suggest that you contact the host to confirm.
							The prices listed are per day. The calendar is updated every five
							minutes and is only an approximation of availability. We suggest
							that you contact the host to confirm. The prices listed are per
							day. The calendar is updated every five minutes and is only an
							approximation of availability. We suggest that you contact the
							host to confirm. The prices listed are per day. The calendar is
							updated every five minutes and is only an approximation of
							availability. We suggest that you contact the host to confirm.
							The prices listed are per day. The calendar is updated every five
							minutes and is only an approximation of availability. We suggest
							that you contact the host to confirm. The prices listed are per
							day. The calendar is updated every five minutes and is only an
							approximation of availability. We suggest that you contact the
							host to confirm. The prices listed are per day. The calendar is
							updated every five minutes and is only an approximation of
							availability. We suggest that you contact the host to confirm.
							The prices listed are per day. The calendar is updated every five
							minutes and is only an approximation of availability. We suggest
							that you contact the host to confirm. The prices listed are per
							day.</div></li>
					<li><a href="#"><span>Maps</span></a>
						<div></div></li>
					<li><a href="#"><span>Street View</span></a>
						<div></div></li>
					<li><a href="#"><span>Calendar</span></a> <span></span>
						<div id='calendar'></div> <span></span></li>
				</ul>
			</div>
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
			<div id="description">
				<div class="tab" id="desc">
					<ul>
						<li><a href="#"><span>Description</span></a>
							<div></div></li>
						<li><a href="#"><span>Amenities</span></a>
							<div></div></li>
						<li><a href="#"><span>House Rules</span></a>
							<div></div></li>
					</ul>
				</div>
			</div>

			<div id="review">
				<div class="tab" id="rev">
					<ul>
						<li><a href="#"><span>Review</span></a>
							<div></div></li>
					</ul>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
