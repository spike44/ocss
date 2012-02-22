<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />		
<script type="text/javascript">
	function docancel() {
		window.alert("약관에 동의하지 않으셧으로 메인페이지로 이동합니다.");
		location.href="ocssMainSeller.page.tiles";
	}
</script>
</head>

<body>
<form name="frm" method="post">
<c:remove var="afilename"/>
<c:remove var="bfilename"/>
<c:remove var="cfilename"/>
<c:remove var="dfilename"/>
<c:remove var="efilename"/>
<c:remove var="ffilename"/>

	<div id="left">
	  &nbsp;&nbsp;&nbsp;&nbsp;<img src="images/insertCar.jpg" alt="" width="97" height="42" />
	  <p class="pred">※ 아래의 내용을 숙지하신후 동의해주세요.</p>
		<div class="text">

		  <div align="center">
		    <textarea name="textarea" cols="70" rows="20">믿고 신뢰할 수 있는 투명한 거래환경을 위하여 실매물이 아닌 차량(허위매물, 미끼매물 등)등록을 제한합니다.
등록 내용에 따른 책임은 판매자에게 있습니다.
제공된 연락처는 제휴서비스 이행을 위해 사용자 인증없이 연락처가 노출될 수 있습니다.
아래와 같은 문제 발생 시 관리자가 임의로 삭제 조치할 수 있으니 내용을 반드시 숙지하시기 바랍니다.

대상:모든 회원예1) 허위매물(허위차량정보, 허위설명글. 차량사진도용)을 등록한 경우
예2) 거래가 불가능한 대포차(명의이전 불가차량)나, 매매부적합 차량을 등록한 경우
예3) 개인ID를 2개 이상 가지고 있는 경우
예4) 판매완료차량을 삭제하지 않는 경우
예5) 차량 메인사진(앞측면)에 차량사진이 아닌 다른 이미지를 등록한 경우
예6) 타사이트 홍보성 문구가 게재된 사진을 등록한 경우
예7) 사이트 특성과 맞지 않는 차량을 등록한 경우(예: 신차광고)
예8) 원본을 과도하게 조작한 사진이나 SK엔카를 사칭하는 표시의 사진을 등록한 경우
예9) 사진에 연락처 기재하여 등록 한 경우
예10) 계절에 맞지 않는 사진을 등록 한 경우
예11) 엔카 워터마크 손상 사진을 등록 한 경우
예12) 기타 SK엔카 관리자의 검열을 통한 원본 사진 요청에 따르지 않는 등 SK엔카 매물 등록 기준에 부합하지 않다고 판단될 경우
예13) 시세와 현저히 차이나는 가격으로 올린 매물의 경우
대상:개인회원예1) 상이한 차량을 동시에 2대 이상 등록한 경우 혹은 여러대 누적으로 등록한 경우
예2) 타인의 차량을 반복적으로 등록한 경우
예3) 차량 설명글, 차량 사진, 판매자 게시판에 회원정보와 상이한 연락처를 기입한 경우
예4) 소유기간 6개월의 본인명의 또는 관리자에 의해 확인된 가족명의 차량이 아닌 경우
대상:반복사용자/매매업자예1) 개인ID로 매물을 등록한 경우
조치내용등록비 등 일체의 비용을 환불 받으실 수 없습니다.
불량 이용자로 공개되어 이용이 제한될 수 있습니다.
내용 확인을 위하여 차량등록증 확인이 있을 수 있습니다.
허위매물 등록 시 이용제한기준에 따라 처리됩니다. [자세히보기]
            </textarea>
		    <br/>
		    <br />

		    <input class="button green medium" type="button" name="agree" value="동의합니다" onclick="location.href='insertCar.page.tiles'"/>&nbsp;&nbsp;
		    <input class="button red medium" type="button" name="noAgree" value="동의하지 않습니다" onclick="docancel()"/>
		    <br />
	          </div>
	  </div>
	</div>
	</form>
</body>
</html>