<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-2 자바빈 사용</title>
</head>
<body>
	<jsp:useBean id="d" class="java.util.Date"></jsp:useBean>
	<h1>오늘의 날짜? </h1>
	<%=d %>
</body>
</html>

<%-- 위와 같은 의미
 <% 
	Date d = new Date();
%>
 --%>