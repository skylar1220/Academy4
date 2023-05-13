<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session03 세션삭제</title>
</head>
<body>
<%
	session.removeAttribute("a"); // 세션명중에 a라는 세션을 삭제한다
	// session.invalidate();	// 전부삭제
	session.setMaxInactiveInterval(60*60);	// 시간이 지나면 세션 삭제 (초)
	out.print(session.getMaxInactiveInterval()); 
%>
</body>
</html>