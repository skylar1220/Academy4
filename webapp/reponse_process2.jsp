<!-- 12-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reponse_process2</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String psw = request.getParameter("psw");
	if (id.equals("admin") && psw.equals("admin1234")) {
		response.sendRedirect("success.jsp");
	} else {
		response.sendRedirect("failed.jsp");
	}
	%>

</body>
</html>