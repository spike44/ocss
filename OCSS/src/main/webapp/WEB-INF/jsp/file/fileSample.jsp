<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
���Ͼ��ε�ٿ�ε� �׽�Ʈ
<form action="/jcf-edu/file/upload.action?urn=aaa/bbb" method="post" enctype="multipart/form-data">
<img src="<%=request.getContextPath() %>/file/download.action" width="100" height="300">
<input name="upfile" type="file">
<input type="submit" value="���ε�">
</form>

</body>
</html>