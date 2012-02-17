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
	/* $(document).ready(function (){
		document.frm.action = "select.do?sel=brand";
		document.frm.submit();
	}); */
	
	function getSeondCategory(){
		document.frm.action = "cartype.do?sel="+$("#first_category").val();
		document.frm.submit();
	}
	
	function ChangeCategory(){
		$("#test").val($("#second").val());
	}
	
	function brand(brand){
		document.frm.action = "cartype.do?sel="+brand;
		document.frm.submit();
	}
</script>
</head>
<body>
<form name="frm" method="POST">
 <select name="first_category" id="first_category"
		onChange="getSeondCategory()" size=10>
		<option value="default">차종</option>
		<option value="현대">현대자동차</option>
		<option value="기아">기아자동차</option>
		<option value="GM대우/쉐보레">GM대우</option>
		<option value="르노삼성">르노삼성</option>
		<option value="쌍용">쌍용</option>
	</select>
	
	<select name="first_category" id="second"
		onChange="ChangeCategory()" size=10>
		<option value="default">촤하하하하</option>
	 <c:forEach var="t" items="${type }">
	 	<option value=${t }>${t }</option>
	</c:forEach>
	<c:remove var="type"/>
	</select>
	
	<!-- <input type="text" id="test"> -->
	<input type="hidden" id="type">
	<%-- <table border="1">
		<tr>
			<td>제조사</td>
			<td>모델</td>
		</tr>
		<tr>
			<td>
				<a href="javascript:brand('현대');">현대</a><br>
				<a href="javascript:brand('기아');">기아</a><br>
				<a href="javascript:brand('GM대우/쉐보레');">GM대우/쉐보레</a><br>
				<a href="javascript:brand('르노삼성');">르노삼성</a><br>
				<a href="javascript:brand('쌍용');">쌍용</a><br>
			</td>
			<td>
				<c:forEach var="t" items="${type }">
					${t }<br>
				</c:forEach>
				<c:remove var="type"/>
			</td>
		</tr>
	</table> --%>
</form>
</body>
</html>