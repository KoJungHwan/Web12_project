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
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
</head>
<body>

	<jsp:include page="share/header.jsp"></jsp:include>
	<div id="wrap">
		<div id="main_inform">
			<div class="tab">
				<ul>
					<li><a href="#"><span>Photos</span></a>
						<div></div></li>
					<li><a href="#"><span>Maps</span></a>
						<div></div></li>
					<li><a href="#"><span>Street View</span></a>
						<div></div></li>
					<li><a href="#"><span>Calendar</span></a>
					<div></div></li>
				</ul>
			</div>
			<div id="description"></div>
			<div id="review"></div>
			<div id="reserve">form<br>
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	$(function($) {
		var tab = $('.tab');
		tab.find('li>a').click(function() {
			$(".tab>ul>li").removeClass('selected');
			$(".tab>ul>li>div").hide();
			$(this).parent().addClass('selected')
			$(this).parent().find('div').show();
		});
		$(".tab li>a:first").click();
	});
</script>