<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/validate.js" type="text/javascript"></script>
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
					minlength : 6
				},
				confirm_password : {
					required : true,
					minlength : 6,
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
					minlength : "비밀번호는 6자 이상이어야 합니다",
				},
				confirm_password : {
					required : "비밀번호를 입력해주세요",
					minlength : "비밀번호는 6자 이상이어야 합니다",
					equalTo : "비밀번호가 서로 다릅니다"
				},
				email : "유효한 이메일 주소를 입력하세요",
				phone : "유효한 휴대전화 번호를 입력하세요",
				agree : "약관에 동의해주세요"
			}
		});

	});


	function doedit() {
		document.editForm.action="edit.do"
			document.editForm.submit();
		
	}
	
</script>



<style type="text/css">
#signupForm {
	width: 670px;
}

#signupForm label.error {
	margin-left: 10px;
	width: auto;
	display: inline;
}
</style>
</head>

<body>

	<div id="main">


		<form class="cmxform" id="editForm" name= "editForm" method="get">

			<fieldset>
				<legend>회원정보 변경</legend>
				<p>
					<label for="memberId">아이디</label> <input id="memberId"
						name="memberId" readonly="readonly" value="${login.memberId}"/> 
				</p>
				<p>
					<label for="memberName">이름</label> <input id="memberName"
						name="memberName" readonly="readonly" value="${login.memberName}"/>
				</p>
				<p>
					<label for="password">비밀번호</label> <input id="password"
						name="password" type="password" />
				</p>
				<p>
					<label for="confirm_password">비밀번호 확인</label> <input
						id="confirm_password" name="confirm_password" type="password" />
				</p>
				<p>
					<label for="email">이메일</label> <input id="email" name="email"
						type="email" value="${login.email}" />
				</p>
				<p>
					<label for="phone">휴대폰</label> <input id="phone" name="phone"
						type="tel" value="${login.phone}"/>
				</p>

				<p>
					<input class="button" type="button" name="doEdit" value="정보변경" onclick="doedit()" />
				</p>
			</fieldset>
		</form>

	</div>
</body>
</html>