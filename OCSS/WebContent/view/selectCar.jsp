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

<script type="text/javascript">

	function getSecondCategory() {
		document.frm.action = "cartype.do?sel=" + $("#first").val();
		document.frm.submit();
	}

	function typeCategory(){
		$("#typeCode").val($("#second").val());
	}
	
	function searchCar(){
		document.frm.action = "searchcar.do";
		document.frm.submit();
		
	}
</script>
</head>
<body>
<form name="frm" method="post">
<input type="hidden" id="typeCode" name="typeCode"/>
<input type="hidden" id="brand" name="brand" value="${sel}"/>

	<div id="left">
		&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/selectCar.jpg" alt="" />
		<p class="pred">※ Oranize Car Selling Service 에서 제공하는 검색 solution</p>
		<div class="text">

			<center>
				<p align="justify"><br/> 브랜드 :
		
				<select name="first_category" id="first" onchange="getSecondCategory()" name="first">
				<option>브랜드</option>
					<c:forEach var="b" items="${brand }">
						<c:if test="${sel==b }">
							<option value="${b }" selected="selected">${b }</option>
						</c:if>
						<c:if test="${sel!=b }">
							<option value="${b }">${b }</option>
						</c:if>
					</c:forEach>
				</select>
				<c:remove var="sel" /> 
							
				&nbsp;&nbsp;&nbsp;
				차종 : <select name="second_category" id="second" onChange="typeCategory()">
				<option>차종</option>
						<c:forEach var="t" items="${type }">
							<option value="${t.carTypeCode }">${t.carType}</option>
						</c:forEach>
						<c:remove var="type" />
					</select>
				&nbsp;&nbsp;&nbsp;사고유무 :&nbsp;
				<select name="isAcci">
						<option value="-1" selected="selected">사고유무</option>
						<option value="1">무</option>
						<option value="0">유</option>
				</select>
				변속기 : <select name="isAuto">
						<option value="-1" selected="selected">변속기</option>
						<option value="1">자동</option>
						<option value="0">수동</option>
					</select>
				</p>
				<p align="justify">
					연료 : <select name="fuel">
					<option value="-1" selected="selected" >연료</option>
						<option value="1">휘발유</option>
						<option value="2">경유</option>
						<option value="3">LPG</option>
					 </select>&nbsp;
					 가격 : <input name="minPrice" type="text" size="5" />만원 ~ <input name="maxPrice" type="text" size="5" />만원
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					연식 : <input name="carYears" type="text" size="5" />년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>
					색상 : <input name="color" type="text" size="10" />
					지역 : <input name="locationList" type="text" size="10" /> &nbsp;<br />
			    <br />
			    </div>
			    <center>
				<input class="button green medium" type="button"name="serchCar" value="차량 검색" align="center" onclick="searchCar()"/><br /> <br />
			    </center>
			    
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
					<c:forEach var="c" items="${carList }">
					<tr>
				<td><div align="center">
									<label> <input type="checkbox" name="keepCar" id="keepCar" value="${c.carId }"/>
									</label>

							</div></td>
						<c:forEach var="image" items="${ carImageList}">
									<c:if test="${image.carId == c.carId}">
										<td>
											<div align="center"><a href="detailcar.do?carId=${c.carId }"><img src="/OCSS/${image.images }" width="100" height="100"></a></div>
										</td>
									</c:if>
						</c:forEach>
						<td><div align="center"><a href="detailcar.do?carId=${c.carId }">${c.title}</a></div></td>
						<td><div align="center">${c.carYear}년</div></td>
						<td><div align="center">${c.price }만원</div></td>
						<td><div align="center">${c.carDate }</div></td>
						<td><div align="center">${c.locationList }</div></td>
					</tr>
					</c:forEach>
					</table>

				<div align="center"><br />
				
				
				<%
					String search = request.getParameter("search");
					if(search==null || search.length()<=0 || search.isEmpty()){
				%>
					<c:forEach begin="1" end="${pageSize }" step="1" var="p">
						<a href="selectcar.do?change=${p*10 }">&lt;${p }&gt;</a>
					</c:forEach>
				<%} else{%>
					<c:forEach begin="1" end="${pageSize }" step="1" var="p">
						<a href="searchcar.do?change=${p*10 }">&lt;${p }&gt;</a>
					</c:forEach>
				<%} %>
				
				<br />
				  <p/>
				  
				  <br /> 
				  <input class="button green medium" type="button" name="keepingCar" value="관심상품 담기" onclick="keepingCar()" /> 
				  <br /> 
				  <br />
				  </div>
	    </div>
	</div>
</form>
</body>
</html>

