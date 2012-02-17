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

				customerid : {
					required : true,
					minlength : 2
				},
				username : "required",
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

				customerid : {
					required : "아이디를 입력해주세요",
					minlength : "아이디는 2자이상 이어야합니다"
				},
				username : "이름을 입력해주세요",
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

	function checkId() {
		$.ajax({
			url : "idcheck.do",
			data : ({
				userid : $("#customerid").val()
			}),
			success : function(data) {
				if (data == "false") {
					alert("중복된 아이디입니다.");

				} else
					alert("사용 가능한 아이디입니다.");
			}
		})
	}

	function join() {
		var re_id = /^[a-z0-9_-]{3,16}$/;
		if ($("#customerid").val().length <= 0)
			alert("아이디 길이 체크체크");
		else if (re_id.test($("#customerid").val()) != true) {
			alert("유효한 아이디가 아닙니다.");
		}
	}
	function fileUplpad() {
		
		location.href="uploadfile.do";
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


		<form class="cmxform" id="signupForm" name= "signupFrom" method="post" enctype="multipart/form-data">

			<fieldset>
				<legend>회원가입 신청서</legend>
				<p>
					<label for="customerid">아이디</label> <input id="customerid"
						name="customerid" /> <input class=button type="button"
						name="idCheck" value="중복확인" onclick="checkId()">
				</p>
				<p>
					<label for="username">이름</label> <input id="username"
						name="username" />
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
						type="email" />
				</p>
				<p>
					<label for="phone">휴대폰</label> <input id="phone" name="phone"
						type="tel" />
				</p>

				<p>
				<fieldset data-role="controlgroup">
					<input type="radio" name="powerList" id="seller" value="choice-1"
						checked="checked" /> <label for="seller">판매자</label> <input
						type="radio" name="powerList" id="buyer" value="choice-2" /> <label
						for="buyer">구매자</label>
				</fieldset>
				</p>
				<p><label for="memberImage">사진</label>
					 <input id="memberImage" name="memberImage" type="file" />
					 <input id="fileUpload" name="btn_file_upload" type="button" value="올리기" onclick="fileUplpad()"/>   
				</p>
				<p>
					<label for="agree">내부 규정에 동의하십니까?</label> <input type="checkbox"
						class="checkbox" id="agree" name="agree" />
				</p>

				<p>
					<input class="button" type="button" name="doJoin" value="회원가입" onclick="join()" />
				</p>
			</fieldset>
		</form>

	</div>
</body>
</html>