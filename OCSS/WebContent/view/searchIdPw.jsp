<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    function dosearchId() {
    document.searchForm.method="POST";	
   	document.searchForm.action="searchId.do";
   	document.searchForm.submit();
    	
    }
    function dosearchPw() {
        document.searchForm.method="POST";	
       	document.searchForm.action="searchPw.do";
       	document.searchForm.submit();
        	
        }
    </script>
</head>

<body>
<c:if test="${!empty resultId}">
	<script type="text/javascript">
	alert("'${resultId}'");
	</script>
<c:remove var="resultId"/>
</c:if>
<c:if test="${!empty resultPw}">
	<script type="text/javascript">
	alert("'${resultPw}'");
	</script>
<c:remove var="resultPw"/>
</c:if>
	<div id="left">
	<form name="searchForm" action="" method="">
		<h1>ID/Password 찾기</h1>
		<p class="pred">※ 판매자는 가입승인 이후에 로그인이 가능합니다.</p>
		<div class="text">
			<br>
			<table width="44%" border="0" align="right">
				<tr>
					<td width="48%" colspan="2"><div align="center" class="style5">Password
							찾기</div></td>
				</tr>
				<tr>
					<td><div align="center">ID</div></td>
					<td width="52%"><input id="memberId" name="memberId" type="text" /></td>
				</tr>
				<tr>
					<td><div align="center">이름</div></td>
					<td><input id="memberName2" name="memberName2" type="text" /></td>
				</tr>
				<tr>
					<td><div align="center">이메일</div></td>
					<td><input id="email2" name="email2" type="email" /></td>
				</tr>
				<tr>
					<td height="26"><div align="center"></div></td>
					<td><input class="button" type="button" name="searchPw"
						value="Password찾기" onclick="dosearchPw()"/></td>
				</tr>
			</table>
			<table width="44%" border="0">
				<tr>
					<td width="48%" colspan="2"><div align="center"
							class="style3 style4">ID 찾기</div></td>
				</tr>
				<tr>
					<td><div align="center">이름</div></td>
					<td width="52%"><input id="memberName" name="memberName" type="text" /></td>
				</tr>
				<tr>
					<td><div align="center">휴대폰번호</div></td>
					<td><input id="phone" name="phone" type="tel" /></td>
				</tr>
				<tr>
					<td><div align="center">이메일</div></td>
					<td><input id="email" name="email" type="email" /></td>
				</tr>
				<tr>
					<td><div align="center"></div></td>
					<td><input class="button" type="button" name="searchId"
						value="ID찾기" onclick="dosearchId()"/></td>
				</tr>
			</table>
			</form>
</body>
</html>