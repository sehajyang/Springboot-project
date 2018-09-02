<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/custom.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<div id="home" style = "border:1px solid black">
<h1>Home</h1>
</div>
 <c:if test="${sessionScope.id ne null}">
 <h1>${sessionScope.name}님 안녕하세요</h1>
 <button class="btn btn-primary" onclick="location.href='/user/info/${sessionScope.uid}'">내정보보기</button>
 <button class="btn btn-primary" onclick="location.href='/order/cart/${sessionScope.uid}'">장바구니</button>
 <button class="btn btn-primary" onclick="location.href='/user/logout'">로그아웃</button>
 </c:if>
  <c:if test="${sessionScope.id eq null}">
<button class="btn btn-primary" onclick="location.href='/user/login'">로그인</button>
</c:if>
<%@ include file="bootstrap.jsp" %>
<script>
$("#home").click(function(){
	location.href='/';
});

</script>
