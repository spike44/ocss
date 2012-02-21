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
		<h1>회원정보조회</h1>
		<div class="text">
			<form id="searchForm" name="searchForm" method="post" action="">
				<br> <br><br> 아이디 : <input id="memberId"
							name="memberId" type="text" size="8" /> <input type="button"
							name="searchId" value="검색" onclick="dosearchId()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							이름 : <input id="memberName" name="memberName" type="text"
							size="8" /> <input type="button" name="searchName" value="검색"
							onclick="dosearchName()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							H.P : <input id="phone" name="phone" type="text" size="22" /> <input
							type="button" name="searchHP" value="검색"
							onclick="dosearchPhone()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<br /> <br />이메일 : <input id="email" name="email" type="email"
							size="30" /> <input type="button" name="searchemail" value="검색"
							onclick="dosearchEmail()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
							<br />회원유형 : <select id="powerList" name="powerList">
								<option value=2>구매자</option>
								<option value=1>판매자</option>
						</select> <input class="button" type="button" name="powerlist" value="검색"
					onclick="dosearchPower()" /> <br /> <br />
				<table width="100%" border="1" cellpadding="2">
					<tr>
						<!-- 							<td width="5%">선택</td> -->
						<td width="18%">아이디</td>
						<td width="18%">이름</td>
						<td width="18%">휴대폰번호</td>
						<td width="18%">이메일</td>
						<td width="18%">회원유형</td>
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