<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script Tag</title>
</head>
<body>
	<h1>Script Tag</h1>
	<h3>스크립트 태그에의 종류는 다음과 같다</h3>
	<ul>
		<li>선언문(declaration)</li>
		<li>스크립틀릿(scriptlet)</li>
		<li>표현문(expression)</li>
	</ul>
	
	<!--선언문 : 변수나 함수를  	선언할 때-->
	<%! 
		int count = 3; 
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	
		<!--스크립틀릿 : 자바코드를 사용할 수 있게 하는 태그-->
	
	<% 
		String inner_value = "";
		for(int i = 0; i<count; i++){		
			out.println("java server page "+ i + "<br>");
		}
	%>
		
		<!--표현문 : 변수나 함수의 결과를 문자열 형태로 출력 // 근데 주석 처리?? -->
	
	<%=makeItLower("Hello world")%>
	
	<br><br><br><br>
	<div>
		<a href="./directive.jsp">다음 강의: 디렉티브</a>
	</div>
</body> 
</html>