<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addCart</title>
</head>
<body>
<%
	String productId =  request.getParameter("id");
	out.print(productId);
%>
</body>
</html>