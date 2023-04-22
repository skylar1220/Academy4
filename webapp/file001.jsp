<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5. 파일업로드</title>
</head>
<body>
<form action="process_file001.jsp" enctype="multipart/form-data">
	<p><input type="text" name="title">  
	<p><input type="file" name="fileName">  
	<p><input type="submit" value="제출">  
</form>
</body>
</html>