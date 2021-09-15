<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/member/joinForm.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		//취소 버튼
		$(".cencle").on("click", function() {
			location.href = "/mypage";
		})

		//서브밋 버튼
		$("#submit").on("click", function() {
			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			if ($("#password1").val() == "") {
				alert("패스워드를 입력해주세요.");
				$("#password1").focus();
				return false;
			}
			if ($("#password2").val() == "") {
				alert("확인 패스워드를 입력해주세요.");
				$("#password2").focus();
				return false;
			}
			if ($("#userName").val() == "") {
				alert("성명을 입력해주세요.");
				$("#userName").focus();
				return false;
			}
			if ($("#nickName").val() == "") {
				alert("별명을 입력해주세요.");
				$("#nickName").focus();
				return false;
			}
			if ($("#phone1").val() == "") {
				alert("전화번호를 입력해주세요.");
				$("#phone1").focus();
				return false;
			}
			if ($("#phone2").val() == "") {
				alert("전화번호를 입력해주세요.");
				$("#phone2").focus();
				return false;
			}
			if ($("#phone3").val() == "") {
				alert("전화번호를 입력해주세요.");
				$("#phone3").focus();
				return false;
			}
		});
	})
</script>
<body>
		<div>
			<h1>MyPage</h1>
		</div>
		<div>
			<p class="">
				정보를 모두 입력해주세요<br> <strong>모든 정보를 입력해주셔야 회원가입이 정상적으로 완료됩니다</strong>
			</p>
		</div>
	<section class="container">
		<form action="/mypage/member/join" name="join" method="post">
			<div class="">
				<div class="">
					<label>이메일 *</label>
				</div>
				<input id="email" type="email" name="email">
			</div>
			<div class="">
				<div class="label">
					<label>비밀번호 *</label>
				</div>
				<input id="password1" type="password" name="password">
			</div>
			<div class="">
				<div class="label">
					<label>비밀번호 재확인 *</label>
				</div>
				<input id="password2" type="password" name="re_password">
			</div>
			<div class="">
				<div class="label">
					<label>이름</label>
				</div>
				<input id="userName" type="text" name="userName" class="">
			</div>
			<div>
				<div class="">
					<label>닉네임</label>
				</div>
				<input id="nickName" type="text" name="nickName" class="">
			</div>
			<div class="input">
				<div class="label">
					<label>전화번호 *</label>
				</div>
				<input type="text" name="phone1" maxlength="3" class=""> 
					<span class="">-</span> 
				<input id="phone2" type="text" name="phone2" maxlength="4" class=""> 
					<span class="">-</span> 
				<input id="phone3" type="text" name="phone3" maxlength="4" class="">
			</div>
			<input type="submit" id="submit" value="생성">
			<button type="button">취소</button>
		</form>
	</section>
</body>
</html>