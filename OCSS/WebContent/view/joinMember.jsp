<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""  pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Untitled Document</title>


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

				memberId2 : {
					required : true,
					minlength : 2
				},
				memberName : "required",
				password2 : {
					required : true,
					minlength : 3
				},
				confirm_password : {
					required : true,
					minlength : 3,
					equalTo : "#password2"
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

				memberId2 : {
					required : "아이디를 입력해주세요",
					minlength : "아이디는 2자이상 이어야합니다"
				},
				memberName : "이름을 입력해주세요",
				password2 : {
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
		if ($("#memberId2").val().length <= 0)
			alert("아이디 길이 체크체크");
		else if (re_id.test($("#memberId").val()) != true) {
			alert("유효한 아이디가 아닙니다.");
		}
	}
	function dojoin() {
		document.signupForm.action="join.do";
			document.signupForm.submit();

	}
	function docancel() {
		location.href="main.page.tiles";
	}

	function checkId() {
		$.ajax({
			url : "idcheck.do",
			data : ({
				memberId : "#memberId2"
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
	<form id="signupForm" name= "signupForm" method="post" action="">
	<div id="join">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/joinMember.jpg" alt="" />
		<p class="pred">※ 판매자는 가입승인 이후에 로그인이 가능합니다.</p>
		<div class="text">
			<p>
			<table width="100%" border="0">
				<tr>
				  <td bgcolor="#8BBED3"><div align="center"><strong>아이디</strong></div></td>
					<td><input id="memberId2" name="memberId2" type="text" /> 
					<input "button green medium" type="button" name="idCheck" value="중복확인"
						onclick="checkId()"></td>
				</tr>
				<tr>
				  <td bgcolor="#8BBED3"><div align="center"><strong>이름</strong></div></td>
					<td><input id="memberName" name="memberName" /></td>
				</tr>
				<tr>
				  <td bgcolor="#8BBED3"><div align="center"><strong>비밀번호</strong></div></td>
					<td><input id="password2" name="password2" type="password" /></td>
				</tr>
				<tr>
				  <td bgcolor="#8BBED3"><div align="center"><strong>비밀번호 확인</strong></div></td>
					<td><input id="confirm_password" name="confirm_password" type="password" /></td>
				</tr>
				<tr>
				  <td bgcolor="#8BBED3"><div align="center"><strong>휴대폰번호</strong></div></td>
					<td><input id="phone" name="phone" type="tel" /></td>
				</tr>
				<tr>
				  <td bgcolor="#8BBED3"><div align="center"><strong>이메일</strong></div></td>
					<td><input id="email" name="email" type="email" /></td>
				</tr>
				<tr>
					<td rowspan="2"><div align="center">
						</div>					  <div align="center"></div></td>
					<td><strong>판매자가입
			        <input type="radio" name="powerList" value="1" />   
				    구매자가입
				    <input type="radio" name="powerList" value="2"/>
					</strong></td>
				</tr>
				<tr>
					<td><input name="join" type="button"class="button green medium" id="join"
						value="회원가입" onclick="dojoin()"/> <input class="button red medium" type="button"
						name="cancel" value="취소" onclick="docancel()"/></td>
				</tr>
		  </table>
	  </div>
			</div>
			</form>
</body>
</html>