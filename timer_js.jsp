<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function myTimer() {
		const $currentDate = document.querySelector('#currentDate');
		let date = new Date();
		let year = date.getFullYear();
		let month = date.getMonth() + 1;
		let day = date.getDate();
		let hour = date.getHours();
		let minutes = date.getMinutes();
		let seconds = date.getSeconds();
		let current = year + '년 ' + month + '월 ' + day + '일 ' + hour + '시 '
				+ minutes + '분 ' + seconds + '초 ';
		$currentDate.textContent = current;
	}
	setInterval(myTimer, 1000);
</script>
<body>
	<div id='currentDate'></div>
</body>
</html>