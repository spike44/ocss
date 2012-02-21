<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "disc.ocss.model.*,java.util.*,disc.ocss.dao.*,disc.ocss.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<CarVO> list = new ArrayList<CarVO>();
	list = CarDAO.selectCar(null);
	Car c = new Car();
	for(int i=0;i<120;i++){
		CarVO car = list.get(i);
			c.setPriceEval(car);
			c.setYearEval(car);
			c.setAcciEval(car);
			c.setTotalEval(car);
			CarDAO.updateEval(list.get(i));
		//System.out.println(i);
	}
%>

</body>
</html>