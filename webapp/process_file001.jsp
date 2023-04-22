<%@page import="jakarta.servlet.jsp.PageContext"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6. 파일업로드를 받아내는 파일</title>
</head>
<body>
<% 
	String fileUploadPath = "c://upload";
/* 	DiskFileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload =  new ServletFileUpload(factory);
	List<FileItem> items =  upload.parseRequest(request); 
	*/
	HttpServletRequest jrequest = (HttpServletRequest)PageContext.getRequest();
	
%>
</body>
</html>