<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>UserView</h1>

<div class="container">
		아이디 : ${list.id} <p>
		비밀번호 : ${list.pwd} <p>
		이름 :  ${list.name} <p>
		성별 : ${list.gender} <p>
		이메일 : ${list.email} <p>
		주소1 : ${list.address1} <p>
		주소2 : ${list.address2} <p>
		가입일 : ${list.join_date} <p>
		생일 : ${list.birth_date} <p>
		전화번호 : ${list.tel} <p>
    <button class="btn btn-primary" onclick="location.href='/'">홈으로가기</button>
    <button class="btn btn-primary" onclick="location.href='/user/info/${list.uid}/update'">내정보수정</button>
	<button class="btn btn-primary" onclick="location.href='/order/${sessionScope.uid}'">주문 내역 보기</button>
</div>
<%@ include file="../bootstrap.jsp" %>
</body>
</html>