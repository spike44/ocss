<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
	function insertImage(){
		window.opener.Image();
		window.close();
	}
</script>
</head>
<body>
<center>
<br>
<input type="file" name="image" id="image"><br><br>
<input type="button" name="img" id="img" value="등록" onclick="insertImage()">
</center>
</body>
</html>