<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="js/validate.js" type="text/javascript"></script>

	<script type="text/javascript" src="/OCSS/js/jquery.js"></script>

<script type="text/javascript">
function openImage(num){
	img = window.open('insertImage.jsp?num='+num,'OCSS','width=300, height=150');
}
function closeImage(){
	alert("사진 등록이 완료되었습니다.");
	window.close();
}
</script>
</head>
<body>
<center>
<br /> 사진
	<br />
		<table width="100" border="1" cellpadding="2">
		<tr>
			<c:if test="${empty afilename }">
			<td><a href="javascript:openImage('a')"><img src="/OCSS/images/1.jpg" alt="pic1" width="132" height="104" /></a>
			</td>
			</c:if>
			<c:if test="${!empty afilename }">
			<td><a href="javascript:openImage('a')"><img src="/OCSS/${afilename}" alt="pic1" width="132" height="104" /></a>
			</td>
			</c:if>
			<c:if test="${empty bfilename }">
			<td><a href="javascript:openImage('b')"><img src="/OCSS/images/2.jpg" alt="pic2" width="132" height="104"/></a></td>
			</c:if>
			<c:if test="${!empty bfilename }">
			<td><a href="javascript:openImage('b')"><img src="/OCSS/${bfilename}" alt="pic2" width="132" height="104"/></a></td>
			</c:if>
			<c:if test="${empty cfilename }">
			<td><a href="javascript:openImage('c')"><img src="/OCSS/images/3.jpg" alt="pic3" width="132" height="104" /></a></td>
			</c:if>
			<c:if test="${!empty cfilename }">
			<td><a href="javascript:openImage('c')"><img src="/OCSS/${cfilename}" alt="pic3" width="132" height="104" /></a></td>
			</c:if>
		</tr>
		<tr>
			<c:if test="${empty dfilename }">
			<td><a href="javascript:openImage('d')"><img src="/OCSS/images/4.jpg" alt="pic4" width="132" height="104" /></a></td>
			</c:if>
			<c:if test="${!empty dfilename }">
			<td><a href="javascript:openImage('d')"><img src="/OCSS/${dfilename}" alt="pic4" width="132" height="104" /></a></td>
			</c:if>
			<c:if test="${empty efilename }">
			<td><a href="javascript:openImage('e')"><img src="/OCSS/images/5.jpg" alt="pic5" width="132" height="104" /></a></td>
			</c:if>
			<c:if test="${!empty efilename }">
			<td><a href="javascript:openImage('e')"><img src="/OCSS/${efilename}" alt="pic5" width="132" height="104" /></a></td>
			</c:if>
			<c:if test="${empty ffilename }">
			<td><a href="javascript:openImage('f')"><img src="/OCSS/images/6.jpg" alt="pic6" width="132" height="104" /></a></td>
			</c:if>
			<c:if test="${!empty ffilename }">
			<td><a href="javascript:openImage('f')"><img src="/OCSS/${ffilename}" alt="pic6" width="132" height="104" /></a></td>
			</c:if>
		</tr>
	</table>
	<input type="button" value="사진등록" onclick="javascript:closeImage()">
	</center>
</body>
</html>
