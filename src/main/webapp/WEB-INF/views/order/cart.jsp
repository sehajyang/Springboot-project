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
<h1>Cart</h1>
<div class="container">
    <table class="table table-hover">
        <tr>
        	<th>cartNum</th>
            <th>product_id</th>
            <th>product_name</th>
            <th>price</th>
            <th>img_name</th>
            <th>count</th>
        </tr>
          <c:forEach var="list" items="${list}">
        	  <tr>
              	  <td>${list.cart_num}</td>
              	  <td>${list.product_id}</td>
                  <td>${list.product_name}</td>
                  <td>${list.product_price}</td>
                 <td><img src="/resources/img/${list.img_name}.jpg" alt="${list.img_name}"></td>
                  <td><input type ="text" id ="count${list.cart_num}" value="${list.count}"> &nbsp;  
                  <button class="btn btn-primary" id="countBtn" onclick="myFunction(${list.cart_num})">수정</button>
                  <td><input type ="text" id ="price${list.cart_num}" value="${list.product_price}" style="visibility: hidden"> &nbsp;  
                  </td>
             </tr>
          </c:forEach>
    </table>
    <h2>총 금액 : ${totalPrice}</h2><p>
</div>
    <button class="btn btn-primary" id="orderBtn" onclick="location.href='/order/buy/${sessionScope.uid}'">주문하기</button>
<%@ include file="../bootstrap.jsp" %>
<script>
	$(function(){
	<c:if test="${list[0].cart_num eq null}">
	$('#orderBtn').css("visibility","hidden");
	alert('카트가 비어있습니다');
	return false;
	</c:if>
	});

	function myFunction(data) {
	var data2 = $("#price"+data).val();
	var data3 = $("#count"+data).val();
	$.ajax({
		url: "/order/cartup/${sessionScope.uid}",
		method: "post",
		data:{
			cart_num: data,
			product_price :data2,
			count: data3
		},
		success:function(data){
				alert('수정되었습니다');
				location.reload();
		}
   });
}
</script>
</body>
</html>