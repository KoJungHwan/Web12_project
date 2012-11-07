<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Css -->
<link href="css/project1.css" rel="stylesheet">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
<link rel='stylesheet' type='text/css' href='css/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='css/fullcalendar.print.css'
	media='print' />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="themes/default/default.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="themes/light/light.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="themes/dark/dark.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="themes/bar/bar.css" type="text/css"
	media="screen" />
<!-- <link rel="stylesheet" href="/resources/demos/style.css" />-->
<!-- Script -->
<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<!-- <script src="http://code.jquery.com/jquery-1.8.2.js"></script> -->
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<script type='text/javascript' src='js/fullcalendar.min.js'></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script>
	$(function() {
		var map; //I placed here the map variable so other functions can see it.
		var latlng = new google.maps.LatLng(-27.999673, 153.42855);
		// in order to center again the map...
		function initialize() {

			var myOptions = {
				zoom : 15,
				center : latlng,
				mapTypeId : google.maps.MapTypeId.ROADMAP,
				mapTypeControl : true,
				mapTypeControlOptions : {
					style : google.maps.MapTypeControlStyle.DROPDOWN_MENU
				}
			};
			map = new google.maps.Map(document.getElementById("map_canvas"),
					myOptions);
			var contentString = 'blah';
			var infowindow = new google.maps.InfoWindow({
				content : contentString
			});
			var marker = new google.maps.Marker({
				position : latlng,
				map : map
			});
			google.maps.event.addListener(marker, 'click', function() {
				infowindow.open(map, marker);
			});
		}
		google.maps.event.addDomListener(window, 'load', initialize);
		//datepicker의 날짜의 시작부분을 설정하는 부분
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
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		//달력의 예약을 체우는 부분
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
		//각기 탭에 간한 탭에 색변화와 보여줄 내용부를 설정해주는 부분
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
		//페이지 시작할때 선택될 탭을 설정해주는 부분
		$('#tabs li>a:first').click();
		$('#tabs1 li>a:first').click();
		$('#tabs2 li>a:first').click();
		$(window).load(function() {
			$('#slider').nivoSlider();
		});
	});
</script>

<!-- 구글맵 스크립 -->
<script type="text/javascript">
	function toggleDiv1(viewmap) {
		if (document.getElementById(viewmap).style.display == 'block') {
			document.getElementById(viewmap).style.display = 'none';
		} else {
			document.getElementById(viewmap).style.display = 'block';
			//here is where your map is being displayed again, try here
			// to trigger the resize event.
			google.maps.event.trigger(map, 'resize');
			map.setCenter(latlng);
		}
	}
	function toggleDiv2(hidemap) {
		if (document.getElementById(hidemap).style.display == 'none') {
			document.getElementById(hidemap).style.display = 'block';
		} else {
			document.getElementById(hidemap).style.display = 'none';
		}
	}
</script>
</head>
<body>

	<jsp:include page="share/header.jsp"></jsp:include>
	<div class="wrap">
		<!-- 전체 화면에서 왼쪽을 차지하는 부분 -->
		<div class="main_left">
			<div class="tab">
				<!-- 화면에서 왼쪽 처음 나오는 펜션 사진 켈린더 등 구현부 -->
				<div id="main_inform">
					<ul id="tabs">
						<!-- 탭부분을 나타내는 곳 -->
						<li><a href="#photos"><span>Photos</span></a></li>
						<li><a href="#map"><span>Maps</span></a></li>
						<li><a href="#streetview"><span>Street View</span></a></li>
						<li><a href="#calendar"><span>Calendar</span></a> <span></span></li>
					</ul>
					<div id="tabs_content_container">
						<!-- 탭부분의 각기 내용이 들어 가는 div -->
						<div id="photos" class="tab_content">
							<div id="wrapper">
								<div class="slider-wrapper theme-default">
									<div id="slider" class="nivoSlider">
										<%
											for (int i = 0; i < 10; i++) {
										%>
										<img src="img/large/large-<%=i%>.jpg"
											data-thumb="img/large/large-<%=i%>.jpg" alt="large-<%=i%>" />
										<%
											}
										%>
									</div>
									<div id="htmlcaption" class="nivo-html-caption">
										<strong>This</strong> is an example of a <em>HTML</em> caption
										with <a href="#">a link</a>.
									</div>
								</div>

							</div>
						</div>
						<div id="map" class="tab_content">
							<div id="map_canvas"></div>
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
				<!-- 펜션의 상세 설명부분 -->
				<div id="description">
					<ul id="tabs1">
						<!-- 탭 부분 -->
						<li><a href="#desc"><span>Description</span></a></li>
						<li><a href="#amen"><span>Amenities</span></a></li>
						<li><a href="#rule"><span>House Rules</span></a></li>
					</ul>
					<div id="tabs_content_container">
						<!-- 상세설명부분의 내용이 들어가는 곳 -->
						<div id="desc" class="tab_content1">
							<p>Newly opened elegant Brownstone Guest house with all the
								charm of a boutique hotel while enjoying a cheap vacation as a
								true New yorker. Located in La Maison d'Art guesthouse, with the
								Master suite, Apt 2 and 3. Studios/rooms are fully equipped with
								linens, towels, wifi, Digital TV, DVD, Brand new "W Hotel" Full
								size bed, brand new bathroom, room decorated by artists. House
								located on brownstone treeline quiet street. first floor of the
								house used as lounge, art gallery for guest. all studios and
								apartments located on 2nd and 3rd floor. Small restaurants,
								supermarket, laundromat, drugstore at the corner. Subway B,C 3
								blocks up @ 135th street - lines 2/3 at 135th/Lenox (15/20
								minutes from time square)- lines A,D (express) B,C a 125th
								street/st. Nicholas (10 min express to columbus circle) - bus
								M2/M10 at the corner. walking distance to Columbia university
								through the park and the beautiful historical harlem sites!</p>
						</div>
						<div id="amen" class="tab_content1">
							<p>Suspendisse blandit velit eget erat suscipit in malesuada
								odio venenatis.</p>
						</div>
						<div id='rule' class="tab_content1">
							<p>no smoking $25 cleaning fees due in cash when you check-in
								Kindly contact Stephanie as soon as you have your detailed
								travel itinerary. As we do not have a 24h-reception, it is very
								important to contact Stephanie when you land/arrive in NYC and
								give her a MINIMUM of 30 minutes/1hour for her to meet you at La
								Maison d'Art. Thanks For the astute traveler who appreciate art,
								tranquility and comfort, who respect the effort we put into our
								design to provide the best for our guest. Kindly respect the
								house and its contents. Thanks!</p>
						</div>
					</div>
				</div>
			</div>
			<div class="tab">
				<!-- 펜션의 상세 설명부분 -->
				<div id="description">
					<ul id="tabs2">
						<!-- 탭 부분 -->
						<li><a href="#rev"><span>Review</span></a></li>
					</ul>
					<div id="tabs_content_container">
						<!-- 상세설명부분의 내용이 들어가는 곳 -->
						<div id="rev" class="tab_content2">
							<%
								for (int i = 0; i < 10; i++) {
							%>
							<div class="reviewbox">
								<div class="reviewpicture">
									<img src="img/IMG_0056.JPG" alt="hi"><br> <span>Sang
										bo</span>
								</div>
								<div class="reviewcoment">
									<span>안녕하세요. 정말로 재미있엇고 추억있는 여행이 되었답니다.</span>
									<div class="reviewborder"></div>
									<div class="tail"></div>
								</div>
							</div>
							<%
								}
							%>
						</div>
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
