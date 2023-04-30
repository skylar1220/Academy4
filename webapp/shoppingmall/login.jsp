<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<meta charset="UTF-8">
<title>login</title>
</head>

<body>
<form action="j_security_check" name="loginForm" method="post">
	<jsp:include page="./menu.jsp"></jsp:include>
	<div class="container">
		<h1 class="display-3">로 그 인</h1>
	</div>
	<div class="container">
	  <div class="col-md-5">
	    <label for="exampleInputEmail1" class="form-label">ID</label>
	    <input type="text" name="j_username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
	    <div id="emailHelp" class="form-text">input the id</div>
	  </div>
	  <div class="col-md-5">
	    <label for="exampleInputPassword1" class="form-label">Password</label>
	    <input name="j_password" type="password" class="form-control" id="exampleInputPassword1">
	  </div>
	  <div class="col-md-5 form-check">
	    <input type="checkbox" class="form-check-input" id="exampleCheck1">
	    <label class="form-check-label" for="exampleCheck1">Check me out</label>
	  </div>
	  <button type="submit" class="btn btn-primary">Submit</button>
	</div>
</form>

</body>
</html>