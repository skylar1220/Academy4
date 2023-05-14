<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String cartId = session.getId();
	String name = "", shippingDate= "" , country= "", zipCode= "", addressName= "" ; 
	String [] params = {  "name",  "shippingDate", "country" ,  "zipCode" ,  "addressName"};
	Cookie [] cookies = request.getCookies();
	for(int i = 0 ; i < params.length; i++ ){
		if(cookies[i].getName().trim().equals("name")){
			name = URLDecoder.decode(cookies[i].getValue(), "utf-8");
		} else if (cookies[i].getName().trim().equals("shippingDate")){
			shippingDate = URLDecoder.decode(cookies[i].getValue(), "utf-8");
		} else if (cookies[i].getName().trim().equals("country")){
			country = URLDecoder.decode(cookies[i].getValue(), "utf-8");
		} else if (cookies[i].getName().trim().equals("zipCode")){
			zipCode = URLDecoder.decode(cookies[i].getValue(), "utf-8");
		} else if (cookies[i].getName().trim().equals("addressName")){
			addressName = URLDecoder.decode(cookies[i].getValue(), "utf-8");
		}
		
		/* if(cookies[i].getName().trim().equals(params[i])){
			name =
		} */
	}
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderConfirmation 주문정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page="./menu.jsp"></jsp:include>
	<div class="container">
		<h1 class="display-3">주문정보</h1>
	</div>
	
	<div class="container">
		
			<input type="hidden" name="cartId" value="<%= request.getParameter("cartId") %>">
			
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input disabled="enabled"  value="<%=name%>" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">배송일</label>
				<div class="col-sm-3">
					<input disabled="enabled"  value="<%=shippingDate%>" type="text" class="form-control">(yyyy/mm/dd)
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">국가명</label>
				<div class="col-sm-3">
					<input disabled="enabled"  value="<%=country%>" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<input disabled="enabled"  value="<%=zipCode%>" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input disabled="enabled"  value="<%=addressName%>" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
				
					<a href="./cart.jsp?cartid=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button">이전</a> 
					
					<a href="./checkoutcancelled.jsp" class="btn btn-primary" role="button">주문</a> 
					
					<a href="./checkoutcancelled.jsp" class="btn btn-secondary" role="button">취소</a> 
					
				</div>
			</div>
	</div>
	


</body>
</html>