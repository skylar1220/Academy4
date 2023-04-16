<!-- 10 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response</title>
</head>
<body>
<%
	response.sendRedirect("http://www.google.com");
%>
</body>
</html>
<!-- 
forwoard
- 주소는 안바뀌고 페이지만 가져와서 바뀜
- 얘는 그냥 삼각형 형태

response
- 주소도 거기로 바뀜
- 클라이언트 / 서버가 있을 때
-  클라이언트가 서버한테 response 가져와달라고 했더니
- response를 뜯어봄
- 서버가 클라이언트한테 '다시 그 주소로 요청해!' 하니까 클라이언트는 google로 요청해서 가는 것
- 그니까 클->서 갔다가 클<-서 왔다가 클->서 다시 가는 형태
 -->