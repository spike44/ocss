<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function gojoin() {
		location.href="join.page.tiles";

	}
	function dologin() {
		document.loginForm.action="login.do";
		document.loginForm.submit();

	}
	function gosearchidpw() {
		location.href="searchIdPw.page.tiles";
	}
	function goedit() {
		location.href="updateMember.page.tiles";

	}
	function dologout() {
		document.loginForm2.action="logout.do";
		document.loginForm2.submit();
	}
	$.validator.setDefaults({
		submitHandler : function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		// validate signup form on keyup and submit
		$("#loginForm").validate({
			rules : {

				memberId : "required",
				password : "required"
			},
			messages : {

				memberId : "아이디를 입력해주세요",
				password : "비밀번호를 입력해주세요"

			}
		});

	});


	</script>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #0000FF;
	font-weight: bold;
}
-->
</style>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>
<body>
<c:if test="${!empty loginfailed}">
	<script type="text/javascript">
	alert("로그인 실패");
	</script>
		<c:remove var="loginfailed" />
	</c:if>
	<c:if test="${empty login}">

		<div id="categories">
			<form id="loginForm" name="loginForm" action="" method="post"
				class="form1">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/MemberLogin.jpg"
					alt="">
				<center>
					<label>&nbsp;&nbsp;&nbsp;I&nbsp;&nbsp;D&nbsp;:&nbsp;&nbsp;</label>
					<input id="memberId" name="memberId" type="text" size="15"
						border="2" placeholder="사용자 아이디" /> <br> <label>Password:</label>
					<input id="password" name="password" type="password" size="15"
						border="2" placeholder="비밀번호" /> <br>
				</center>
				<center>
					<input name="login" type="button" class="button green medium" id="login"
						value="확인" size="15" onClick="dologin()" /> <input name="join"
						type="button" class="button green medium" id="join" value="회원가입" size="15"
						onclick="gojoin()" />
				</center>
								<label class="label1"> <span class="pred">&nbsp;ID,PW를
						잊어버리셧습니까?</span></label>
						<div align="center">
						 <input name="GO" type="button" class="button orange medium" id="GO"
					value="GO" onClick="gosearchidpw()" />
					</div>
			</form>

		</div>
		<div id="partners"></div>
	</c:if>
	<c:if test="${!empty login}">

		<div id="categories">
			<form name="loginForm2" action="" method="post" class="form1">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
					src="images/Welcome.jpg" alt="">
				<center>
					<label><span class="style1">${login.memberName}</span> 님
						환영합니다.</label> <br>
				</center>
				<center>
					<input name="edit" type="button" class="button green medium" id="edit"
						value="회원정보수정" size="15" onClick="goedit()" /> &nbsp; <input
						name="logout" type="button" class="button red medium" id="logout"
						value="로그아웃" size="15" onClick="dologout()" />
				</center>

			</form>
		</div>
		<div id="partners"></div>
	</c:if>
	<br/>
	<center>
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0"
			width="224" height="200" title="flash">
			<param name="movie" value="images/MINI.swf">
			<param name="quality" value="high">
			<embed src="images/MINI.swf" quality="high"
				pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash"
				type="application/x-shockwave-flash" width="224" height="200"></embed>
		</object>
		</center>
</body>
</html>