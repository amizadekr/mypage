<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="utf-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/member/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	
	function fn_login() {
		
		if($("#email").val()=="" || $("#email").val()==null) {
			alert("이메일을 입력하세요");
			$("#email").focus();
			return false;
		}
		
		if($("#password").val()=="" || $("#password").val()==null) {
			alert("비밀번호를 입력하세요");
			$("#password").focus();
			return false;
		}
	}

</script>
</head>
<body>
	<div>
		<div class="wrap">
			<h1>로그인</h1>
			<p>
				여백<br> <strong>여백</strong>여백 <strong>여백</strong>여백
			</p>
		</div>
	</div>
	<form name="login" method="post" action="?page=login" onsubmit="return fn_login()">
		<div class="wrap">
			<input id="email" type="text" name="email" class="text" placeholder="이메일"> 
			<input id="password" type="password" name="password" class="text" placeholder="비밀번호">
			<button type="submit" class="login-btn">로그인</button>
			<hr>
			<a href="" class="">아이디/비밀번호 찾기</a>
			<hr>
			<a href="joinForm" class="">
				<span>마이페이지 계정이 없으신가요?</span> <strong>회원가입</strong>
			</a>
		</div>
		<input type="hidden" name="redirect">
	</form>
</body>
</html>