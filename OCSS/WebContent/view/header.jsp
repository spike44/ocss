<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
</script>
</head>
<body>
	<div id="header">
		<div id="wrapper">
			<div id="slider-wrapper">
				<a href="#"></a>
				<div id="slider" class="nivoSlider">
					<img src="images/header1.jpg" alt="" />
					<img src="images/header2.jpg" alt="" />
					<img src="images/header3.jpg"alt="" />
					<img src="images/header4.jpg" alt="" />
				</div>
			</div>

		</div>
	</div>
</body>
</html>