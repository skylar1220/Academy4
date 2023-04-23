<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>

<%!String greeting = "쇼핑몰에 오신 것을 환영합니다.";
	String tagline = "즐거운 쇼핑 되세요";%>
<body>

	<!-- 내비게이션 -->
	<jsp:include page="menu.jsp"></jsp:include>

	<!-- 본문 내용 -->
	<div class="container">
		<h1 class="display-3">
			<%=greeting%>
		</h1>
	</div>

	<div class="container">
		<div class="text-center">
			<h2>
				<%=tagline%>
			</h2>
		</div>
	</div>
	
	<div class="text-center">
		<%@ include file="/timer_js.jsp"  %>
	</div>
	

	<!-- 푸터 -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>