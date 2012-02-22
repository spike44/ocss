<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="/OCSS/css/nivo-slider.css" type="text/css"media="screen" />
<link href="/OCSS/css/styles.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
}
.style2 {
	color: #FF6600;
	font-weight: bold;
}
.style3 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
<head>
<script type="text/javascript">
$(function(){
	$("#img_navi a").click(function(){
		$("#img_main img").before("<img src='/OCSS/"+$(this).attr("href")+"' alt='' width='500px' height='500px'>");
		$("#img_main img:last").fadeOut("fast",function(){
			$(this).remove();
		});
		return false;
	});
});

function insertComm(){
	if($("#login").val().length<=0){
		alert("로그인을 하셔야 댓글 등록이 가능합니다.");
	}
	else{
		document.frm.action = "insertcomm.do";
		document.frm.submit();
	}
}

function deleteComm(commentId,carId){
	yes = confirm("댓글을 삭제하시겠습니까?");
	if(yes){
		document.frm.action = "deletecomm.do?commentId="+commentId+"&carId="+carId;
		document.frm.submit();
	}
}

function insertNotify(carId){
	document.frm.action = "preInsertNotify.do?carId="+carId;
	document.frm.submit();
}
		</script>
	</head>
	<body>
	
	<form name="frm" method="post">
	<input type="hidden" id="login" value="${login.memberId }">
	
		&nbsp;&nbsp;&nbsp;<img src="/OCSS/images/detailCar.jpg" alt=""><br>
	<div class="text">
        &nbsp;&nbsp;&nbsp;&nbsp;제목 : <span class="style3">${detail.title }</span><br>
        <div align="right">OCSS평가 : <span class="style1">${detail.totalEval }점</span>           판매가 : <span class="style2">${detail.price }만원</span> </div>
<div id="img_container">
</div>
			<div id="img_navi">
				<ul>
						<c:forEach var="i" items="${image }">
							<li><a href="${i.images }"><img src="/OCSS/${i.images }"  width ="110px" height="80px"/></a></li>
						</c:forEach>
				</ul>
			</div>
			<div id="img_main">
				<img src="${main.images }" alt="" width='500px' height='530px'/>
			</div>



</div>
    <table width="47%" border="1" align="center" cellpadding="2">
  <tr>
    <td width="16%" bgcolor="#FFFF99"><div align="center" class="style3">제조사</div></td>
    <td width="16%"><div align="center">${bt.brand }</div></td>
    <td width="16%" bgcolor="#FFFF99"><div align="center" class="style3">모델</div></td>
    <td width="16%"><div align="center">${bt.carType}</div></td>
    <td width="16%" bgcolor="#FFFF99"><div align="center" class="style3">가격</div></td>
    <td width="16%"><div align="center">${detail.price }</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFF99"><div align="center" class="style3">연식</div></td>
    <td><div align="center">${detail.carYear }</div></td>
    <td bgcolor="#FFFF99"><div align="center" class="style3">사고유무</div></td>
    <td><div align="center"><c:if test="${detail.isAcci == 1}">무</c:if> <c:if
									test="${detail.isAcci == 0}">유</c:if></div></td>
    <td bgcolor="#FFFF99"><div align="center" class="style3">변속기</div></td>
    <td><div align="center"><c:if test="${detail.isAuto == 1}">자동</c:if> <c:if
									test="${detail.isAuto == 2}">수동</c:if></div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFF99"><div align="center" class="style3">연료</div></td>
    <td><div align="center"><c:if test="${detail.fuel == 1}">휘발유</c:if> <c:if
									test="${detail.fuel == 2}">경유</c:if><c:if
									test="${detail.fuel == 3}">LPG</c:if></div></td>
    <td bgcolor="#FFFF99"><div align="center" class="style3">색상</div></td>
    <td><div align="center">${detail.color }</div></td>
    <td bgcolor="#FFFF99"><div align="center" class="style3">지역</div></td>
    <td><div align="center">${detail.locationList}</div></td>
  </tr>
</table>
        <br/>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용<br/>
          <div align="center">
  <textarea name="" cols="80" rows="8">${detail.carDesc }</textarea>
    </div>
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글<br/>
    <div align="center">
    <table width="47%" border="1" cellpadding="2">
   
  <tr>
    <td width="12%"><div align="center" class="style3">아이디</div></td>
    <td width="13%"><div align="center" class="style3">등록일</div></td>
    <td width="60%"><div align="center" class="style3">내용</div></td>
    <td width="15%"><div align="center" class="style3">댓글삭제</div></td>
  </tr>
   <c:forEach var="c" items="${ comm}">
  <tr>
    <td><div align="center">${c.memberId }</div></td>
    <td><div align="center">${c.commentDate }</div></td>
    <td><div align="center">${c.contentDal }</div></td>
    <td><div align="center"><input name="" type="button" value="삭제" onclick="deleteComm(${c.commentId },${detail.carId})"></div></td>
  </tr>
  </c:forEach>
</table>
<br/>
          <div align="center">
  <textarea name="comment" cols="60" rows="3" id="comment"></textarea>
    <input onclick="insertComm()" type="button" value="등록하기"></div>
    </div>
    <br/>
    <div align="center">
    <input name="" type="button" value="구매신청">&nbsp;
    <input name="" type="button" value="신고하기" onclick="insertNotify(${detail.carId})">&nbsp;
    <input name="" type="button" value="관심상품등록"><br/>
    </div>
    </form>
  <c:remove var="comm" /> 
	</body><br/>
</html>