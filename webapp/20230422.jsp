<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1. 폼 태그</title>
</head>
<body>
	<form action="process_20230422.jsp" method="post">
		<p> 아이디: <input type="text" name="id">
		<p> 비밀번호: <input type="password" name="passwd">
		<p> 이름: <input type="text" name="name">
		<p> 연락처: <input type="text" maxlength="4" name="phone1">
		- <input type="text" maxlength="4" name="phone2">
		- <input type="text" maxlength="4" name="phone3">
		<p> <input type="submit" value="전송">
		<p> 성별: <input type="radio" name="gender" value="남성" checked="checked">남성
		<input type="radio" name="gender" value="여성">여성
		<p> 취미: 독서 <input type="checkbox" name="hobby" value="reading" checked="checked" >
		운동 <input type="checkbox" name="hobby" value="health">
		영화 <input type="checkbox" name="hobby" value="movie">
		<p> 도시
		<select name="city" size="3"> <!-- 최초 보여줄 row의 수   -->
			<option value="seoul">서울특별시</option>
			<option value="deajuen">대전광역시</option>
			<option value="deagoo">대구광역시</option>
			<option value="busan">부산광역시</option>
		</select>
		</p>
		<p> 메모: <textarea name="comment" rows="10" cols="30" placeholder="최소 한 글자 이상 입력하세요"></textarea>
		<p><input type="submit" value="가입하기">
		<input type="reset" value="다시쓰기">
	</form>
</body>
</html>

<!-- 
 method="get"  
 쿼리 주는 것을 get 방식
 이렇게 하면 현재 jsp파일 주소 뒤에 id,pw를 추가하게 됨
 http://localhost:8080/BookStore/20220422.jsp?id=123&passwd=1234#
but, get방식의 단점 저렇게 외부에 데이터가 노출되게 됨 = 그래서 post 방식

 form 안에 들어가는 p는 id가 아니라 name 으로 줘야함

-->