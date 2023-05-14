<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie3</title>
</head>
<body>
	<%
	for(Cookie co : request.getCookies()){
		if(co.getName().equals("userpsw")){
			co.setMaxAge(0);
			response.addCookie(co);
		}
	};
	%>
</body>
</html>