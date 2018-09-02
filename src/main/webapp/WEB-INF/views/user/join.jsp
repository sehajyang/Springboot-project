<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Join view</h1>
	ID : <input type = "text" name = "id"><br />
<!-- 	ajax 사용 -->
	<button class="btn btn-primary" id="idCheck">중복체크</button>
	PWD : <input type = "password" name = "pwd"><br />
	NAME : <input type = "text" name = "name"><br />
	GENDER : <input type = "text" name = "gender"><br />
	EMAIL : <input type = "text" name = "email"><br />
	ADDRESS : <input type = "text" name = "address1"><br />
	ADDRESS2 : <input type = "text" name = "address2"><br />
	BIRTH DATE : <input type = "text" name = "birth_date"><br />
	TEL : <input type = "text" name = "tel" placeholder ="010-0000-0000"><br />
    <button class="btn btn-primary" id="submitBtn">회원가입</button>
<%@ include file="../bootstrap.jsp" %>
<script>
	
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