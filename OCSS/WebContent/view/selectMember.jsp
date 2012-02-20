<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OCSS 회원정보조회 페이지.</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
</head>
	<body>
		<div id="left">
			<h1>회원정보조회</h1>
			<div class="text">
				<br> <br><br>
				이름 : <input name="name" type="text" size="8" />
				<input type="button" name="searchName" value="검색" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					H.P : <input name="hp" type="text" size="22" />
					<input type="button" name="searchHP" value="검색" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<br/><br/>이메일 : <input name="email" type="text" size="30" />
					<input type="button" name="searchemail" value="검색" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
					<br/>회원유형 : <select name="powerlist">
						<option>구매자</option>
						<option>판매자</option>
				</select> <input class="button" type="button" name="powerlist" value="검색" />
					<br />
				<br />
					<table width="100%" border="1" cellpadding="2">
						<tr>
<!-- 							<td width="5%">선택</td> -->
							<td width="18%">아이디</td>
							<td width="18%">이름</td>
							<td width="18%">휴대폰번호</td>
							<td width="18%">이메일</td>
							<td width="18%">회원유형</td>
						</tr>
						<tr>
<!-- 							<td><form id="form1" name="form1" method="post" action=""> -->
<!-- 									<label> <input type="radio" name="radio" -->
<!-- 										id="searchChoice" value="searchChoice" /> -->
<!-- 									</label> -->
<!-- 								</form></td> -->
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</table>
					</div>
					</div>
	</body>
</html>