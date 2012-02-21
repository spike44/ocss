<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page
	import="java.io.*,java.util.*,disc.ocss.model.*,disc.ocss.service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">

function insertComm(){
	document.frm.action = "insertcomm.do";
	document.frm.submit();
}

function deleteComm(commentId,carId){
	yes = confirm("댓글을 삭제하시겠습니까?");
	"C:/Users/yuni/Desktop/test.java"
	if(yes){
		document.frm.action = "deletecomm.do?commentId="+commentId+"&carId="+carId;
		document.frm.submit();
	}
}

function insertNotify(carId){
	document.frm.action = "insertnotify.do?carId="+carId;
	document.frm.submit();
}
</script>

<title>Insert title here</title>
</head>
<body>
<form name="frm" method="POST">
	<%
		ArrayList<CarVO> carList = (ArrayList<CarVO>) session.getAttribute("carList");
		int carId = Integer.parseInt(request.getParameter("carId"));
		CarVO detail = new CarVO();

		for(CarVO car : carList){
			if(car.getCarId()==carId)
				detail = car;
		}

		CarImagesService service = new CarImagesService();
		session.setAttribute("image", service.selectImages(carId));
		session.setAttribute("detail", detail);
		
		CommService comService = new CommService();
		session.setAttribute("comm", comService.selectComm(carId));
		
		MemberVO member = new MemberVO();
		member.setMemberId("m001");
		System.out.println(member.getMemberId());
		session.setAttribute("login", member);
	%>
	<table>
		<tr>
			<td>
				<table>
					<c:forEach var="i" items="${image }">
						<img src="${i.images}">
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
	<input type="button" onclick="insertNotify()" value="신고"> 
	
	<textarea rows="2" cols="50" id="comment" name="comment"></textarea>
	<input type="button" onclick="insertComm()" value="등록">
	
	<table>
		<c:forEach var="c" items="${comm }">
			<tr>
				<td>${c.memberId }
				</td>
				<td>${c.contentDal }</td>
				<td>${c.commentDate }</td>
				<td>
					<c:if test="${login.memberId == c.memberId }">
						<a href="javascript:deleteComm(${c.commentId },${detail.carId })">삭제</a>
					</c:if>
				</td>
				
			</tr>
		</c:forEach>
	</table>
	</form>
</body>
</html>