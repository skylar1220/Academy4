
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
<title>6.파일 전달 받는 애</title>

</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String fileUploadPath = "c://upload";
	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);	
	Iterator params =  items.iterator();
	while(params.hasNext()){
		FileItem item =  (FileItem)params.next();
		if(item.isFormField()){
			String title = item.getString("UTF-8");
			out.print("<h3>"+title+"</h3>");
		}else{
			String fileName = item.getName();
			File file = new File(fileUploadPath + "/" + fileName);
			item.write(file);
			out.print("<br> 파일명 : " + fileName);
		} 
	}
			


%>
</body>
</html>