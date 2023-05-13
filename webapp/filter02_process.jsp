<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>filter02_process</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); 
String id =  request.getParameter("id");
String psw =  request.getParameter("psw");
%>
	<p> 당신이 입력한 아이디: <%= id %>, 비밀번호: <%=psw  %>
</body>
</html>