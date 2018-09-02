<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>UserView</h1>
<!-- form 써야됨 -->
<form action="/user/info/${list.uid}/update" method="post"><br />
<div class="container">
		No : ${list.uid} <p>
		아이디 : ${list.id} <p>
		비밀번호 :  <input type = "text" name = "pwd" value="${list.pwd}"> <p>
		이름 :  ${list.name} <p>
		성별 : <input type = "text" name = "gender" value="${list.gender}"> <p>
		이메일 :  <input type = "text" name = "email" value="${list.email}"> <p>
		주소1 : <input type = "text" name = "address1" value="${list.address1}"> <p>
		주소2 :   <input type = "text" name = "address2" value="${list.address2}"> <p>
		가입일 :   ${list.join_date} <p>
		생일 : <input type = "text" name = "birth_date" value="${list.birth_date}"> <p>
		전화번호 :   <input type = "text" name = "tel" value="${list.tel}"> <p>
</div>
    <input type="submit" value="수정완료" name="Submit" id="frm1_submit" />
</form>
    <button class="btn btn-primary" onclick="location.href='/'">홈으로가기</button>
<%@ include file="../bootstrap.jsp" %>
</body>
</html>