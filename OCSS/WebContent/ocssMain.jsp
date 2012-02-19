<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</head>
<body>

<c:if test="${!empty join}">
	<script type="text/javascript">
	alert("'${join}'");
	</script>
<c:remove var="join"/>
</c:if>
<c:if test="${!empty resultdelete}">
	<script type="text/javascript">
	alert("'${resultdelete}'");
	</script>
<c:remove var="resultdelete"/>
</c:if>
<c:if test="${!empty edit}">
	<script type="text/javascript">
	alert("'${edit}'");
	</script>
<c:remove var="edit"/>
</c:if>
	<div id="bg_top">
		<div id="main">
			<!-- header begins -->
			<div id="logo">
				<a href="#">OCSS</a>
				<center> <input name="textfield" type="text" id="textfield"
					size="40" /> <input name="mainserch" type="submit" class="botton"
					id="mainserch" value="검색" size="15" /> </center>
				<h2>
					<a href="#" id="metamorph">Oranize Car Selling Service</a>
				</h2>
			</div>
			<div id="buttons">
				<ul>
					<li class="first"><a href="#" title="">차량검색</a></li>
					<li><a href="#" title="">차량등록</a></li>
					<li><a href="#" title="">차량비교</a></li>
					<li><a href="#" title="">회사소개</a></li>

				</ul>
			</div>
			<!-- header 상단 img -->
			<div id="header">
				<tiles:insertAttribute name="header" />
			</div>
			<!-- header ends -->
			<!-- content begins -->

			<!-- content 로그인 -->
			<div id="content">
				<tiles:insertAttribute name="content" />
			</div>
			<!-- left 내용 -->
			<div id="left">
				<tiles:insertAttribute name="left" />
			</div>
			<!-- content ends -->
		</div>
		<!-- footer 회사로고 -->
			<div id="footer">
				<tiles:insertAttribute name="footer" />
			</div>
		<!-- footer ends -->

	</div>
</body>
</html>