<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
body {
	padding : 10%;
}
</style>
</head>
<body>
<h1>Login view</h1>
<form action="/user/login" method="post">
	ID : <input type = "text" name = "id"><p>
	PWD : <input type = "password" name = "pwd"><p>
    <input type="submit" value="로그인" name="Submit" id="frm1_submit" /><p>
</form>
<button class="btn btn-primary" id="joinBtn" onclick="location.href='/user/signup'">회원가입</button>
<%@ include file="../bootstrap.jsp" %>
</body>
</html>