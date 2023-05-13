<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String id =  (String) session.getAttribute("userId");
	String psw = (String) session.getAttribute("userPsw");
%>

	<p> 세션에 설정된 id: <%= id %>
	<p> 세션에 설정된 psw: <%= psw %>
	
<%
// 세션에 설정된 정보 다 가져오기 -- 이거 생각날 수 있게 복습!
	Enumeration et =  session.getAttributeNames();
	while(et.hasMoreElements()){
		String name = et.nextElement().toString();
		out.print(session.getAttribute(name));
		out.print("<br>");
	}
%>
</body>
</html>