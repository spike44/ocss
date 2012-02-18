<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider();
	});
	
	function doLogin() {
		document.loginForm.action="login.do";
		document.loginForm.submit();
	}
 
</script>
</head>
<body>

<c:if test="${!empty edit}">
	<script type="text/javascript">
	alert("'${edit}'");
	</script>
<c:remove var="edit"/>
</c:if>
<c:if test="${!empty l}">
	<script type="text/javascript">
	alert("'${login.memberName}'");
	</script>
<c:remove var="edit"/>
</c:if>
<c:if test="${!empty loginfailed}">
	<script type="text/javascript">
	alert("'${loginfailed}'");
	</script>
<c:remove var="loginfailed"/>
</c:if>	
	<c:if test="${!empty join}">

		<script type="text/javascript">
			alert("'${join}'");
		</script>
		<c:remove var="join" />
	</c:if>
	<div id="bg_top">
		<div id="main">
			<!-- header begins -->
			<div id="logo">
				<a href="#">OCSS</a>
				<center>
					<input name="textfield" type="text" id="textfield" size="40" /> <input
						name="mainserch" type="submit" class="botton" id="mainserch"
						value="검색" size="15" />
				</center>
				<h2>
					<a href="#" id="metamorph">Oranize Car Selling Service</a>
				</h2>
			</div>
			<div id="buttons">
				<ul>
					<li class="first"><a href="#" title="">차량검색</a></li>
					<li><a href="#" title="">차량등록</a></li>
					<li><a href="#" title="">차량비교</a></li>
					<li><a href="#" title="">관심차량관리</a></li>
					<li><a href="#" title="">회사소개</a></li>

				</ul>
			</div>
			<div id="header">
				<div id="wrapper">
					<div id="slider-wrapper">
						<a href="#"></a>
						<div id="slider" class="nivoSlider">
							<img src="images/header1.jpg" alt="" /> <img
								src="images/header2.jpg" alt="" /> <img src="images/header3.jpg"
								alt="" /> <img src="images/header4.jpg" alt="" />
						</div>
					</div>


				</div>
			</div>
			<!-- header ends -->
			<!-- content begins -->

			<div id="content">
				<div id="right">
					<div id="categories">
						<h2>Categories</h2>
						<form action="" method="post"
							class="form1" name="loginForm">
							<h2>Member login</h2>
							<center>
								<label>&nbsp;N&nbsp;a&nbsp;m&nbsp;e&nbsp;:</label> <input
									name="memberId" type="text" size="15" border="2"
									placeholder="사용자 아이디" /> <br> <label>Passward:</label> <input
									name="password" type="password" size="15" border="2" placeholder="비밀번호" />
								<br> <input name="login" type="submit" class="botton"
									id="login" value="확인" size="15" onclick="dologin()"/>
							</center>

							<label class="label1"> <span class="pred">&nbsp;ID,PW를
									잊어버리셧습니까?</span></label> <input name="GO" type="button" class="botton" id="GO"
								value="GO" onclick="location.href='searchIdPw.jsp'" />
						</form>
					</div>
					<div id="partners">
						<h2>Our Partners</h2>
						<ul>
							<li><a href="#">대연대연김대연</a></li>
							<li><a href="#">종문종문하종문</a></li>
							<li><a href="#">성민성민손성민</a></li>
							<li><a href="#">도일도일권도일</a></li>
							<li><a href="#">진학진학문진학</a></li>
							<li><a href="#">유니유니김윤희</a></li>
						</ul>
					</div>
				</div>
				<div id="left">
					<h1>First Header Text Goes Here...</h1>
					<p class="pred">소비자 우롱하는 허위매물 중고차! 싸고 좋은차란 없다!</p>
					<div class="text">
						<p>
							중고자동차를 사려는 사람들은 절반 이상이 중고차 쇼핑몰에서 제공하는 정보를 이용하는 것으로 나타났다. <br />
							22일 중고차업체 차붐카붐에 따르면, 중고차 거래의 약 60%가 인터넷 중고차 쇼핑몰의 정보를 바탕으로 중고차를
							구입하는 것으로 드러났다. <br />
						</p>
						<p>
							그만큼 인터넷 중고차 쇼핑몰의 등장으로 소비자들은 보다 편리하게 중고차에 대한 정보를 획득하고 구입에서 판매까지
							가능하게 된 것이다. 매매단지를 방문해 발품을 팔고 중고차를 구입했던 풍경은 점차 사라지고 있다.<br />
							그렇다고 인터넷 사이트의 정보를 100% 신뢰하고 구매하기는 쉽지 않다. 가장 큰 문제는 허위매물로 인한 피해다.<br />
							실제로 존재하지 않는 차량을 싼 가격으로 내놓고 소비자들을 현혹 시킨 뒤, 형편없는 중고차를 값비싸게 판매하고 있어
							소비자들이 피해를 입고 있다.<br /> <br /> 거래량이 연간 200만 대에 육박할 정도로 중고차에 대한
							선호도는 갈수록 높아지고 있다. 따라서 중고차를 사기 전에 허위매물 여부인지를 꼼꼼히 살펴봐야 한다. <br />
							<br /> OCSS는 중고차 허위매물을 구별하는 방법을 다음과 같이 소개했다. <br /> <br /> 우선,
							평균시세보다 지나치게 낮은 가격의 차량은 피한다. 둘째, 해당 사이트에 기재된 매매업자의 상호, 주소, 전화번호 등을
							확인한다. 셋째, 차량번호를 가린 사진, 차량 내부사진과 기재된 옵션이 서로 다른 경우, 차량의 사진배경이 계절에
							맞지 않은 경우 등에 유의한다. 넷째, 연식에 비해 현저히 주행거리가 짧거나 판매자가 광고에 기재한 주소와 매물차량의
							보관 장소가 다른 경우에도 허위매물임을 의심해 봐야 한다. <br />
						</p>
						<div class="date">
							<div class="dateright">
								<a href="#">Comments(14)</a>
							</div>
							<div class="dateleft">February 23, 2011</div>
						</div>
					</div>
					<h1>OCSS NEWS...</h1>
					<div class="text">
						<div id="post">

							<div id="col1">
								<ul>
									<li><a href="#">[중고차 구입시 주의할점]</a></li>
									<li><a href="#">구입 프로세스 편!</a></li>
									<li><a href="#">각자란 무엇인가?</a></li>
								</ul>
							</div>

							<div id="col2">
								<ul>
									<li><a href="#">중고차 VS 신차 당신의 선택</a></li>
									<li><a href="#">A/S와 정검은 이렇게!</a></li>
									<li><a href="#">명의이전 계산하는법!</a></li>
								</ul>
							</div>

							<div id="col3">
								<ul>
									<li><a href="#">침수차 구별하는방법</a></li>
									<li><a href="#">중고차 감가율은 무엇인가</a></li>
									<li><a href="#">사고이력 조회방법</a></li>
								</ul>
							</div>
						</div>
					</div>
					<br />
					<br />
					<br />
					<br />
					<br />
					<h1>이부분에 무었이 들어갈지 내용미정...</h1>
					<p class="pred">Morbi porta odio id erat. Curabitur ut massa
						uspendisse ipsum. In vitae dolor eget lorem</p>
					<div class="text">
						<p>Suspendisse massa lacus, ullamcorper ac, pulvinar ut,
							aliquet et, elit. volutpat, diam leo vestibulum lectus, eu
							molestie elit est eu ipsum. Ut accumsan nisl eu velit. Morbi eros
							felis, ornare sed, vestibulum cursus, vehicula et, nisl. Etiam
							adipiscing. Sit amet, consectetuer adipiscing elit, sed diam
							nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam
							erat volutpat.</p>
					</div>
				</div>
			</div>
			<!-- content ends -->
			<!-- footer begins -->
			<div id="footer">
				<p align="center">copyright ⓒ OCSS all rights reserved</p>
				<p align="center">
					<a href="#"><img src="images/dis.png" alt="" width="186"
						height="39" /></a>
				</p>

			</div>
			<!-- footer ends -->
		</div>
	</div>
</body>
</html>