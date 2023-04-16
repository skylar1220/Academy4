<%-- usebean 3,4 와 싱글톤 관련성 이해!! --%>

<%@page import="dao.Calculator"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-5 자바빈 사용</title>
</head>
<body>
	<jsp:useBean id="person" class="dao.Person" scope="request"></jsp:useBean>
	<%
	person.setId(200);
	person.setName("길복순");
	%>
	<h4> 아이디: <%= person.getId() %> </h4>
	<h4> 이름: <%= person.getName() %>   </h4>

	<jsp:include page="usebean3.jsp"></jsp:include>
</body>
</html>

<%-- 이거로 바꾸면 아래3는 바뀜
 scope="request"
 - 근데 원래 알던 자바랑 다른 느낌
 - 
 --%>