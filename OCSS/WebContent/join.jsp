<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
</head>

<body>

	<div id="join">
		<h1>회원가입</h1>
		<p class="pred">※ 판매자는 가입승인 이후에 로그인이 가능합니다.</p>
		<div class="text">
			<p>
			<table width="100%" border="0">
				<tr>
					<td><div align="center">아이디</div></td>
					<td><input id="customerid" name="customerid" /> <input
						class=button type="button" name="idCheck" value="중복확인"
						onclick="checkId()"></td>
				</tr>
				<tr>
					<td><div align="center">이름</div></td>
					<td><input id="username" name="username" /></td>
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
					<td><input id="phone" name="phone" type="phone" /></td>
				</tr>
				<tr>
					<td><div align="center">이메일</div></td>
					<td><input id="email" name="email" type="email" /></td>
				</tr>
				<tr>
					<td><div align="center">
							판매자가입<input type="radio" name="가입유형" />
						</div></td>
					<td>구매자가입<input type="radio" name="가입유형" /></td>
				</tr>
				<tr>
					<td><div align="center"></div></td>
					<td><input name="join" type="button" class="botton" id="join"
						value="회원가입" size="15" /> <input class="button" type="button"
						name="cancel" value="취소" /></td>
				</tr>
			</table>
			</div>
			</div>
</body>
</html>