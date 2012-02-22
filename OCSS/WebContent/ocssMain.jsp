<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>OCSS에 오신것을 환영합니다.</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"media="screen" />
<script src="js/jquery.js" type="text/javascript"></script>
			<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script src="js/validate.js" type="text/javascript"></script>
			<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
			<script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
			<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>
<body>


	<div id="bg_top">

		<div id="main">
			<!-- header begins -->
			<div id="logo">
				<a href="#">OCSS</a>

				<h2>
					<a href="#" id="metamorph">Organize Car Selling Service</a>
				</h2>
			</div>
			<div id="buttons">
				<ul>
					<li class="first"><a href="selectcar.do" title="" class="style1">차량검색</a></li>
					<li><a href="#" title="">차량비교</a></li>
					<li><a href="#" title="">차량구입방법</a></li>
					<li><a href="#" title="">회사소개</a></li>
				</ul>
			</div>


			<!-- header 상단 img -->
			<div id="header">
				<tiles:insertAttribute name="header" />
			</div>
			<!-- header ends -->
			<!-- content begins -->
		 <div id = "content" style="height: 100%;" >
			<!-- content 로그인 -->
			<div id="right">
				<tiles:insertAttribute name="right" />
			</div>
			<!-- left 내용 -->
			<div id="left">
				<tiles:insertAttribute name="left" />
			</div>
			</div>
		</div>
			<!-- content ends -->

		<!-- footer 회사로고 -->
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
		<!-- footer ends -->

	</div>
</body>
</html>