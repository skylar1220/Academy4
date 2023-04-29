<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3. regex01 정규식</title>
<script type="text/javascript">
	let regExp = /Java/i ;
	let str = 'Java Server Page';
	let result = regExp.exec(str);		// 결과를 반환
	let resultTest = regExp.test(str);		// 매칭되는 게 있으면 true 그렇지 않으면 fasle
	alert(result + resultTest );
	
	</script>
</head>
<body>

</body>
</html>