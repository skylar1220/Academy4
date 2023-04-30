<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page errorPage="errorPage_error.jsp" %> --%>
 	<!-- 우선순위 1)jsp 페이지에 설정한 애 -->


 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9. errorPage</title>
</head>
<body>
<%
request.getParameter("name").toCharArray();

// 우선순위 0, 최우선 순위) 예외가 발생하면 특정 페이지로 이동 : 
	/* try{
	request.getParameter("name").toCharArray();
	} catch (Exception e ){
		RequestDispatcher dis = request.getRequestDispatcher("/shoppingmall/products.jsp");
		dis.forward(request, response);
	} */
%>
</body>
</html>