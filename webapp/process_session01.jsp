<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process_session01</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String psw = request.getParameter("psw");
	if(id.equals("admin") && psw.equals("1234")){
		session.setAttribute("userId", id);
		session.setAttribute("userPsw", psw);
		
		session.setAttribute("a", 0);
		session.setAttribute("b", 1);
		session.setAttribute("c", 2);
		
		out.print("세션 설정 성공");
	} else{
		out.print("세션 생성 실패");
	}
%>
</body>
</html>