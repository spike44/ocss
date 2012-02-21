<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="uploadfile.do" method="post" enctype="multipart/form-data">
             이름: <input type="text" name="name"/><br/>
             파일: <input type="file" name="memberImage"/><br>
             <input type="submit" value="전송"/>          
   </form>



</body>
</html>