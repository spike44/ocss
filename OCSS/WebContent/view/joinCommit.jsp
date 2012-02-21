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
			<h1>회원가입승인</h1>
		  <div class="text">

				<br />
<table width="100%" border="1" cellpadding="2">
						<tr>
							<td width="8%"><div align="center">선택</div></td>
							<td width="12%"><div align="center">아이디</div></td>
							<td width="9%"><div align="center">이름</div></td>
							<td width="14%"><div align="center">휴대폰번호</div></td>
							<td width="24%"><div align="center">이메일</div></td>
						  <td width="14%"><div align="center">회원유형</div></td>
                            <td width="19%"><div align="center">가입일시</div></td>
					  </tr>
						<tr>
							<td><form id="form1" name="form1" method="post" action="">
									<label>
									<div align="center">
									  <input type="radio" name="radio"
										id="searchChoice" value="joinChoice" />
								    </div>
									</label>
						  </form></td>
							<td><div align="center"></div></td>
							<td><div align="center"></div></td>
							<td><div align="center"></div></td>
							<td><div align="center"></div></td>
							<td><div align="center"></div></td>
                            <td><div align="center"></div></td>
						</tr>
					</table>
  <div align="right"><br/>
                        <br/>
                        <input class="button" type="button" name="joinOk" value="가입승인" />
                       <input class="button" type="button" name="cancel" value="취소" />
                    </div>
		  </div>
					</div>
					</form>
	</body>
</html>