<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OCSS 판매차량관리페이지.</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script type="text/javascript">
	function detailCar(carId) {
		location.href="detailcar.do?carId="+carId;	
	}
	
	function changeSelling(){
		alert("판매완료되었습니다.");
		document.frm.action = "updateselling.do";
		document.frm.submit();
	}
	
	function deleteCar(){
		 yes = confirm("정말로 삭제하시겠습니까?");
		if(yes){
			document.frm.action = "deletecar.do";
			document.frm.submit();
		}
	}
	
</script>
</head>
	<body>
	<form name="frm" method="post">
		<div id="left">
			<h1>판매차량관리</h1>
		    <div class="text">

				<br />
<table width="100%" border="1" cellpadding="2">
						<tr>
						  <td width="7%"><div align="center">
						    <p><strong>선택</strong></p>
						    <p><strong>항목</strong></p>
						  </div></td>
						  <td width="14%"><div align="center"><strong>판매상태</strong></div></td>
						  <td width="29%"><div align="center"><strong>제목</strong></div></td>
						  <td width="11%"><div align="center">
						    <p><strong>구매</strong></p>
						    <p><strong>요청자</strong></p>
						  </div></td>
						  <td width="17%"><div align="center">
						    <p><strong>판매차량</strong></p>
						    <p><strong>사진</strong></p>
						  </div></td>
						  <td width="10%"><div align="center">
						    <p><strong>등록</strong></p>
						    <p><strong>일시</strong></p>
						  </div></td>
						  <td width="12%"><div align="center"><strong>상품보기</strong></div></td>
	  </tr>
	 				 <c:forEach var="c" items="${ carList}">
						<tr>
							<td><div align="center">
							    <label>
							      <input type="checkbox" name="checkSellCar" id="${c.carId }" value="${c.carId }" />
						        </label>
							  </div></td>
							<td><div align="center">${c.sellingStatus}</div></td>
							<td><div align="center">${c.title }</div></td>
							<td><div align="center"></div></td>
                            <td><div align="center">
                            	<c:forEach var="i" items="${imgList }">
                            		<c:if test="${i.carId == c.carId }">
										<img src="${i.images }" width="100" height="100"/>                            		
                            		</c:if>
                            	</c:forEach>
                            </div></td>
                            <td><div align="center">${c.carDate }</div></td>
                            <td><div align="center">
                            <input type="button" name="carView" value="바로가기" onclick="javascript:detailCar(${c.carId})"/></div></td>
						</tr>
						</c:forEach>
					</table>
                    <div align="center">
                      <p><br/>
                        <input type="button" name="sellOk" value="판매완료" onclick="javascript:changeSelling()"/>
                        &nbsp;&nbsp;
                        <input type="button" name="sellCancel" value="판매취소" onclick='javascript:deleteCar()' />
                      </p>
                      <p>&nbsp;                        </p>
                    </div>
		    </div>
		  </div>
					</div>
 </form>                   
	</body>
</html>