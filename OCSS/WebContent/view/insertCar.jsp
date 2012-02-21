<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*,java.util.*,disc.ocss.model.*"%>
<%@page import="disc.ocss.service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">


	function getSecondCategory() {
		document.frm.action = "cartype.do?sel=" + $("#brand").val()+"&page=insertCar";
		document.frm.submit();
	}

	function typeCategory(){
		$("#type").val($("#carType").val());
	}

	function insertCar(){

		if($("#insertCarName").val().length ==0)
			alert("제목을 입력해주세요");
		else if($("#brand").val()== "brand"){
			alert("브랜드를 선택해주세요");
		}
		else if($("#carType").val()== "carType"){
			alert("차종을 선택해주세요");
		}
		else if($("#carType").val()== "carType"){
			alert("차종을 선택해주세요");
		}
		else if($("#isAcci").val() == "isAcci"){
			alert("사고유물를 선택해주세요");
		}
		else if($("#isAuto").val() == "isAuto"){
			alert("변속기를 선택해주세요");
		}
		else if($("#fuel").val() == "fuel"){
			alert("연료를 선택해주세요");
		}
		else if($("#price").val().length<=0){
			alert("가격을 입력해주세요");
		}
		else if($("#carYear").val().length<=0){
			alert("연식을 입력해주세요");
		}
		else if($("#color").val().length<=0){
			alert("가격을 입력해주세요");
		}
		else if($("#locationList").val().length<=0){
			alert("지역을 입력해주세요");
		}
		else{
			alert("hi");
			document.frm.action = "insertcar.do";
			document.frm.submit();
		}
	}

	function openImage(){
		window.open('view/imagePage.jsp','OCSS','width=500, height=400');
	}
</script>
</head>
<body>
<center>
<form name="frm" method="post" id="frm">

	<div id="left">
		<div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/insertCar.jpg" alt="">	  </div>
		<p align="left" class="pred">※ 누락항목 없이 모두 입력해 주세요.</p>
		<div class="text">
		</div>
	</div>
	<%String title = request.getParameter("insertCarName");
		if(title==null)
			title="";
	%>
	<br> 제목 :
	<input name="insertCarName" type="text" size="90" id="insertCarName" value="${memory.title }"/>
	<br />
	<br /> 브랜드 :
	<c:if test="${empty brand }">
			<%
				CarService service = new CarService();
					session.setAttribute("brand", service.selectCarBrand());
			%>
		</c:if>
		<input type="hidden" id="type" name="type">

		<select name="brand" id="brand" onChange="getSecondCategory()">
			<option value="brand">브랜드</option>
			<c:forEach var="b" items="${brand }">
				<c:if test="${sel==b }">
					<option value="${b }" selected="selected">${b }</option>
				</c:if>
				<c:if test="${sel!=b }">
					<option value="${b }">${b }</option>
				</c:if>
			</c:forEach>
		</select>
		<c:remove var="sel"/>

		차종 :
	<select name="carType" id="carType" onChange="typeCategory()">
		<option value="carType">차종</option>
			<c:forEach var="t" items="${type }">
				<option value="${t.carTypeCode }">${t.carType}</option>
			</c:forEach>
			<c:remove var="type" />
		</select>

	사고유무
	<select name="isAcci" id="isAcci">
		<option value="isAcci">사고유무</option>
			<option value="1">무</option>
			<option value="0">유</option>
	</select> 변속기
	<select name="isAuto" id="isAuto">
		<option value="isAuto">변속기</option>
			<option value="1">오토</option>
			<option value="0">수동</option>

	</select> 연료
	<select name="fuel" id="fuel">
		<option value="fuel">연료</option>
			<option value="1">휘발유</option>
			<option value="2">경유</option>
			<option value="3">LPG</option>
	</select>
	<br />
	<br />
	가격 :
	<c:if test="${memory.price !=0}">
	<input name="price" id="price" type="text" size="8" id="price" value="${memory.price }"/>만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</c:if>
	<c:if test="${memory.price ==0 }">
	<input name="price" id="price" type="text" size="8" id="price"/>만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</c:if>
	연식 :
	<c:if test="${memory.carYear !=0 }">
	<input name="carYear" id="carYear" type="text" size="9" id="carYear" value="${memory.carYear }"/>년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</c:if>
	<c:if test="${memory.carYear==0 }">
	<input name="carYear" id="carYear" type="text" size="9" id="carYear"/>년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</c:if>

	색상 :
	<input name="color" id="color" type="text" size="12" id="color" value="${memory.color }"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br /> 지역 :
	<input name="locationList" id="locationList" type="text" size="12" id="locationList" value="${memory.locationList }" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
	<br /> 내용
	<br />
	<textarea name="content" id="content" style = "width : 90%" cols="80" rows="20" id="content">${content }</textarea>

	<c:remove var="memory"/>
	<c:remove var="content"/>
	<br />
	<input class="button rosy medium" type="button" name="imgBtn" value="사진등록" onClick="openImage()"/>
	<input class="button green medium" type="button" name="ok" value="완료" onClick="insertCar()"/>
	<br />
</form>
	</center>
	<br/>
</body>
</html>