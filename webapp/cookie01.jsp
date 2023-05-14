<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie01</title>
</head>
<body>
	<%
	Cookie cookie_id = new Cookie("userid", "admin"); // (key, value)
	response.addCookie(cookie_id);
	
	Cookie cookie_psw = new Cookie("userpsw", "admin1234"); // (key, value)
	response.addCookie(cookie_psw);
	%>
</body>
</html>