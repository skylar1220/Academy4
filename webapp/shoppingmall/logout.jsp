<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
<%
	session.invalidate();		// 세션 죽여주는거
	response.sendRedirect("addProduct.jsp");		// 여기로 가게되면 로그인이 안되어있으니까 사실을 로그인페이지로 가게 됨
%>

</body>
</html>