<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OCSS 허위매물 관리 페이지.</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
</head>
	<body>
		<div id="left">
			<h1>허위매물관리</h1>
		  <div class="text">
			<form id="manageProductForm" name = "manageProductForm" action="" method="post">
				<br />
<table width="100%" border="1" cellpadding="2">
						<tr>
							<td width="10%"><div align="center"><strong>신고자아이디</strong></div></td>
						  <td width="11%"><div align="center"><strong>등록일</strong></div></td>
						  <td width="23%"><div align="center"><strong>제목</strong></div></td>
						  <td width="47%"><div align="center"><strong>내용</strong></div></td>
						  <td width="9%"><div align="center"><strong>차량보기</strong></div></td>
	  </tr>
	  					<c:forEach var="p" items="${notify_list}">
						<tr>
							<td><div align="center">${p.memberId}</div></td>
							<td><div align="center">${p.notifyDate}</div></td>
							<td><div align="center">${p.notifyTitle}</div></td>
							<td><div align="center">${p.notifyContent}</div></td>
                            <td><div align="center"><input type="button" name="carView" value="바로가기" /></div></td>
						</tr>
						</c:forEach>
					</table>
                    <br/>
            </div>
            </form>
		  </div>
					</div>
	<c:remove var="notify_list" />				
	</body>
</html>