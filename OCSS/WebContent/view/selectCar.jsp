<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*,java.util.*,disc.ocss.model.*"%>
<%@page import="disc.ocss.service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OCSS 차량정보조회.</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script type="text/javascript" src="../js/jquery.js"> </script>
<script type="text/javascript">

	function getSecondCategory() {
		document.frm.action = "cartype.do?sel=" + $("#first").val();
		document.frm.submit();
	}

	function typeCategory(){
		$("#type").val($("#second").val());
	}
</script>
</head>
<body>
<form name="frm" method="post">
<input type="hidden" id="type"/>
	<div id="left">
		<h1>차량정보조회</h1>
		<p class="pred">※ Oranize Car Selling Service 에서 제공하는 검색 solution</p>
		<div class="text">

			<center>
				<p align="justify"><br/> 브랜드 :
					<c:if test="${empty brand }">
			<%
				CarService service = new CarService();
					session.setAttribute("brand", service.selectCarBrand());
			%>
			</c:if>
				<select name="first_category" id="first" onchange="getSecondCategory()" size=6>
									<c:forEach var="b" items="${brand }">
										<c:if test="${sel==b }">
											<option value="${b }" selected="selected">${b }</option>
										</c:if>
										<c:if test="${sel!=b }">
											<option value="${b }">${b }</option>
										</c:if>
									</c:forEach>
							</select> <c:remove var="sel" /> 
							
							&nbsp;&nbsp;&nbsp;차종 : <select name="second_category" id="second" onChange="typeCategory()" size=6>
									<c:forEach var="t" items="${type }">
										<option value="${t.carTypeCode }">${t.carType}</option>
									</c:forEach>
									<c:remove var="type" />
							</select>
							&nbsp;&nbsp;&nbsp;사고유무 :&nbsp; <select name="isAcci">
						<option>사고유무</option>
						<option>무</option>
						<option>유</option>
					</select> 변속기 : <select name="isAoto">
						<option>변속기</option>
						<option>오토</option>
						<option>수동</option>
					</select>
				</p>
				<p align="justify">
					연료 <select name="fual">
						<option>휘발유</option>
						<option>경유</option>
						<option>LPG</option>
					</select>&nbsp; 가격 : <input name="price" type="text" size="5" />만원
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;연식 : <input name="carYears1"
						type="text" size="5" />년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;색상 : <input
						name="color" type="text" size="10" /><br />
						지역 : <input name="locationList" type="text"
						size="10" /> &nbsp;<br />
			    <br />
			    </div>
			    <center>
				<input class="button" type="button"name="serchCar" value="차량정보조회" align="center"/><br /> <br />
			    </center>
			    <c:if test="${empty carList }">
					<%!int pageCount = 0;%>
					<%
							CarService service = new CarService();
							CarImagesService iService = new CarImagesService();
							ArrayList<CarVO> carList = service.selectCar(null);

							pageCount = carList.size() / 20;
							System.out.println(pageCount);
							if (carList.size() % 20 > 0)
								pageCount++;

							ArrayList<CarImagesVO> carImageList = iService.selectMainImages();

							session.setAttribute("carList", carList);
							session.setAttribute("carImageList", carImageList);
					%>
				</c:if>

				<%
					System.out.println(pageCount);
					int num;
					if (request.getParameter("page") == null) {
						num = 0;
					}
					else {
						num = Integer.parseInt(request.getParameter("page")) * 10;
					}
					ArrayList<CarVO> pageList = new ArrayList<CarVO>();
					ArrayList<CarVO> carList = (ArrayList<CarVO>) session.getAttribute("carList");
					for (int i = num; i < num + 20; i++) {
						pageList.add(carList.get(i));
					}
					session.setAttribute("pageList", pageList);
				%>
			    <div class = "text">
				<table width="100%" border="1" cellpadding="2">
					<tr>
						<td width="8%"><div align="center">
								<strong>선택</strong>
							</div></td>
						<td width="16%"><div align="center">
								<strong>사진</strong>
							</div></td>
						<td width="37%"><div align="center">
								<strong>제목</strong>
							</div></td>
						<td width="9%"><div align="center">
								<strong>연식</strong>
							</div></td>
						<td width="6%"><div align="center">
								<strong>가격</strong>
							</div></td>
						<td width="9%"><div align="center">
								<strong>등록일</strong>
							</div></td>
						<td width="8%"><div align="center">
								<strong>지역</strong>
							</div></td>
					</tr>
					<c:forEach var="c" items="${pageList }">
				<tr>
				<td><div align="center">
									<label> <input type="checkbox" name="keepCar"
										id="keepCar" />
									</label>

							</div></td>
						<c:forEach var="image" items="${ carImageList}">
									<c:if test="${image.carId == c.carId}">
										<td>
											<div align="center"><a href="detailCar.jsp?carId=${c.carId }"><img src="../${image.images }" width="100" height="100"></a></div>
										</td>
									</c:if>
						</c:forEach>
						<td><div align="center"><a href="detailCar.jsp?carId=${c.carId }">${c.title}</a></div></td>
						<td><div align="center">${c.carYear}년</div></td>
						<td><div align="center">${c.price }만원</div></td>
						<td><div align="center">${c.carDate }</div></td>
						<td><div align="center">${c.locationList }</div></td>
					</tr>
				
			</c:forEach>
				</table>

				<div align="center"><br />
				<%for(int j=1;j<=pageCount;j++){%>
					<a href="selectCar.jsp?page=<%=j %>">&lt;<%=j %>&gt;</a>
				<%} %>
				<br />
				  <p/>
				  
				  <br /> 
				  <input class="button" type="button" name="keepingCar"
					value="차량비교 담기" /> 
				  <br /> 
				  <br />
				          </div>
	    </div>
	</div>
</form>
</body>
</html>
