<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>FlashTemplateDesign Free Css Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
		<style type="text/css">
#signupForm {
	width: 670px;
}

#signupForm label.error {
	margin-left: 10px;
	width: auto;
	display: inline;
}
</style>
</head>
<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
<script src="js/validate.js" type="text/javascript"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js">
</script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    <script type="text/javascript">
	$.validator.setDefaults({
		submitHandler : function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		// validate signup form on keyup and submit
		$("#signupForm").validate({
			rules : {

				memberId : {
					required : true,
					minlength : 2
				},
				memberName : "required",
				password : {
					required : true,
					minlength : 6
				},
				confirm_password : {
					required : true,
					minlength : 6,
					equalTo : "#password"
				},
				email : {
					required : true,
					email : true
				},
				phone : {
					required : true,
					tel : true
				},
				agree : "required"
			},
			messages : {

				memberId : {
					required : "아이디를 입력해주세요",
					minlength : "아이디는 2자이상 이어야합니다"
				},
				memberName : "이름을 입력해주세요",
				password : {
					required : "비밀번호를 입력해주세요",
					minlength : "비밀번호는 6자 이상이어야 합니다",
				},
				confirm_password : {
					required : "비밀번호를 입력해주세요",
					minlength : "비밀번호는 6자 이상이어야 합니다",
					equalTo : "비밀번호가 서로 다릅니다"
				},
				email : "유효한 이메일 주소를 입력하세요",
				phone : "유효한 휴대전화 번호를 입력하세요",
				agree : "약관에 동의해주세요"
			}
		});

	});

	function checkId() {
		$.ajax({
			url : "idcheck.do",
			data : ({
				memberId : $("#memberId").val()
			}),
			success : function(data) {
				if (data == "false") {
					alert("중복된 아이디입니다.");

				} else
					alert("사용 가능한 아이디입니다.");
			}
		});
	}

	function join() {
		var re_id = /^[a-z0-9_-]{3,16}$/;
		if ($("#memberId").val().length <= 0)
			alert("아이디 길이 체크체크");
		else if (re_id.test($("#memberId").val()) != true) {
			alert("유효한 아이디가 아닙니다.");
		}
	}
	function dojoin() {
		document.signupForm.action="join.do"
			document.signupForm.submit();
		
	}
    </script>
    
<body>
<div id="bg_top">
<div id="main">
<!-- header begins -->
<div id="logo"><a href="#">OCSS</a><center>
<input name="textfield" type="text" id="textfield" size="40"/>
<input name="mainserch" type="submit" class="botton" id="mainserch" value="검색" size="15" />
</center>
  <h2><a href="#" id="metamorph">Oranize Car Selling Service</a></h2>
</div>
<div id="buttons">
		<ul>
			<li class="first"><a href="#"  title="">차량검색</a></li>
			<li><a href="#" title="">차량등록</a></li>
		  <li><a href="#" title="">차량비교</a></li>
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
				<img src="images/header4.jpg" alt="" />
            </div>        
        </div>


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
                  <input name="userID" type="text" size="15" border="2" placeholder="사용자 아이디"/>
                  <br>
                  
                  <label>Password:</label>
                  <input name="" type="password" size="15" border="2" placeholder="비밀번호"/>
                  <br>
                  </center>
                  
                  <input name="login" type="submit" class="botton" id="login" value="확인" size="15"  />
                  <input name="join" type="submit" class="botton" id="login" value="회원가입" size="15" />
				  
                  <br />
                  <label class="label1">
                  <span class="pred">&nbsp;ID,PW를 잊어버리셧습니까?</span></label>
                  <input name="GO" type="submit" class="botton" id="GO" value="GO" />
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
          	<form class="cmxform" id="signupForm" name= "signupForm" method="get">
			<h1>회원가입</h1>
            <p class="pred">※ 판매자는 가입승인 이후에 로그인이 가능합니다.</p>			
				<div class="text">
                  <p>
<table width="100%" border="0">
  <tr>
    <td><div align="center">아이디</div></td>
    <td>
    <input id="memberId" name="memberId" />
    <input class= "button" type="button" name="idCheck" value="중복확인" onclick="checkId()"></td>
  </tr>
  <tr>
    <td><div align="center">이름</div></td>
    <td><input id="memberName" name="memberName" /></td>
  </tr>
  <tr>
    <td><div align="center">비밀번호</div></td>
    <td><input id="password" name="password" type="password" /></td>
  </tr>
  <tr>
    <td><div align="center">비밀번호 확인</div></td>
    <td><input id="confirm_password" name="confirm_password" type="password" /></td>
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
    <td><div align="center">판매자가입<input type = "radio" name ="가입유형"/>
    </div></td>
    <td>구매자가입<input type = "radio" name ="가입유형"/></td>
  </tr>
  <tr>
    <td><div align="center">
          </div></td>
    <td><input class="button" type="button" name="doJoin" value="회원가입" onclick="dojoin()"/>
        <input class="button" type="button" name="docancel" value="취소"/></td>
  </tr>
</table>
</form>


                  <br />
                </p>
                <div class="date"> 
                			<div class="dateright"><a href="#">Comments(14)</a></div>
                			<div class="dateleft">February 23, 2011</div>                           
                </div>
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