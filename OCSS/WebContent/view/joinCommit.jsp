<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OCSS 회원정보조회 페이지.</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script type="text/javascript">
	function docancel() {

		location.href = "ocssMainAdmin.page.tiles";
	}

	function docommit() {

		var sel = $("#radio").val();
		document.commitForm.action = "commit.do?memberId="+sel;
		document.commitForm.submit();
	}

	</script>
</head>
	<body>
<c:if test="${!empty resultcommit}">
	<script type="text/javascript">
	alert("'${resultcommit}'");
	</script>
<c:remove var="resultcommit"/>
</c:if>

		<div id="left">
		<form action="" method="post" id="commitForm" name ="commitForm" >
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/joinCommit.jpg" alt="" />
		  <div class="text">

				<br />
<table width="100%" border="1" cellpadding="2">
						<tr>
							<td width="9%"><div align="center"><strong>선택</strong></div></td>
						  <td width="14%"><div align="center"><strong>아이디</strong></div></td>
						  <td width="18%"><div align="center"><strong>이름</strong></div></td>
						  <td width="13%"><div align="center"><strong>휴대폰번호</strong></div></td>
						  <td width="22%"><div align="center"><strong>이메일</strong></div></td>
						  <td width="13%"><div align="center"><strong>회원유형</strong></div></td>
                            <td width="14%"><div align="center"><strong>가입일시</strong></div></td>
					  </tr>
					  <c:forEach var="p" items="${prejoin_list}">
						<tr>
							<td>
									<label>
									<div align="center">
									  <input type="radio" id= "radio" name="radio"
										 value="${p.memberId}" />
								    </div>
									</label>						</td>
							<td><div align="center">${p.memberId}</div></td>
							<td><div align="center">${p.memberName}</div></td>
							<td><div align="center">${p.phone}</div></td>
							<td><div align="center">${p.email}</div></td>
							<td><div align="center"><c:if test="${p.powerList == 1}">판매자</c:if> <c:if
									test="${p.powerList == 2}">구매자</c:if></div></td>
                            <td><div align="center">${p.joinDate}</div></td>
						</tr>
						</c:forEach>
					</table>
<div align="right"><br/>
                        <br/>
                        <input class="button green medium" type="button" name="joinOk" value="가입승인" onclick="docommit()"/>
                       <input class="button red medium" type="button" name="cancel" value="취소" onclick="docancel()"/>

                    </div>

		  </div>
		   	</form>
					</div>
			<c:remove var="prejoin_list" />
	</body>


</html>