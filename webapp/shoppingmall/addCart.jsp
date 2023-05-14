<%@page import="java.util.ArrayList"%>
<%@page import="dao.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addCart</title>
</head>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"></jsp:useBean>
<body>
<%
	// 추가하고자하는 상품 아이디를 가져와서
	String id =  request.getParameter("id");
	// 아이디가 있는지 검사
	if(id == null || id.trim().equals("")){ 	// id값을 못받은 경우 목록으로 돌아오게 (주소에만 입력한 경우 등)
		response.sendRedirect("products.jsp");
		return;
	}
	// 아이디에 해당하는 상품을 선택
	Product p = productDAO.getProductById(id);
	
	// 이건 무슨상황? 일단 예외처리
	if(p== null){
		response.sendRedirect("products.jsp");
		return;
	}
	
	// session에 선택된 상품 정보를 넣는다.
	List<Product> lists = (List<Product>) session.getAttribute("cartlist"); // 오브젝트라 타입캐스팅
		// session에 리스트가 없으면 생성하고
	if(lists == null){	
		lists = new ArrayList<Product>();
	} 
		// session에 리스트가 있으면 추가
	p.setQuantity(p.getQuantity()+1);
	lists.add(p);
	session.setAttribute("cartlist",lists );
	
	response.sendRedirect("product.jsp?id=" + id );

%>
</body>
</html>