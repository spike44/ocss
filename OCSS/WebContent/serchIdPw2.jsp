<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>FlashTemplateDesign Free Css Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
        <style type="text/css">
<!--
.style3 {
	font-size: 24px;
	color: #0000FF;
	font-weight: bold;
}
-->
        </style>
        
</head>

<body>
<c:if test="${!empty resultId}">
	<script type="text/javascript">
	alert("'${resultId}'");
	</script>
<c:remove var="resultId"/>
</c:if>
<c:if test="${!empty resultPw}">
	<script type="text/javascript">
	alert("'${resultPw}'");
	</script>
<c:remove var="resultPw"/>
</c:if>

<div id="bg_top">
<div id="main">
<!-- header begins -->
<div id="logo"><a href="#">OCSS</a><center>
<input name="textfield" type="text" id="textfield" size="40"/>
<input name="mainserch" type="button" class="botton" id="mainserch" value="검색" size="15" />
</center>
  <h2><a href="#" id="metamorph">Oranize Car Selling Service</a></h2>
</div>
<div id="buttons">
		<ul>
			<li class="first"><a href="#"  title="">차량검색</a></li>
			<li><a href="#" title="">차량등록</a></li>
		  <li><a href="#" title="">차량비교</a></li>
		  <li><a href="#" title="">관심차량관리</a></li>
		  <li><a href="#" title="">회사소개</a></li>
          
    </ul>
</div>
<div id="header">	
	<div id="wrapper">
        <div id="slider-wrapper"><a href="#"></a>        
  <div id="slider" class="nivoSlider">
                <img src="images/header1.jpg" alt="" />
                <img src="images/header2.jpg" alt=""/>
                <img src="images/header3.jpg" alt="" />
				<img src="images/header4.jpg" alt="" />            </div>        
        </div>

<script type="text/javascript" src=js/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    function dosearchId() {
    document.searchForm.method="POST";	
   	document.searchForm.action="searchId.do";
   	document.searchForm.submit();
    	
    }
    function dosearchPw() {
        document.searchForm.method="POST";	
       	document.searchForm.action="searchPw.do";
       	document.searchForm.submit();
        	
        }
    </script>
</div>	
</div>
<!-- header ends -->
<!-- content begins -->

  <div id="content">
	<div id="right">
    	<div id="categories">
				<h2>Categories</h2>
				<form action="http://www.free-css.com/" method="post" class="form1">
                  <h2>Member login</h2>
                  <center>
                  <label>&nbsp;N&nbsp;a&nbsp;m&nbsp;e&nbsp;:</label>
                  <input name="memberId" type="text" size="15" border="2" placeholder="사용자 아이디"/>
                  <br>
                  
                  <label>Password:</label>
                  <input name="password" type="password" size="15" border="2" placeholder="비밀번호"/>
                  <br>
                  </center>
                  
                  <input name="login" type="button" class="botton" id="login" value="확인" size="15"  />
                  <input name="join" type="button" class="botton" id="login" value="회원가입" size="15" />
				  
                  <br />
                  <label class="label1">
                  <span class="pred">&nbsp;ID,PW를 잊어버리셧습니까?</span></label>
                  <input name="GO" type="button" class="botton" id="GO" value="GO" />
                </form>
        </div>
				<div id="partners">
				<h2>Our Partners</h2>
				<ul>
					<li><a href="#">대연대연김대연</a></li>
					<li><a href="#">종문종문하종문</a></li>
					<li><a href="#">성민성민손성민</a></li>
					<li><a href="#">도일도일권도일</a></li>
					<li><a href="#">진학진학문진학</a></li>
					<li><a href="#">유니유니김윤희</a></li>
				</ul>
         </div>
      </div>
          	<div id="left">
          	<form name="searchForm">
			<h1>ID/Password 찾기</h1>
            <p class="pred">※ 판매자는 가입승인 이후에 로그인이 가능합니다.</p>			
				<div class="text">
                <br>
                  <table width="44%" border="0" align="right">
                    <tr>
                      <td width="48%" colspan="2"><div align="center" class="style3">Password 찾기 </div></td>
                    </tr>
                    <tr>
                      <td><div align="center">ID</div></td>
                      <td width="52%"><input id="username2" name="memberId" /></td>
                    </tr>
                    <tr>
                      <td><div align="center">이름</div></td>
                      <td><input id="phone2" name="phone2" type="tel" /></td>
                    </tr>
                    <tr>
                      <td><div align="center">이메일</div></td>
                      <td><input id="email2" name="email2" type="email" /></td>
                    </tr>
                    <tr>
                      <td height="26"><div align="center"> </div></td>
                      <td><input class="button" type="button" name="doserchId2" value="Password찾기" onclick="dosearchPw()"/></td>
                    </tr>
                  </table>
                  <table width="44%" border="0">
                    <tr>
                      <td width="48%" colspan="2"><div align="center" class="style3">ID 찾기 </div></td>
                    </tr>
                    <tr>
                      <td><div align="center">이름</div></td>
                      <td width="52%"><input id="username" name="username" /></td>
                    </tr>
                    <tr>
                      <td><div align="center">휴대폰번호</div></td>
                      <td><input id="phone" name="phone" type="tel" /></td>
                    </tr>
                    <tr>
                      <td><div align="center">이메일</div></td>
                      <td><input id="email" name="email" type="email" /></td>
                    </tr>
                    <tr>
                      <td><div align="center"> </div></td>
                      <td><input class="button" type="button" name="doserchId" value="ID찾기" onclick="dosearchId()"/></td>
                    </tr>
                  </table>
                  <p>                  <br />
                </p>
         
                <div class="date"> 
                			<div class="dateright"><a href="#">Comments(14)</a></div>
                			<div class="dateleft">February 23, 2011</div>                           
                </div>
               </form>
            </div>
			  <h1>OCSS NEWS...</h1>
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
                <h1>이부분에 무었이 들어갈지 내용미정...</h1>
              <p class="pred">Morbi porta odio id erat. Curabitur ut massa uspendisse ipsum. In vitae dolor eget lorem </p>
                <div class="text">
				<p>Suspendisse massa lacus, ullamcorper ac, pulvinar ut, aliquet et, elit. volutpat, diam leo vestibulum lectus, eu molestie elit est eu ipsum. Ut accumsan nisl eu velit. Morbi eros felis, ornare sed, vestibulum cursus, vehicula et, nisl. Etiam adipiscing. Sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
           </div>   
    </div>    
</div>
<!-- content ends -->
<!-- footer begins -->
<div id="footer">
  <p align="center">copyright ⓒ OCSS all rights reserved</p>
  <p align="center"><a href="#"><img src="images/dis.png" alt="" width="186" height="39" /></a></p>
		
</div>
<!-- footer ends -->
</div>
</div>

</body>
</html>