<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="../css/nivo-slider.css" type="text/css"media="screen" />
<link href="../css/styles.css" rel="stylesheet" type="text/css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		$("#img_main img").before("<img src='"+$(this).attr("href")+"' alt='' width='500px' height='500px'>");
		$("#img_main img:last").fadeOut("fast",function(){
			$(this).remove();
		});
		return false;
	});
});
		</script>
	</head>
	<body>
		&nbsp;&nbsp;&nbsp;<img src="OCSS/images/detailCar.jpg" alt=""><br>
	<div class="text">
        &nbsp;&nbsp;&nbsp;&nbsp;제목 : <span class="style3">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</span><br>
        <div align="right">OCSS평가 : <span class="style1">XXX점</span>           판매가 : <span class="style2">2000만원</span> </div>
<div id="img_container">
</div>
			<div id="img_navi">
				<ul>

							<li><a href="images/photo1.jpg"><img src="images/photo1_thum.jpg" alt="��������" width ="110px" /></a></li>
							<li><a href="images/photo2.jpg"><img src="images/photo2_thum.jpg" alt="���"  width ="110px" /></a></li>
							<li><a href="images/photo3.jpg"><img src="images/photo3_thum.jpg" alt="�ٴ�"  width ="110px" /></a></li>
							<li><a href="images/photo4.jpg"><img src="images/photo4_thum.jpg" alt="��"  width ="110px" /></a></li>
							<li><a href="images/photo5.jpg"><img src="images/photo5_thum.jpg" alt="�ٴ�"  width ="110px" /></a></li>
							<li><a href="images/photo6.jpg"><img src="images/photo6_thum.jpg" alt="�ھ�ȭ"  width ="110px" /></a></li>

				</ul>
			</div>
			<div id="img_main">
				<img src="images/photo1.jpg" alt="" width='500px' height='530px'/>			</div>



</div>
    <table width="47%" border="1" align="center" cellpadding="2">
  <tr>
    <td width="16%" bgcolor="#FFFF99"><div align="center" class="style3">제조사</div></td>
    <td width="16%"><div align="center"></div></td>
    <td width="16%" bgcolor="#FFFF99"><div align="center" class="style3">모델</div></td>
    <td width="16%"><div align="center"></div></td>
    <td width="16%" bgcolor="#FFFF99"><div align="center" class="style3">가격</div></td>
    <td width="16%"><div align="center"></div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFF99"><div align="center" class="style3">연식</div></td>
    <td><div align="center"></div></td>
    <td bgcolor="#FFFF99"><div align="center" class="style3">사고유무</div></td>
    <td><div align="center"></div></td>
    <td bgcolor="#FFFF99"><div align="center" class="style3">변속기</div></td>
    <td><div align="center"></div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFF99"><div align="center" class="style3">연료</div></td>
    <td><div align="center"></div></td>
    <td bgcolor="#FFFF99"><div align="center" class="style3">색상</div></td>
    <td><div align="center"></div></td>
    <td bgcolor="#FFFF99"><div align="center" class="style3">지역</div></td>
    <td><div align="center"></div></td>
  </tr>
</table>
        <br/>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용<br/>
          <div align="center">
  <textarea name="" cols="80" rows="8"></textarea>
    </div>
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글<br/>
    <div align="center">
    <table width="47%" border="1" cellpadding="2">
  <tr>
    <td width="12%"><div align="center" class="style3">아이디</div></td>
    <td width="13%"><div align="center" class="style3">등록일</div></td>
    <td width="60%"><div align="center" class="style3">내용</div></td>
    <td width="15%"><div align="center" class="style3">회원유형</div></td>
  </tr>
  <tr>
    <td><div align="center">&nbsp;</div></td>
    <td><div align="center">&nbsp;</div></td>
    <td><div align="center">&nbsp;</div></td>
    <td><div align="center">&nbsp;</div></td>
  </tr>
</table>
<br/>
          <div align="center">
  <textarea name="" cols="60" rows="3"></textarea>
    <input name="" type="button" value="등록하기"></div>
    </div>
    <br/>
    <div align="center">
    <input name="" type="button" value="구매신청">&nbsp;
    <input name="" type="button" value="신고하기">&nbsp;
    <input name="" type="button" value="관심상품등록"><br/>
    </div>
	</body><br/>
</html>