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
</head>
<body>
	<div id="tabs_container">
		<ul id="tabs">
			<li class="active"><a href="#tab1">Tab 1</a></li>
			<li><a class="icon_accept" href="#tab2">Tab with icon</a></li>
			<li><a href="#tab3">Long name for the last tab</a></li>
		</ul>
	</div>
	<div id="tabs_content_container">
		<div id="tab1" class="tab_content" style="display: block;">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor.
				Integer laoreet placerat suscipit. Sed sodales scelerisque commodo.
				Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis,
				ornare id lectus. Proin consectetur nibh quis urna gravida mollis.</p>
		</div>
		<div id="tab2" class="tab_content">
			<p>This tab has icon in it.</p>
		</div>
		<div id="tab3" class="tab_content">
			<p>Suspendisse blandit velit eget erat suscipit in malesuada odio
				venenatis.</p>
		</div>
	</div>
	
	<div id="tabs_container">
		<ul id="tabs">
			<li class="active"><a href="#tab1">Tab 1</a></li>
			<li><a class="icon_accept" href="#tab2">Tab with icon</a></li>
			<li><a href="#tab3">Long name for the last tab</a></li>
		</ul>
	</div>
	<div id="tabs_content_container">
		<div id="tab1" class="tab_content" style="display: block;">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor.
				Integer laoreet placerat suscipit. Sed sodales scelerisque commodo.
				Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis,
				ornare id lectus. Proin consectetur nibh quis urna gravida mollis.</p>
		</div>
		<div id="tab2" class="tab_content">
			<p>This tab has icon in it.</p>
		</div>
		<div id="tab3" class="tab_content">
			<p>Suspendisse blandit velit eget erat suscipit in malesuada odio
				venenatis.</p>
		</div>
	</div>
	
	<div id="tabs_container">
		<ul id="tabs">
			<li class="active"><a href="#tab1">Tab 1</a></li>
			<li><a class="icon_accept" href="#tab2">Tab with icon</a></li>
			<li><a href="#tab3">Long name for the last tab</a></li>
		</ul>
	</div>
	<div id="tabs_content_container">
		<div id="tab1" class="tab_content" style="display: block;">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor.
				Integer laoreet placerat suscipit. Sed sodales scelerisque commodo.
				Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis,
				ornare id lectus. Proin consectetur nibh quis urna gravida mollis.</p>
		</div>
		<div id="tab2" class="tab_content">
			<p>This tab has icon in it.</p>
		</div>
		<div id="tab3" class="tab_content">
			<p>Suspendisse blandit velit eget erat suscipit in malesuada odio
				venenatis.</p>
		</div>
	</div>
	
	<div id="tabs_container">
		<ul id="tabs">
			<li class="active"><a href="#tab1">Tab 1</a></li>
			<li><a class="icon_accept" href="#tab2">Tab with icon</a></li>
			<li><a href="#tab3">Long name for the last tab</a></li>
		</ul>
	</div>
	<div id="tabs_content_container">
		<div id="tab1" class="tab_content" style="display: block;">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor.
				Integer laoreet placerat suscipit. Sed sodales scelerisque commodo.
				Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis,
				ornare id lectus. Proin consectetur nibh quis urna gravida mollis.</p>
		</div>
		<div id="tab2" class="tab_content">
			<p>This tab has icon in it.</p>
		</div>
		<div id="tab3" class="tab_content">
			<p>Suspendisse blandit velit eget erat suscipit in malesuada odio
				venenatis.</p>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	$(function($) {
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
	});
</script>