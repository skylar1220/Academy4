<%@page import="dao.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<title>cart</title>
</head>
<%
	String cartId = session.getId();
%>
<body>
<jsp:include page="./menu.jsp"></jsp:include>
	<div class="container">
		<h1 class="display-3">장바구니</h1>
	</div>
	
	<div class="container">
		<div class="row">
			<table width= 100% >
				<tr> <!-- 열 -->
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./shippinginfo.jsp?cartId=<%=cartId%>" class="btn btn-success">주문하기</a></td>
				</tr> 
				
			</table>
		</div>
		
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th> <!--  열의 헤더 -->
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
				List<Product> cartlists = ( List<Product>) session.getAttribute("cartlist");
				if(cartlists== null){
					return;
				}
				int sum = 0;
				for( Product p : cartlists ){
					sum += p.getUnitPrice();
				%>
				<tr>
					<td><%= p.getProductId()%></td>
					<td><%= p.getUnitPrice()%></td>
					<td><%= p.getUnitInStock()%></td>
					<td><%= p.getQuantity()%></td>
					<td><a href="#" class="badge bg-danger">삭제</a></td>
				</tr>
				<% } %>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<th>총액</th>
					<th><%= sum %></th>
				</tr>
			</table>
			<a href="products.jsp" class="btn btn-secondary">쇼핑 계속하기</a>
		</div>
	</div>
	
	
</body>
</html>