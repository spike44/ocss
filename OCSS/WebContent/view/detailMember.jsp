<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<style type="text/css">
<!--
.style2 {
	color: #FF9900;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
</head>

<body>
	<div id="left">
		<h1>회원정보상세조회</h1>
		<div class="text">
			<br> <br /> <span class="style2">${targetMember.memberName}
					님의 상세정보 내역입니다.</span><br /> <br />
				<table width="100%" border="1" cellpadding="2">
					<tr>
						<td width="13%"><div align="center">
								<strong>아이디</strong>
							</div></td>
						<td width="13%"><div align="center">
								<strong>이름</strong>
							</div></td>
						<td width="13%"><div align="center">
								<strong>휴대폰번호</strong>
							</div></td>
						<td width="13%"><div align="center">
								<strong>이메일</strong>
							</div></td>
						<td width="13%"><div align="center">
								<strong>가입일시</strong>
							</div></td>
						<td width="13%"><div align="center">
								<strong>회원유형</strong>
							</div></td>
					</tr>

					<tr>
						<td><div align="center">${targetMember.memberId}</div></td>
						<td><div align="center">${targetMember.memberName}</div></td>
						<td><div align="center">${targetMember.phone}</div></td>
						<td><div align="center">${targetMember.email}</div></td>
						<td><div align="center">${targetMember.joinDate}</div></td>
						<td><div align="center">
								<c:if test="${targetMember.powerList == 1}">판매자</c:if>
								<c:if test="${targetMember.powerList == 2}">구매자</c:if>
							</div></td>
					</tr>

				</table> <br /> <br /> <br> <br />
				<c:if test="${targetMember.powerList==1}">
				 <span class="style2">${targetMember.memberName}
						님의 판매상품내역입니다.</span><br /> <br />
			<table width="100%" border="1" cellpadding="2">
				<tr>

					<td width="41%"><div align="center">
							<strong>제목</strong>
						</div></td>
					<td width="12%"><div align="center">
							<strong>판매상태여부</strong>
						</div></td>

					<td width="20%"><div align="center">
							<strong>등록일시</strong>
						</div></td>
					<td width="13%"><div align="center">
							<strong>상품보기</strong>
						</div></td>
				</tr>
				<c:forEach var="p" items="${aa}">
					<tr>
						<td><div align="center"></div></td>
						<td><div align="center"></div></td>
						<td><div align="center"></div></td>
						<td>
							<div align="center">
								<input class="button" type="button" name="viewCar" value="바로가기" />
							</div>
						</td>
					</tr>
					</c:forEach>
			</table>
			
			
			</c:if>
			<br />
			<br />
			<c:if test="${targetMember.powerList==2}">
				<span class="style2">${targetMember.memberName} 님의 신고상품내역입니다.</span>
				<br />
				<br />
				<table width="100%" border="1" cellpadding="2">
					<tr>
						<td width="29%"><div align="center">
								<strong>제목</strong>
							</div></td>
						<td width="24%"><div align="center">
								<strong>신고내용</strong>
							</div></td>
						<td width="20%"><div align="center">
								<strong>신고일자</strong>
							</div></td>
						<td width="13%"><div align="center">
								<strong>상품보기</strong>
							</div></td>
					</tr>
					<c:forEach var="p" items="${notifyList}">
						<tr>
							<td><div align="center">${p.notifyTitle}</div></td>
							<td><div align="center">${p.notifyContent}</div></td>
							<td><div align="center">${p.notifyDate}</div></td>
							<td>
								<div align="center">
									<input class="button" type="button" name="viewCar" value="바로가기" />
								</div>
							</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<div align="right">
				<br /> <br /> <input class="button" type="button" name="delete"
					value="회원정보삭제" /> <input class="button" type="button"
					name="cancle" value="취소" />
			</div>
		</div>
	</div>
	<c:remove var="targetMember" />

	<c:remove var="notifyList" />

</body>
</html>
