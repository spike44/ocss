<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OCSS 회원정보조회 페이지.</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script type="text/javascript">
	function dosearchId() {
		document.searchForm.action = "searchMemberForId.do";
		document.searchForm.submit();

	}
	function dosearchName() {
		document.searchForm.action = "searchMemberForName.do";
		document.searchForm.submit();

	}
	function dosearchPhone() {
		document.searchForm.action = "searchMemberForPhone.do";
		document.searchForm.submit();

	}
	function dosearchEmail() {
		document.searchForm.action = "searchMemberForEmail.do";
		document.searchForm.submit();

	}
	function dosearchPower() {
		document.searchForm.action = "searchMemberForPower.do";
		document.searchForm.submit();

	}
</script>
</head>
<body>

	<c:if test="${!empty listfail}">
		<script type="text/javascript">
			alert("'${listfail}'");
		</script>
		<c:remove var="listfail" />
	</c:if>
	<div id="left">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/selectMember.jpg" alt="" />
<div class="text">
			<form id="searchForm" name="searchForm" method="post" action="">
				<br> 아이디 : <input id="memberId"
							name="memberId" type="text" size="8" /> <input type="button"
					class="button gray medium" name="searchId" value="검색" onclick="dosearchId()" />&nbsp;&nbsp;&nbsp;이름 :
<input id="memberName" name="memberName" type="text"
							size="8" /> <input type="button" name="searchName" value="검색" class ="button gray medium" onclick="dosearchName()" />&nbsp;&nbsp;&nbsp;<br />H.P :
<input id="phone" name="phone" type="text" size="22" /> <input
							type="button" name="searchHP" value="검색"
							onclick="dosearchPhone()" class ="button gray medium"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input id="email" name="email" type="email"
							size="20" /> <input type="button" name="searchemail" value="검색" class="button gray medium"
							onclick="dosearchEmail()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
							<br />회원유형 : <select id="powerList" name="powerList">
								<option value=2>구매자</option>
								<option value=1>판매자</option>
						</select> <input class="button green medium" type="button" name="powerlist" value="검색"
					onclick="dosearchPower()" /> <br /> <br />
				<table width="100%" border="1" cellpadding="2">
					<tr>
						<!-- 							<td width="5%">선택</td> -->
						<td width="18%" bgcolor="#8BBED3"><div align="center"><strong>아이디</strong></div></td>
					  <td width="18%" bgcolor="#8BBED3"><div align="center"><strong>이름</strong></div></td>
					  <td width="18%" bgcolor="#8BBED3"><div align="center"><strong>휴대폰번호</strong></div></td>
					  <td width="18%" bgcolor="#8BBED3"><div align="center"><strong>이메일</strong></div></td>
					  <td width="18%" bgcolor="#8BBED3"><div align="center"><strong>회원유형</strong></div></td>
						<td width="18%">회원상세보기</td>
					</tr>
					<c:forEach var="p" items="${member_list}">
						<tr>
							<td>${p.memberId}</td>
							<td>${p.memberName}</td>
							<td>${p.phone}</td>
							<td>${p.email}</td>
							<td><c:if test="${p.powerList == 1}">판매자</c:if> <c:if
									test="${p.powerList == 2}">구매자</c:if></td>
									<td> <input class="button" type="button" id="memberButton" value="보기" onclick="location.href='detailMember.do?memberId=${p.memberId}'" /></td>
						</tr>
					</c:forEach>
				</table>
			</form>
				<c:remove var="member_list" />
		</div>
	</div>
</body>
</html>