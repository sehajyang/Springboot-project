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
    <table class="table table-hover">
        <tr>
            <th>No</th>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>이름</th>
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
            <td><input type = "text" name = "pwd" value="${list.pwd}"></td>
            <td>${list.name}</td>
            <td><input type = "text" name = "gender" value="${list.gender}"></td>
            <td><input type = "text" name = "email" value="${list.email}"></td>
            <td><input type = "text" name = "address1" value="${list.address1}"></td>
            <td><input type = "text" name = "address2" value="${list.address2}"></td>
            <td>${list.join_date}</td>
            <td><input type = "text" name = "birth_date" value="${list.birth_date}"></td>
            <td><input type = "text" name = "tel" value="${list.tel}"></td>
              </tr>
    </table>
</div>
    <input type="submit" value="수정완료" name="Submit" id="frm1_submit" />
</form>
    <button class="btn btn-primary" onclick="location.href='/'">홈으로가기</button>
<%@ include file="../bootstrap.jsp" %>
</body>
</html>