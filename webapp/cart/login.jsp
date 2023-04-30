<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(cart) login</title>
</head>
<body>
	<form action="j_security_check" name="loginForm" method="post">
		<p>아이디 <input type="text" name="j_username">
		<p>패스워드 <input type="password" name="j_password">
		<p><input type="submit" value="전송">
	</form>
</body>
</html>