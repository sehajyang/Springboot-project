<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#buybtn {
	background-color: #ff9933;
	border-radius: 3px;
}
body {
	padding: 10%;
}
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<body>
<div class="container">
<h1>구매 창</h1>
		<h3>상품 리스트</h3>
    <table class="table table-hover">
        <tr>
            <th>물품명</th>
            <th>개당 가격</th>
            <th>_</th>
            <th>갯수</th>
        </tr>
          <c:forEach var="list" items="${list}">
        	  <tr>
                  <td>${list.product_name}</td>
                  <td>${list.product_price}</td>
                  <td><img src="/resources/img/${list.img_name}.jpg" alt="${list.img_name}"></td>
                  <td>${list.count}</td>
             </tr>
          </c:forEach>
    </table>
</div>
<hr>
	<form action="/order/buy/${sessionScope.uid}" method="post">
		
		<h3>주문자 정보</h3>
		이름 : <input type = "text" name = "order_name" value="${sessionScope.name }">
		이메일 : <input type = "text" name = "order_email">
		휴대전화 : <input type = "text" name = "order_tel" placeholder="010-0000-0000">
		<h3>배송지 정보</h3>

		이름 : <input type = "text" name = "d_name" value="${sessionScope.name }">
		휴대전화 : <input type = "text" name = "d_tel" placeholder="010-0000-0000">
		주소1: <input type = "text" name = "d_address1">
		주소2: <input type = "text" name = "d_address2">
		<h3>결제 정보</h3>
		가격 : <input type = "text" name = "total_price" value="${totalPrice}"readonly><p>
		<input type="submit" value="구매" name="Submit" id="buybtn" />
	</form>
	<button class="btn .btn-default" onclick="history.back()">결제취소</button>
	<%@ include file="../bootstrap.jsp" %>
	<script>
	$('#buybtn').click(function() {
		if ($('input[name=order_name]').val() == ""||$('input[name=order_email]').val() == ""||
			$('input[name=order_tel]').val() == ""||$('input[name=d_name]').val() == ""||
			$('input[name=d_tel]').val() == ""||$('input[name=d_address1]').val() == ""||
			$('input[name=d_address2]').val() == "") {
			alert('필수 항목을 입력해주세요');
			return false;
		}
		
		});
	</script>
</body>
</html>