<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%!
	Cookie makeCookie(String parameter, ServletRequest request)  throws Exception {
	return new Cookie( parameter , URLEncoder.encode( request.getParameter(parameter), "utf-8" ) );
}
%>
<%
	response.addCookie(makeCookie("cartId", request)) ;
	response.addCookie(makeCookie("name", request));
	response.addCookie(makeCookie("shippingDate", request));
	response.addCookie(makeCookie("country", request));
	response.addCookie(makeCookie("zipCode", request));
	response.addCookie(makeCookie("addressName", request));
	
	response.sendRedirect("orderConfirmation.jsp");
%>