<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<script type="text/javascript">
		getFirstCategory();
	</script>
</c:if>
	<input type="hidden" id="brand" value=${sel }>
	<input type="hidden" id="type">
	
	<select name="first_category" id="first"
	onChange="getSeondCategory()" size=6>
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
	
	<select name="second_category" id="second"
		onChange="ChangeCategory()" size=6>
	<c:if test="${!empty type } "></c:if>
	 <c:forEach var="t" items="${type }">
	 	<option value=${t }>${t }</option>
	</c:forEach>
	<c:remove var="type"/>
	</select>
</form>
</body>
</html>