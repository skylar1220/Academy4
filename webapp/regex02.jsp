<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5. 정규식 주요 표현</title>
<style type="text/css">
/* @@ 여기 채우기*/
</style>
</head>
<body>
<div>
	<img alt="" src="./resources/images/regExp01.png">
</div>
<div>
	<img alt="" src="./resources/images/regExp02.png">
</div>

<h1>한글 및 알파벳만 사용하도록 검사(정규식 이용)</h1>
<input type="text" name="username" id = "username">
<input type="button" value="검사" id = "checkbutton">
	</div>
</div>
</body>

<script type="text/javascript">
	const $checkbutton = document.querySelector('#checkbutton')
	const check = () =>{
		const $username = document.querySelector('#username');
		let retExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅓ|가-힣]/;
		if(!retExp.test($username.value)){
			alert("숫자로 시작할 수 없습니다.")
			$username.select();
			return false;
		}
	};
	$checkbutton.addEventListener('click', check );
</script>
</html>