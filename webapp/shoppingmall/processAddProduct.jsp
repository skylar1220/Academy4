<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dao.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4.상품등록 전달받은 창</title>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session"></jsp:useBean>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String fileUploadPath = "../resources/images"; // 상대 또는 절대경로로 매핑해야함
	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);	
	Iterator params =  items.iterator();
	Object [] formDatas = new Object[8];
	String fileName ="" ;
	int count = 0;
	while(params.hasNext()){
		FileItem item =  (FileItem)params.next();
		if(item.isFormField()){
			//String name = item.getFieldName();
			formDatas[count++] = item.getString("UTF-8");
		}
		else{
			fileName = item.getName();
			File file = new File(fileUploadPath + "/" + fileName);
			item.write(file);
			out.print("<br> 파일명 : " + fileName); 
		} 
	}
	
	 
	
	/* String productId = request.getParameter("productId");
	String productName = request.getParameter("productName");
	// Integer unitPrice = Integer.parseInt(request.getParameter("unitPrice"));
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	//Long unitInStock = Long.parseLong(request.getParameter("unitInStock"));
	String condition = request.getParameter("productId"); */

	Product p = new Product((String)formDatas[0], (String)formDatas[1],
			Integer.parseInt((String)formDatas[2]),(String)formDatas[3]
			,(String)formDatas[4],(String)formDatas[5],
			Long.parseLong((String)formDatas[6]) ,(String)formDatas[7], fileName );
	//@@??
	productDAO.addProduct(p); 

	response.sendRedirect("products.jsp");
	%>
</body>

</html>