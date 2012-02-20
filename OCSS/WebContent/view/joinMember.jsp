<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""  pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Untitled Document</title>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/validate.js" type="text/javascript"></script>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"media="screen" />


<script type="text/javascript">
	$.validator.setDefaults({
		submitHandler : function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		// validate signup form on keyup and submit
		$("#signupForm").validate({
			rules : {

				memberId : {
					required : true,
					minlength : 2
				},
				memberName : "required",
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
				},
				agree : "required"
			},
			messages : {

				memberId : {
					required : "아이디를 입력해주세요",
					minlength : "아이디는 2자이상 이어야합니다"
				},
				memberName : "이름을 입력해주세요",
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
				phone : "유효한 휴대전화 번호를 입력하세요",
				agree : "약관에 동의해주세요"
			}
		});

	});


	function join() {
		var re_id = /^[a-z0-9_-]{3,16}$/;
		if ($("#memberId").val().length <= 0)
			alert("아이디 길이 체크체크");
		else if (re_id.test($("#memberId").val()) != true) {
			alert("유효한 아이디가 아닙니다.");
		}
	}
	function dojoin() {
		document.signupForm.action="join.do"
			document.signupForm.submit();
		
	}
	function docancel() {
		location.href="main.page.tiles";
	}

	function checkId() {
		$.ajax({
			url : "idcheck.do",
			data : ({
				memberId : $("#memberId").val()
			}),
			success : function(data) {
				if (data == "false") {
					alert("중복된 아이디입니다.");

				} else
					alert("사용 가능한 아이디입니다.");
			}
		});
	}
    </script>
</head>

<body>
	<form class="cmxform" id="signupForm" name= "signupForm" method="post">
	<div id="join">
		<h1>회원가입</h1>
		<p class="pred">※ 판매자는 가입승인 이후에 로그인이 가능합니다.</p>
		<div class="text">
			<p>
			<table width="100%" border="0">
				<tr>
					<td><div align="center">아이디</div></td>
					<td><input id="memberId" name="memberId" /> <input
						class=button type="button" name="idCheck" value="중복확인"
						onclick="checkId()"></td>
				</tr>
				<tr>
					<td><div align="center">이름</div></td>
					<td><input id="memberName" name="memberName" /></td>
				</tr>
				<tr>
					<td><div align="center">비밀번호</div></td>
					<td><input id="password" name="password" type="password" /></td>
				</tr>
				<tr>
					<td><div align="center">비밀번호 확인</div></td>
					<td><input id="confirm_password" name="confirm_password"
						type="password" /></td>
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
					<td><div align="center">
							판매자가입<input type="radio" name="powerList" value="1" />
						</div></td>
					<td>구매자가입<input type="radio" name="powerList" value="2"/></td>
				</tr>
				<tr>
					<td><div align="center"></div></td>
					<td><input name="join" type="button" class="botton" id="join"
						value="회원가입" size="15" onclick="dojoin()"/> <input class="button" type="button"
						name="cancel" value="취소" onclick="docancel()"/></td>
				</tr>
			</table>
			</div>
			</div>
			</form>
</body>
</html>