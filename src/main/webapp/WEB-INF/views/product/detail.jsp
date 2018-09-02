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
<%@ include file="../header.jsp" %>
<h1>상품상세보기</h1>
<div>
<img src="/resources/img/${pinfo.img_name}.jpg" alt="${pinfo.img_name}">
</div>
상품번호 :${pinfo.product_id }<p>
상품명 :${pinfo.product_name}<p>
가격 :${pinfo.product_price}<p>
수량 :<input type="text" id="count"><p>
				<!-- 버튼 아직 안만듦 -->
<button class="btn btn-primary" id = "cart">장바구니</button>
<button class="btn btn-primary" id = "cartview" onclick="location.href='/order/cart/${sessionScope.uid}'">장바구니 보러가기</button>
<button class="btn btn-primary" onclick="location.href='/'">목록으로</button>
<script>
$(function(){
	 <c:if test="${sessionScope.id eq null}">
		alert('로그인 해 주세요');
		location.href='/user/login';
		</c:if>
	<c:if test="${sessionScope.id ne null}">
		$("#cart").click(function(){
			/* 
				
			 */
			if($("#count").val() != ""){
			  $.ajax({
					url: "/order/cart/${sessionScope.uid}",
					method: "post",
					data:{
						uid: ${sessionScope.uid},
						product_id: ${pinfo.product_id},
						count: $("#count").val(),
						price: ${pinfo.product_price}
					},
					success:function(data){
							alert('장바구니 넣기 성공');
							$('#cartview').css("visibility","visible");
							$('#cart').css("visibility","hidden");
					}
			   });
			}else{
				alert('수량을 입력해주세요');
				return false;
			}
			});
		</c:if>
});
</script>
<%@ include file="../bootstrap.jsp" %>
</body>
</html>