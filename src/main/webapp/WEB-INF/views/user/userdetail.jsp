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
    <table class="table table-hover">
        <tr>
            <th>No</th>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>성별</th>
            <th>이메일</th>
            <th>주소1</th>
            <th>주소2</th>
            <th>가입일</th>
            <th>생일</th>
            <th>전화번호</th>
        </tr>
          <tr>
        	<td>${list.uid}</td> 
            <td>${list.id}</td>
            <td>${list.pwd}</td>
            <td>${list.name}</td>
            <td>${list.gender}</td>
            <td>${list.email}</td>
            <td>${list.address1}</td>
            <td>${list.address2}</td>
            <td>${list.join_date}</td>
            <td>${list.birth_date}</td>
            <td>${list.tel}</td>
              </tr>
    </table>
    <button class="btn btn-primary" onclick="location.href='/'">홈으로가기</button>
    <button class="btn btn-primary" onclick="location.href='/user/info/${list.uid}/update'">내정보수정</button>
	<button class="btn btn-primary" onclick="location.href='/order/${sessionScope.uid}'">주문 내역 보기</button>
</div>
<%@ include file="../bootstrap.jsp" %>
</body>
</html>