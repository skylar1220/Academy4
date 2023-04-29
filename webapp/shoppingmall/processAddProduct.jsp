<%@page import="dao.Product"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4.상품등록 전달받은 창</title>
</head>
<body>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");

	//리소스 경로 확인하기
	ServletContext clc =  request.getServletContext();
	String resourcePath =  clc.getResource("/resources/images").getPath();
	out.print(request.getServletPath());
	//-> 이경로를 c:upload 대신 넣기 되는지 확인@@ /C:/2023leeJsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/BookSotre2/resources/images/



	//String fileUploadPath = "../resources/images"; // 상대 또는 절대경로로 매핑해야 함
	String fileUploadPath = resourcePath; // 상대 또는 절대경로로 매핑해야 함
	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);	
	Iterator params =  items.iterator();
	Object[] formDatas = new Object[8];
	String fileName = "";
	int count = 0;
	while(params.hasNext()){
		FileItem item =  (FileItem)params.next();
		if(item.isFormField()){		
			formDatas[count++] =  item.getString("UTF-8");
		}
		else
		{		
			fileName = item.getName();
			out.print("<br>파일명 : "+fileName);	
			File file = new File(fileUploadPath+"/"+fileName);
			item.write(file);
		}
	}

	Product p = new Product((String)formDatas[0], (String)formDatas[1], 
			Integer.parseInt((String)formDatas[2]), (String)formDatas[3], 
			(String)formDatas[4], (String)formDatas[5], 
			Long.parseLong((String)formDatas[6]) ,(String)formDatas[7],fileName );
	
	productDAO.addProduct(p);
	
	response.sendRedirect("products.jsp");

%>
</body>
</html>