<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규식 주요 표현</title>
</head>
<body>

<div>
	<img alt="" src="./resources/images/regExp01.PNG">
</div>

<div>
	<img alt="" src="./resources/images/regExp02.PNG">
</div>

<style>
.sample{
	position: absolute;
	top: 50%;
	left: 50%;	
}
</style>

<div class = 'sample'>
	<h1>한글및 알파벳만 사용하도록 검사(정규식 이용)</h1>
	<input type="text" name="username" id='username'>
	<input type="button" value="검사" id='checkbutton'>

</div>
	</body>
<script type="text/javascript">
	const $checkbutton = document.querySelector('#checkbutton');
	const check = ()=>{
		const $username = document.querySelector('#username');
		let regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅓ|가-힣]/; 
		if (!regExp.test($username.value)){
			alert('숫자로 시작할 수 없습니다.');
			$username.select();
		}	
		
	};
	$checkbutton.addEventListener('click',check);
</script>
</html>

