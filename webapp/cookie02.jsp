<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie02</title>
</head>
<body>
<% 
	Cookie [] cookies =  request.getCookies() ;
	if(cookies == null){
		out.print("쿠키 값이 없습니다");
		return;
	}
	for(Cookie co : cookies){
		out.print("<br>" + co.getName() + " : " + co.getValue() + "<br>");
	}
%>
</body>
</html>