<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function insertImage(){
		if($("#image").val().length<=0)
			alert("파일을 선택해주세요");
		else{
			document.frm.action = "uploadfile.do";
			document.frm.submit();
		}
	}
</script>
</head>
<body>
<center>
<br>
<form name="frm" method="post" id="frm" enctype="multipart/form-data"> 
<%String num = request.getParameter("num");%>
<input type="hidden" name="num" value="<%=num %>">
<input type="file" name="image" id="image"><br><br>
<input type="button" name="img" id="img" value="등록" onclick="insertImage()">
</form>
</center>
</body>
</html>