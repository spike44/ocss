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
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/validate.js" type="text/javascript"></script>
<script type="text/javascript">
$.validator.setDefaults({
	submitHandler : function() {
		alert("submitted!");
	}
});

$().ready(function() {
	// validate the comment form when it is submitted
	// validate signup form on keyup and submit
	$("#frm").validate({
		rules : {

			insertCarName : "required",
			brand : "required",
			carType : "required",
			isAcci : "required",
			isAuto : "required",
			fuel : "required",
			price  : {
				required : true,
				tel : true
			},
			carYear :  {
				required : true,
				tel : true
			},
			color : "required",
			locationList : "required",
			content : "required"
			
		},
		messages : {

			insertCarName : "차 이름을 입력해주세요",
			brand : "브랜드를 선택해주세요",
			carType : "차종을 선택해주세요",
			isAcci : "사고유무를 선택해주세요",
			isAuto : "변속기 종류를 선택해주세요",
			fuel : "연료를 선택해주세요",
			price  : {
				required : "가격을 입력해주세요",
				tel : "숫자만 입력해주세요"
			},
			carYear :  {
				required : "연식을 입력해주세요",
				tel : "숫자만 입력해주세요"
			},
			color : "색상을 입력해주세요",
			locationList : "지역을 입력해주세요",
			content : "설명을 입력해주세요"
		}
	});

});

	function getSeondCategory() {
		document.frm.action = "cartype.do?sel=" + $("#brand").val()+"&page=insertCar";
		document.frm.submit();
	}

	function typeCategory(){
		$("#type").val($("#second").val());
	}
	
	function insertCar(num){
		window.open('insertImage.jsp','OCSS','width=300, height=150');
	}
	
	function Image(){
		
	}
</script>
</head>
<body>
<center>
<form name="frm" method="post" id="frm" action="insertcar.do" enctype="multipart/form-data"> 

	<div id="left">
		<h1>차량등록</h1>
		<p class="pred">※ 누락항목 없이 모두 입력해 주세요.</p>
		<div class="text">
		</div>
	</div>

	<br> 제목 :
	<input name="insertCarName" type="text" size="90" id="insertCarName"/>
	<br />
	<br /> 브랜드 :
	<c:if test="${empty brand }">
			<%
			
				CarService service = new CarService();
					session.setAttribute("brand", service.selectCarBrand());
			%>
		</c:if>
		<input type="hidden" id="type">
		
		<select name="brand" id="brand" onChange="getSeondCategory()">
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
		<c:remove var="sel" />
		차종 :
	<select name="carType" id="second" onChange="typeCategory()">
		<option value="type">차종</option>
			<c:forEach var="t" items="${type }">
				<option value="${t.carTypeCode }">${t.carType}</option>
			</c:forEach>
			<c:remove var="type" />
		</select>

	사고유무
	<select name="isAcci" id="isAcci">
		<option>사고유무</option>
		<option>무</option>
		<option>유</option>
	</select> 변속기
	<select name="isAuto" id="isAuto">
		<option>변속기</option>
		<option>오토</option>
		<option>수동</option>
	</select> 연료
	<select name="fuel" id="fuel">
		<option>휘발유</option>
		<option>경유</option>
		<option>LPG</option>
	</select>
	<br />
	<br /> 가격 :
	<input name="price" id="price" type="text" size="8" id="price"/>만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	연식 :
	<input name="carYear" id="carYear" type="text" size="9" id="carYear"/>년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	색상 :
	<input name="color" id="color" type="text" size="12" id="color"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br /> 지역 :
	<input name="locationList" id="locationList" type="text" size="12" id="locatoinList"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
	<br /> 내용
	<br />
	<textarea name="content" id="content" cols="80" rows="20" id="content"></textarea>
	<br /> 사진
	<br />
	<table width="100" border="1" cellpadding="2">
		<tr>
			<td><a href="javascript:insertCar(1)"><img src="images/1.jpg" alt="pic1" width="132" height="104" /></a>
			</td>
			<td><a href="javascript:insertCar(2)"><img src="images/2.jpg" alt="pic2" width="132" height="104"/></a></td>
			<td><a href="javascript:insertCar(3)"><img src="images/3.jpg" alt="pic3" width="132" height="104" /></a></td>
		</tr>
		<tr>
			<td><a href="javascript:insertCar(4)"><img src="images/4.jpg" alt="pic4" width="132" height="104" /></a></td>
			<td><a href="javascript:insertCar(5)"><img src="images/5.jpg" alt="pic5" width="132" height="104" /></a></td>
			<td><a href="javascript:insertCar(6)"><img src="images/6.jpg" alt="pic6" width="132" height="104" /></a></td>
		</tr>
	</table>

	<br />
	<input class="button" type="submit" name="ok" value="완료" />
	<br />
</form>
	</center>
</body>
</html>