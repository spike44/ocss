<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="disc.ocss.service.CarService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*,java.util.*,disc.ocss.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.js" type="text/javascript"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function getFirstCategory() {
		document.frm.action = "cartype.do?sel=brand";
		document.frm.submit();
	}

	function getSeondCategory() {
		document.frm.action = "cartype.do?sel=" + $("#first").val();
		document.frm.submit();
	}

	function ChangeCategory() {
		$("#type").val($("#second").val());
	}
</script>
</head>
<body>
	<form name="frm" method="POST">
		<c:if test="${empty brand }">
			<%
				CarService service = new CarService();
					session.setAttribute("brand", service.selectCarBrand());
			%>
		</c:if>
		<input type="hidden" id="brand" value=${sel }> <input
			type="hidden" id="type"> <select name="first_category"
			id="first" onChange="getSeondCategory()" size=6>
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

		<select name="second_category" id="second" onChange="ChangeCategory()"
			size=6>
			<c:if test="${!empty type } "></c:if>
			<c:forEach var="t" items="${type }">
				<option value=${t }>${t }</option>
			</c:forEach>
			<c:remove var="type" />
		</select>

		<c:if test="${empty carList }">
			<%
				CarService service = new CarService();
					ArrayList<CarVO> carList = service.selectCar(null);

					ArrayList<CarImagesVO> carImageList = service
							.selectMainImages();
					ArrayList<String> iIdList = new ArrayList<String>();
					ArrayList<String> cIdList = new ArrayList<String>();

					for (CarVO c : carList) {
						cIdList.add(Integer.toString(c.getCarId()));
						System.out.println(c.getCarId());
					}

					for (CarImagesVO img : carImageList) {
						iIdList.add(Integer.toString(img.getCarId()));
						System.out.println(img.getCarId());
					}

					session.setAttribute("carList", carList);
					session.setAttribute("carImageList", carImageList);
					session.setAttribute("iIdList", iIdList);
					session.setAttribute("cIdList", cIdList);
			%>
		</c:if>


		<table border="1">
			<tr>
				<td>사진</td>
				<td>차명</td>
				<td>총점</td>
				<td>연식</td>
				<td>가격</td>
				<td>판매자</td>
				<td>지역</td>
			</tr>
			<c:if test="${!empty carList }">
				<c:forEach var="c" items="${carList }">
					<tr>
						<c:forEach var="image" items="carImageList">
							<c:forEach var="iId" items="iIdList">
								<c:forEach var="cId" items="cIdList">
									<c:if test="${!empty iId}">
										<td><img src="C:\temp\userpic\bin.jpg"></td>
									</c:if>
								</c:forEach>
							</c:forEach>
						</c:forEach>

						<td>${c.title}</td>
						<td>${c.totalEval }</td>
						<td>${c.carYear}</td>
						<td>${c.price }</td>
						<td>${c.memberId }</td>
						<td>${c.locationList }</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<c:remove var="carList" />
	</form>
</body>
</html>