<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>1. validation</title>
</head>
<body>
	<form action="process_validation01.jsp" name="loginForm" method="post">
		<p>id: <input type="text" name="id">
		<p>psw: <input type="password" name="psw">
		<p><input type="submit" value="로그인" onclick=" checkform(event)">
	</form>
	
</body>

<script type="text/javascript">
	const $loginForm = document.loginForm;
	function checkform(event) {
		event.preventDefault();
		let $id = $loginForm.id; // name이 id인 애
		if( $id.value.length <6 || $id.value.length >12){
			alert("아이디는 6자리 이상 12자리 이하로 설정해 주세요");
			$id.select();
			return false;
		}
		let $psw = $loginForm.psw ;
		if( $psw.value === ""){
			alert("패스워드를 입력하세요");
			$psw.select();
			return false;
		}
		$loginForm.submit();
	}
</script>


</html>