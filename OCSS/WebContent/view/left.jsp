<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${!empty join}">
	<script type="text/javascript">
	alert("'${join}'");
	</script>
<c:remove var="join"/>
</c:if>
<c:if test="${!empty resultdelete}">
	<script type="text/javascript">
	alert("'${resultdelete}'");
	</script>
<c:remove var="resultdelete"/>
</c:if>
<c:if test="${!empty edit}">
	<script type="text/javascript">
	alert("'${edit}'");
	</script>
<c:remove var="edit"/>
</c:if>
<c:if test="${!empty commit}">
	<script type="text/javascript">
	alert("'${commit}'");
	</script>
<c:remove var="commit"/>
</c:if>
<c:if test="${!empty prelistfail}">
	<script type="text/javascript">
	alert("'${prelistfail}'");
	</script>
<c:remove var="prelistfail"/>
</c:if>
<c:if test="${!empty notifyfail}">
	<script type="text/javascript">
	alert("'${notifyfail}'");
	</script>
<c:remove var="notifyfail"/>
</c:if>
<c:if test="${!empty resultnotify}">
	<script type="text/javascript">
	alert("'${resultnotify}'");
	</script>
<c:remove var="resultnotify"/>
</c:if>
          	<div id="left">
			&nbsp;&nbsp;<img src="images/left menu1.jpg" alt="">
            <p class="pred">소비자 우롱하는 허위매물 중고차! 싸고 좋은차란 없다!</p>
				<div class="text">
                  <p>중고자동차를 사려는 사람들은 절반 이상이 중고차 쇼핑몰에서 제공하는 정보를 이용하는 것으로 나타났다. <br />
                  22일 중고차업체 차붐카붐에   따르면, 중고차 거래의 약 60%가 인터넷 중고차 쇼핑몰의 정보를 바탕으로 중고차를 구입하는 것으로 드러났다. <br />
                  </p>
                <p>그만큼 인터넷   중고차 쇼핑몰의 등장으로 소비자들은 보다 편리하게 중고차에 대한 정보를 획득하고 구입에서 판매까지 가능하게 된 것이다. 매매단지를 방문해 발품을   팔고 중고차를 구입했던 풍경은 점차 사라지고 있다.<br />
                  그렇다고 인터넷 사이트의 정보를 100% 신뢰하고 구매하기는 쉽지 않다. 가장   큰 문제는 허위매물로 인한 피해다.<br />
                  실제로 존재하지 않는 차량을 싼 가격으로 내놓고 소비자들을 현혹 시킨 뒤, 형편없는 중고차를   값비싸게 판매하고 있어 소비자들이 피해를 입고 있다.<br />
                  <br />
                  거래량이 연간 200만 대에 육박할 정도로 중고차에 대한 선호도는 갈수록   높아지고 있다. 따라서 중고차를 사기 전에 허위매물 여부인지를 꼼꼼히 살펴봐야 한다. <br />
                  <br />
                  OCSS는 중고차 허위매물을 구별하는 방법을   다음과 같이 소개했다. <br />
                  <br />
                  우선, 평균시세보다 지나치게 낮은 가격의 차량은 피한다. 둘째, 해당 사이트에 기재된 매매업자의 상호,   주소, 전화번호 등을 확인한다. 셋째, 차량번호를 가린 사진, 차량 내부사진과 기재된 옵션이 서로 다른 경우, 차량의 사진배경이 계절에 맞지   않은 경우 등에 유의한다. 넷째, 연식에 비해 현저히 주행거리가 짧거나 판매자가 광고에 기재한 주소와 매물차량의 보관 장소가 다른 경우에도   허위매물임을 의심해 봐야 한다. <br />
                </p>
                </div><br/>
				&nbsp;&nbsp;<img src="images/OCSS NEWS....jpg" alt="" width="274" height="42">
          <div class="text">
                	<div id="post">

                        <div id="col1">
               				<ul>
                				<li><a href="#">[중고차 구입시 주의할점]</a></li>
                				<li><a href="#">구입 프로세스 편!</a></li>
                				<li><a href="#">각자란 무엇인가?</a></li>
                            </ul>
                		</div>

                        <div id="col2">
               				<ul>
                				<li><a href="#">중고차 VS 신차 당신의 선택</a></li>
                				<li><a href="#">A/S와 정검은 이렇게!</a></li>
                				<li><a href="#">명의이전 계산하는법!</a></li>
                            </ul>
                		</div>

                        <div id="col3">
           				  <ul>
                				<li><a href="#">침수차 구별하는방법</a></li>
                				<li><a href="#">중고차 감가율은 무엇인가</a></li>
                				<li><a href="#">사고이력 조회방법</a></li>
                          </ul>
                		</div>
               	   </div>
              </div>
                    <br /><br /><br /><br /><br />

    </div>
</div>
</body>
</html>