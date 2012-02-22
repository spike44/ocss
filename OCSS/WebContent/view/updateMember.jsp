<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""  pageEncoding="UTF-8" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script type="text/javascript">
	$.validator.setDefaults({
		submitHandler : function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		// validate signup form on keyup and submit
		$("#deleteForm").validate({
			rules : {

				password : {
					required : true,
					minlength : 3
				},
				confirm_password : {
					required : true,
					minlength : 3,
					equalTo : "#password"
				},
				email : {
					required : true,
					email : true
				},
				phone : {
					required : true,
					tel : true
				}

			},
			messages : {

				password : {
					required : "비밀번호를 입력해주세요",
					minlength : "비밀번호는 3자 이상이어야 합니다",
				},
				confirm_password : {
					required : "비밀번호를 입력해주세요",
					minlength : "비밀번호는 3자 이상이어야 합니다",
					equalTo : "비밀번호가 서로 다릅니다"
				},
				email : "유효한 이메일 주소를 입력하세요",
				phone : "유효한 휴대전화 번호를 입력하세요"

			}
		});

	});
	function docancel() {
		if($("#currentpower").val()==3) {
			location.href = "ocssMainAdmin.page.tiles";
		}
		else if($("#currentpower").val()==2) {
			location.href = "main.page.tiles";
		}
		else if($("#currentpower").val()==1) {
			location.href = "main.page.tiles";
		}

	}
	function doupdate() {
		document.deleteForm.action = "edit.do";
		document.deleteForm.submit();

	}
	function dodelete() {
		var choice = window.confirm("정말 탈퇴하겠습니가?");
		if(choice==true) {
		document.deleteForm.action = "delete.do";
		document.deleteForm.submit();
		}
		else {

		}

	}

</script>
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
</head>
<body>
<input type="hidden" id="currentpower" value="${login.powerList}"/>
<c:if test="${!empty updatefailed}">
	<script type="text/javascript">
	alert("정보변경에 실패했습니다.");
	</script>
</c:if>
	<div id="left">
		&nbsp;&nbsp;&nbsp;<img src="images/updateMember.jpg" alt="" />
		<p class="pred">※ 정확한 정보를 입력해 주세요.</p>
		<div class="text">
			<br>
				<form id="deleteForm" action="" name="deleteForm" method="post">


						<table width="44%" border="0">
							<tr bgcolor="#8BBED3">
								<td width="52%" colspan="2"><div align="center"
										class="style4 style3"><strong>회원정보수정</strong></div></td>
							</tr>
							<tr>
								<td><div align="center"><strong>아이디</strong></div></td>
								<td width="52%"><input name="memberId" class="style1" id="memberId"
									value="${login.memberId}" readonly="readonly" /></td>
							</tr>
							<tr>
								<td><div align="center"><strong>이름</strong></div></td>
								<td><input name="memberName" type="text" id="memberName"
									value="${login.memberName}" readonly="readonly" /></td>
							</tr>
							<tr>
								<td><div align="center"><strong>비밀번호</strong></div></td>
								<td><input name="password" type="password" id="password" /></td>
							</tr>
							<tr>
								<td><div align="center"><strong>비밀번호 확인</strong></div></td>
								<td><input name="confirm_password"
									type="password" id="confirm_password" /></td>
							</tr>
							<tr>
								<td><div align="center"><strong>이메일</strong></div></td>
								<td><input name="email" type="email" id="email"
									value="${updatefailed.email}" /></td>
							</tr>
							<tr>
								<td><div align="center"><strong>휴대폰번호</strong></div></td>
								<td><input name="phone" type="tel" id="phone"
									value="${updatefailed.phone}" /></td>
							</tr>
							<tr>
								<td colspan="2"><div align="center">
								  <input class="button green medium" type="button" id="updateMember"
									name="updateMember" value="정보수정" onclick="doupdate()" />
								  <input
									class="button green medium" type="button" id="cancel" name="cancel"
									value="취소" onclick="docancel()" />
								  <input class="button red medium" type="button" id="deleteMember"
								name="deleteMember" value="회원탈퇴" onclick="dodelete()" />
							    </div></td>
							</tr>
							</tr>
						</table>
		  </form>
					<c:remove var="updatefailed"/>
			</br>

		</div>
	</div>
</body>
</html>