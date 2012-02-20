<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OCSS 허위매물신고 페이지.</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script type="text/javascript">
	function docancel() {
		
		location.href = "ocssMainAdmin.page.tiles";
	}
	function doinsertnotify() {
		document.insertNotifyForm.action="insertNotify.do";
		document.insertNotifyForm.submit();
	}
</script>
	</head>
	<body>
		<div id="left">
		<form id="insertNotifyForm" name="insertNotifyForm" action="" method="post">
		  <h1>허위매물신고</h1>
          <p class="pred">※ 거짓된 정보를 입력하게되면 관리자의 제제가 있을 수 있습니다.</p><br />
		    <div class="text">
                <div align="center"><br />
                제목
                  <input name="" type="text" size="80"/>
                  <br />
                  <br />
              </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용<br />
                 <div align="center">
                <textarea name="textarea" cols="70" rows="8" ></textarea>
                </div>
              <div align="right">
                      <p><br/>
                        <input type="button" name="insertNotify" value="신고하기" onclick="doinsertnotify()"/>
                        &nbsp;
                        <input type="button" name="cancel" value="취 소" onclick="docancel()"/>
                      </p>
                      <p>&nbsp;                        </p>
              </div>
		    </div>
    </div>
    </form>
					</div>

	</body>
</html>