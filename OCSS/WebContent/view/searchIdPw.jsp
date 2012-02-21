<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider();
	});
	function dosearchId() {
		document.searchForm.method = "POST";
		document.searchForm.action = "searchId.do";
		document.searchForm.submit();

	}
	function dosearchPw() {
		document.searchForm.method = "POST";
		document.searchForm.action = "searchPw.do";
		document.searchForm.submit();

	}
</script>
</head>

<body>
	<c:if test="${!empty resultId}">
		<script type="text/javascript">
			alert("'${resultId}'");
		</script>
		<c:remove var="resultId" />
	</c:if>
	<c:if test="${!empty resultPw}">
		<script type="text/javascript">
			alert("'${resultPw}'");
		</script>
		<c:remove var="resultPw" />
	</c:if>
	<div id="left">
		<form name="searchForm" action="" method="">
			&nbsp;&nbsp;&nbsp;<img src="images/serchIdPw.jpg" alt="" />
			<p class="pred">※ 판매자는 가입승인 이후에 로그인이 가능합니다.</p>
			<div class="text">
				<br>
					<table width="26%" border="0" align="right">
						<tr bgcolor="#8BBED3">
							<td width="48%" colspan="2" bgcolor="#8BBED3"><div
									align="center">
									<div align="center">
										<strong>Password 찾기</strong>
									</div>
								</div></td>
						</tr>
						<tr>
							<td><div align="center">
									<strong>ID</strong>
								</div></td>
							<td width="52%"><div align="center">
									<strong> <input id="memberId" name="memberId"
										type="text" />
									</strong>
								</div></td>
						</tr>
						<tr>
							<td><div align="center">
									<strong>이름</strong>
								</div></td>
							<td><div align="center">
									<strong> <input id="memberName2" name="memberName2"
										type="text" />
									</strong>
								</div></td>
						</tr>
						<tr>
							<td><div align="center">
									<strong>이메일</strong>
								</div></td>
							<td><div align="center">
									<strong> <input id="email2" name="email2" type="email" />
									</strong>
								</div></td>
						</tr>
						<tr>
							<td height="26" colspan="2">
								<div align="center">
									<strong> <input class="button green medium"
										type="button" name="searchPw" value="Password찾기"
										onclick="dosearchPw()" />
									</strong>
								</div>
							</td>
						</tr>
					</table>
					<br />
					<table width="26%" border="0">
						<tr>
							<td colspan="2" bgcolor="#8BBED3"><div align="center">
									<div align="center">
										<strong>ID 찾기</strong>
									</div>
								</div></td>
						</tr>
						<tr>
							<td width="35%"><div align="center">
									<strong>이름</strong>
								</div></td>
							<td width="65%"><div align="center">
									<strong> <input id="memberName" name="memberName"
										type="text" />
									</strong>
								</div></td>
						</tr>
						<tr>
							<td><div align="center">
									<strong>휴대폰번호</strong>
								</div></td>
							<td><div align="center">
									<strong> <input id="phone" name="phone" type="tel" />
									</strong>
								</div></td>
						</tr>
						<tr>
							<td><div align="center">
									<strong>이메일</strong>
								</div></td>
							<td><div align="center">
									<strong> <input id="email" name="email" type="email" />
									</strong>
								</div></td>
						</tr>
						<tr>
							<td colspan="2"><div align="center"></div>
								<div align="center">
									<input class="button green medium" type="button"
										name="searchId" value="ID찾기" onclick="dosearchId()" />
								</div></td>
						</tr>
					</table>
					<br />
				<br />
		</form>
</body>
</html>