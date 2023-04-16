<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forward 액션 태그</h2>
	<jsp:forward page="./timer_js.jsp"></jsp:forward>
	<p>-----------------------------------------------------
	<!-- forward를 만났기 때문에 p가 표시되지 않음: 
	클라이언트가 서버한테 foward.jsp줘 했지만
	페이지를 전환하는 forward 명령어가 있어서 timer를 주는 것
	클라이언트는 'forward 액션 태그'라는 파일을 호출했지만
	서버가 알아서 timer를 주는 것
	 -->
</body>
</html>