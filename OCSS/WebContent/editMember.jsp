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