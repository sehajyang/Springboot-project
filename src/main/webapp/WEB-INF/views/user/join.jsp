<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	padding : 10%;
}
</style>
</head>
<body>
<h1>Join view</h1>
	ID : <input type = "text" name = "id">
	<button class="btn btn-primary" id="idCheck">중복체크</button><p>
	PWD : <input type = "password" name = "pwd"><p>
	NAME : <input type = "text" name = "name"><p>
	GENDER : <input type = "text" name = "gender"><p>
	EMAIL : <input type = "text" name = "email"><p>
	ADDRESS : <input type = "text" name = "address1"><p>
	ADDRESS2 : <input type = "text" name = "address2"><p>
	BIRTH DATE : <input type = "text" name = "birth_date" placeholder ="1990-01-01"><p>
	TEL : <input type = "text" name = "tel" placeholder ="010-0000-0000"><p>
    <button class="btn btn-primary" id="submitBtn">회원가입</button>
<%@ include file="../bootstrap.jsp" %>
<script>
	//아이디 중복체크 ajax
	$("#idCheck").click(function(){
		var data = $('input[name=id]').val();
		$.ajax({
			url: "/user/idcheck/"+data,
			method: "get",
			success:function(data){
				alert(data);
			}
	   });
	});
	//가입양식 제출 ajax
	$("#submitBtn").click(function(){
		$.ajax({
			url: "/user/signup",
			method: "post",
			data : {
				id : $('input[name=id]').val(),
				pwd : $('input[name=pwd]').val(),
				name : $('input[name=name]').val(),
				gender : $('input[name=gender]').val(),
				email : $('input[name=email]').val(),
				address1 : $('input[name=address1]').val(),
				address2 : $('input[name=address2]').val(),
				birth_date : $('input[name=birth_date]').val(),
				tel : $('input[name=tel]').val(),
			},
			success:function(data){
				if(data == 1){
					alert('회원가입 성공');
					location.href = "/user/login";
				}else{
					alert('회원가입 실패(이미 있는 아이디입니다)');
					location.href = "/user/signup";
				}
				
			}
	   });
	});
</script>
</body>
</html>