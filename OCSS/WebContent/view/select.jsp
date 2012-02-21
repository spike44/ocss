<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="disc.ocss.service.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*,java.util.*,disc.ocss.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	<form name="frm" method="POST">
	
	<input type="hidden" id="type">
		<c:if test="${empty brand }">
			<%
				CarService service = new CarService();
					session.setAttribute("brand", service.selectCarBrand());
			%>
		</c:if>
		<input type="hidden" id="brand" value=${sel }> <input
			type="hidden" id="type"> <select name="first_category"
			id="first" onChange="getSecondCategory()" size=6>
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
		
		
		<select name="second_category" id="second" onChange="typeCategory()" size=6>
			<c:forEach var="t" items="${type }">
				<option value="${t.carTypeCode }">${t.carType}</option>
			</c:forEach>
			<c:remove var="type" />
		</select>

		<c:if test="${empty carList }">
			<%! int pageCount=0; %>
			<%
					CarService service = new CarService();
					CarImagesService  iService = new CarImagesService();
					ArrayList<CarVO> carList = service.selectCar(null);
					
					pageCount = carList.size()/20;
					if(carList.size()%10>0)
						pageCount++;

					ArrayList<CarImagesVO> carImageList = iService.selectMainImages();

					session.setAttribute("carList", carList);
					session.setAttribute("carImageList", carImageList);
			%>
		</c:if>
		
		<%
			int num;
			if(request.getParameter("page")==null){
				num=0;
			}
			else{
				num=Integer.parseInt(request.getParameter("page"))*10;
			}
			ArrayList<CarVO> pageList = new ArrayList<CarVO>();
			ArrayList<CarVO> carList = (ArrayList<CarVO>)session.getAttribute("carList");
			for(int i=num;i<num+10;i++){
				pageList.add(carList.get(i));
			}
			session.setAttribute("pageList", pageList);
		%>

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
			<c:forEach var="c" items="${pageList }">
				<tr>
						<c:forEach var="image" items="${ carImageList}">
									<c:if test="${image.carId == c.carId}">
										<td>
											<a href="detailCar.jsp?carId=${c.carId }"><img src="${image.images }" width="250" height="250"></a>
										</td>
									</c:if>
						</c:forEach>

						<td><a href="detailCar.jsp?carId=${c.carId }">${c.title}</a></td>
						<td>${c.totalEval }</td>
						<td>${c.carYear}</td>
						<td>${c.price }</td>
						<td>${c.memberId }</td>
						<td>${c.locationList }</td>
					</tr>
				
			</c:forEach>
			
			<%-- <c:if test="${!empty carList }">
				<c:forEach var="c" items="${carList }">
					<tr>
						<c:forEach var="image" items="${ carImageList}">
									<c:if test="${image.carId == c.carId}">
										<td>
											<a href="detailCar.jsp?carId=${c.carId }"><img src="${image.images }" width="250" height="250"></a>
										</td>
									</c:if>
						</c:forEach>

						<td><a href="detailCar.jsp?carId=${c.carId }">${c.title}</a></td>
						<td>${c.totalEval }</td>
						<td>${c.carYear}</td>
						<td>${c.price }</td>
						<td>${c.memberId }</td>
						<td>${c.locationList }</td>
					</tr>
				</c:forEach>
			</c:if>
 --%>		</table>
		
		<%for(int j=1;j<=pageCount;j++){%>
			<a href="select.jsp?page=<%=j %>"><%=j %></a>
		<%} %>
	</form>
</body>
</html>