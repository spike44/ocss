<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="js/validate.js" type="text/javascript"></script>
<script type="text/javascript">
	function gojoin() {
		location.href="join.page.tiles";
		
	}
	function dologin() {
		document.loginForm.action="login.do";
		document.loginForm.submit();
		
	}
	function gosearchidpw() {
		location.href="searchIdPw.page.tiles";
	}
	function goedit() {
		location.href="updateMember.page.tiles";
		
	}
	function dologout() {
		document.loginForm2.action="logout.do";
		document.loginForm2.submit();
	}
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

				memberId : "required",
				password : "required"
			},
			messages : {

				memberId : "아이디를 입력해주세요",
				password : "비밀번호를 입력해주세요"
	
			}
		});

	});

	
	</script>
</head>
<body>
<c:if test="${!empty loginfailed}">
	<script type="text/javascript">
	alert("로그인 실패");
	</script>
<c:remove var="loginfailed"/>
</c:if>
<c:if test="${empty login}">
  <div id="content">
	<div id="right">
    	<div id="categories">
				<form name="loginForm" action="" method="post" class="form1">
                  <h2>Member login</h2>
                  <center>
                  <label>&nbsp;N&nbsp;a&nbsp;m&nbsp;e&nbsp;:</label>
                  <input id="memberId" name="memberId" type="text" size="15" border="2" placeholder="사용자 아이디"/>
                  <br>

                  <label>Password:</label>
                  <input id="password" name="password" type="password" size="15" border="2" placeholder="비밀번호"/>
                  <br>
                  </center>
                  <center>
                  <input name="login" type="button" class="botton" id="login" value="확인" size="15"  onclick="dologin()"/>
                  <input name="join" type="button" class="botton" id="join" value="회원가입" size="15" onclick="gojoin()"/>
				  </center>
                  <label class="label1">
                  <span class="pred">&nbsp;ID,PW를 잊어버리셧습니까?</span></label>
                  <input name="GO" type="button" class="botton" id="GO" value="GO" onclick="gosearchidpw()"/>
                </form>
        </div>
				<div id="partners">


        </div>
      </div>
      </div>
      </c:if>
 <c:if test="${!empty login}">
  <div id="content">
	<div id="right">
    	<div id="categories">
				<form name="loginForm2" action="" method="post" class="form1">
                  <h2>Member login</h2>
                  <center>
                  <label>${login.memberName} 님 환영합니다.</label>
                  <br>
                  </center>
                  <center>
                  <input name="edit" type="button" class="botton" id="edit" value="회원정보수정" size="15"  onclick="goedit()"/>
                  <input name="logout" type="button" class="botton" id="logout" value="로그아웃" size="15" onclick="dologout()"/>
				  </center>
    
                </form>
        </div>
				<div id="partners">


        </div>
      </div>
      </div>
      </c:if>     
</body>
</html>