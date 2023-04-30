<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10. errorPage_error.jsp</title>
</head>
<body>
	<h1>에러가 발생했습니다.</h1>
	<p> 예외 유형: <%= exception.getClass().getName() %>
	<p> 오류 메세지 : <%= exception.getMessage()%>
</body>
</html>