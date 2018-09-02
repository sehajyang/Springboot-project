<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	padding: 10%;
}
</style>

</head>
<body>
<%@ include file="../header.jsp" %>
	<h1>orderdetail view</h1>

	<table class="table table-hover">
		<tr>
			<th>_</th>
			<th>No</th>
			<th>물품명</th>
			<th>갯수</th>
			<th>가격</th>
		</tr>

		<c:forEach var="list" items="${ditem}">
			 <tr onclick="location.href='/product/${list.product_id}'">
				<td><img src="/resources/img/${list.img_name}.jpg" alt="${list.img_name}"></td>
				<td>${list.order_id}</td>
				<td>${list.product_name}</td>
				<td>${list.count}</td>
				<td>${list.orderdetail_price}</td>

			</tr>
		</c:forEach>
	</table>
	<table class="table table-hover">
		<tr>
			<th>주문자</th>
			<th>주문자 이메일</th>
			<th>주문자 휴대전화</th>
			<th>받는사람</th>
			<th>받는사람 휴대전화</th>
			<th>받는사람 주소1</th>
			<th>받는사람 주소2</th>
		</tr>
		<tr>
			<td>${ditem[0].order_name}</td>
			<td>${ditem[0].order_email}</td>
			<td>${ditem[0].order_tel}</td>
			<td>${ditem[0].d_name}</td>
			<td>${ditem[0].d_tel}</td>
			<td>${ditem[0].d_address1}</td>
			<td>${ditem[0].d_address2}</td>
		</tr>

	</table>

	<a href="#" onclick="history.back()">뒤로가기</a>

	<%@ include file="../bootstrap.jsp"%>
</body>
</html>