<!-- 2-9 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8"); 		// 이거 원래 해야하는데 안해도 되네?
	String id = request.getParameter("id");
	String psw = request.getParameter("psw");
%>
<p>아이디: <%= id %>
<p>비밀번호: <%= psw %>
</body>
</html>