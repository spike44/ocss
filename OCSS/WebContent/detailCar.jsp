<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page
	import="java.io.*,java.util.*,disc.ocss.model.*,disc.ocss.service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<CarVO> carList = (ArrayList<CarVO>) session.getAttribute("carList");
		int carId = Integer.parseInt(request.getParameter("carId"));
		CarVO detail = new CarVO();
		
		for(CarVO car : carList){
			if(car.getCarId()==carId)
				detail = car;
		}

		CarService service = new CarService();
		session.setAttribute("image", service.selectImages(carId));
		session.setAttribute("detail", detail);
	%>
	<table>
		<tr>
			<td>
				<table>
					<c:forEach var="i" items="${image }">
						<img src="c:/temp/${i.path }/${i.images}">
					</c:forEach>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				${detail.carId }
			</td>
		</tr>
	</table>


	<table>

	</table>
</body>
</html>