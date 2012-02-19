<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<div id="left">
		<h1>차량등록</h1>
		<p class="pred">※ 누락항목 없이 모두 입력해 주세요.</p>
		<div class="text">
		</div>
	</div>
	<br> 제목 :
	<input name="insertCarName" type="text" size="90" />
	<br />
	<br /> 브랜드 :
	<select name="brand" >
		<option>제조사</option>
		<option>현대</option>
		<option>기아</option>
		<option>쌍용</option>
		<option>르노삼성</option>
		<option>기타제조사</option>
	</select> 차종 :
	<select name="carType" >
		<option>차종</option>
		<option>i40</option>
		<option>i30</option>
		<option>아반떼HD</option>
		<option>YF쏘나타</option>
		<option>그랜저</option>
	</select> 사고유무
	<select name="isAcci" >
		<option>사고유무</option>
		<option>무</option>
		<option>유</option>
	</select> 변속기
	<select name="isAuto" >
		<option>변속기</option>
		<option>오토</option>
		<option>수동</option>
	</select> 연료
	<select name="fuel" >
		<option>휘발유</option>
		<option>경유</option>
		<option>LPG</option>
	</select>
	<br />
	<br /> 가격 :
	<input name="price" type="text" size="8" id="price"/>만원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	연식 :
	<input name="carYear" type="text" size="9" id="carYear"/>년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	색상 :
	<input name="color" type="text" size="12" id="color"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br /> 지역 :
	<input name="locationList" type="text" size="12" id="locatoinList"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
	<br /> 내용
	<br />
	<textarea name="content" cols="80" rows="20" id="content"></textarea>
	<br /> 사진
	<br />
	<table width="100" border="1" cellpadding="2">
		<tr>
			<td><img src="images/1.jpg" alt="pic1" width="132" height="104" /></td>
			<td><img src="images/2.jpg" alt="pic2" width="132" height="104" /></td>
			<td><img src="images/3.jpg" alt="pic3" width="132" height="104" /></td>
		</tr>
		<tr>
			<td><img src="images/4.jpg" alt="pic4" width="132" height="104" /></td>
			<td><img src="images/5.jpg" alt="pic5" width="132" height="104" /></td>
			<td><img src="images/6.jpg" alt="pic6" width="132" height="104" /></td>
		</tr>
	</table>
	<br />
	<input class="button" type="button" name="ok" value="완료" />
	<br />
	</center>
</body>
</html>