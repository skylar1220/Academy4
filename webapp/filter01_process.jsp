<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>filter01_process</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("UTF-8");
	%>
	정상적으로 입력된 값은 <%= request.getParameter("name") %>
</body>
</html>