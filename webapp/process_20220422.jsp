<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2. 20230422에서 데이터 읽기</title>
</head>
<body>
<% 
/* String 변수 =  request.getParameter(요청파라메터이름) */
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
String name = request.getParameter("name");
String phone = request.getParameter("phone1")+"-" +request.getParameter("phone2")+"-" +request.getParameter("phone3");
String gender = request.getParameter("gender");
String [] hobby = request.getParameterValues("hobby") ;
String city = request.getParameter("city");
String comment = request.getParameter("comment");

%>
<p> 아이디: <%= id %>
<p> 비밀번호: <%= passwd %>
<p> 이름: <%= name %>
<p> 연락처: <%= phone %>
<p> 성별: <%= gender %>
<p> 취미: <%
	for(String h : hobby){
	 if(h!=null){
		 out.print(h + " ");
	 }
	}
%>
<br><br><br>
<% 
 Enumeration <String> en =  request.getParameterNames();
while(en.hasMoreElements()){
	String name2 =  en.nextElement();
	String value = 	request.getParameter(name2);
	out.print("name2:"+ name2 + "value:" + value + " ");
}
%>
<p> 도시: <%= city %>
<p> 메모: <%= comment %>
</body>
</html>