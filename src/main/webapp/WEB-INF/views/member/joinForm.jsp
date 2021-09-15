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
</head>
<script>
	function checkAll() {

		var rePw = /^[a-zA-Z0-9]{8,15}$/;
		var reName = /^[가-힣]{1,5}$/;
		var reNickName = /^[가-힣]{1,6}$/;
		var reEmail = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
		// 이메일 정규표현식 검사
		if (!reEmail.test($("#email").val())) {
			alert("올바른 이메일 양식을 입력하세요");
			$("#email").val("");
			$("#email").focus();
			return false;
		}

		// 비밀번호 정규표현식 검사
		if (!rePw.test($("#password1").val())) {
			alert("비밀번호는 영문 대소문자와 숫자 8~15자리로 입력하세요");
			$("#password1").val("");
			$("#password1").focus();
			return false;
		}

		//비밀번호 동일한지 검사
		if ($("#password1").val() != $("#password2").val()) {
			alert("비밀번호를 동일하게 입력하세요");
			$("#password2").val("");
			$("#password2").focus();
			return false;
		}

		// 이름 정규표현식 검사
		if (!reName.test($("#userName").val())) {
			alert("이름은 한글 1~5자로 입력하세요");
			$("#userName").val("");
			$("#userName").focus();
			return false;
		}

		// 닉네임 정규표현식 검사
		if (!reNickName.test($("#nickName").val())) {
			alert("닉네임은 한글 1~6자로 입력하세요");
			$("#nickName").val("");
			$("#nickName").focus();
			return false;
		}

		// 전화번호2 공백 검사
		if ($("#phone2").val() == "" || $("#phone2").val() == null) {
			alert("2번째 전화번호를 입력하세요");
			$("#phone2").focus();
			return false;
		}

		// 전화번호 수 검사
		if ($("#phone2").val().length < 3) {
			alert("전화번호는 3~4자리로 입력하세요");
			$("#phone2").val("");
			$("#phone2").focus();
			return false;
		}

		// 전화번호3 공백 검사
		if ($("#phone3").val() == "" || $("#phone3").val() == null) {
			alert("3번째 전화번호를 입력하세요");
			$("#phone3").focus();
			return false;
		}

		// 전화번호 수 검사
		if ($("#phone3").val().length < 4) {
			alert("전화번호는 4자리로 입력하세요");
			$("#phone3").val("");
			$("#phone3").focus();
			return false;
		}

		var phone = $("#phone1").val() + "-" + $("#phone2").val() + "-"
				+ $("#phone3").val();
		$.ajax({
			type : "POST",
			url : "/mypage/member/joinMember",
			data : {
				"EMAIL" : $("#email").val(),
				"PASSWORD" : $("#password1").val(),
				"USERNAME" : $("#userName").val(),
				"NICKNAME" : $("#nickName").val(),
				"PHONE" : phone
			},
			dataType : "json",
			error : function(erromr) {
				alert("서버가 응답하지 않습니다. \n다시 시도해주시기 바랍니다.");
			},
			success : function(result) {
				if (result == 0) {
					location.href = "?page=/";
				} else {
					alert("에러가 발생하였습니다.");
				}
			}
		})
	}

	$(function() {
		$('#email').keyup(function() {
			$.ajax({
				type : "POST",
				url : "/member/emailCheck",
				data : {
					"email" : $('#email').val()
				},
				success : function(data) {
					if (data == "YES") {
						$('#emailCheck').text("이미 사용중인 이메일 입니다");
						$('#email').focus();
						return false;
					} else if (data == "NO") {
						$('#emailCheck').text("사용 가능한 이메일 입니다");
						return true;
					}
				}

			})

		})

		// 닉네임 중복 확인
		$('#nickName').keyup(function() {
			$.ajax({
				type : "POST",
				url : "/member/nickNameCheck",
				data : {
					"nickName" : $('#nickName').val()
				},
				success : function(data) {
					if (data == "YES") {
						$('#nickNameCheck').text("이미 사용중인 닉네임 입니다");
						$('#nickName').focus();
						return false;
					} else {
						$('#nickNameCheck').text("사용 가능한 닉네임 입니다");
						return true;
					}
				}
			})
		})

	});
</script>
<body>
	<form class="container">
		<section>
			<h1>회원가입</h1>
			<p class="description">
				정보를 모두 입력해주세요<br> <strong>모든 정보를 입력해주셔야 회원가입이 정상적으로 완료됩니다</strong>
			</p>
			<div class="input">
				<div class="label" style="float: left; margin-right: 10px;">
					<label>이메일 *</label>
				</div>
				<div id="emailCheck" style="float: left; font-size: 3px; font-family: 맑은 고딕, sans-serif; color: red;"></div>
				<input id="email" type="email" name="email" maxlength="255" autocomplete="off" class="large">
			</div>
			<div class="input">
				<div class="label">
					<label>비밀번호 *</label>
				</div>
				<input id="password1" type="password" name="password" maxlength="45" autocomplete="off" class="medium" style="">
			</div>
			<div class="input">
				<div class="label">
					<label>비밀번호 재확인 *</label>
				</div>
				<input id="password2" type="password" name="re_password" maxlength="45" autocomplete="off" class="medium">
			</div>
			<div class="input">
				<div class="label">
					<label>이름</label>
				</div>
				<input id="userName" type="text" name="userName" maxlength="45" autocomplete="off" class="medium">
			</div>
			<div class="input">
				<div class="label" style="float: left; margin-right: 10px;">
					<label>닉네임</label>
				</div>
				<div id="nickNameCheck" style="float: left; font-size: 3px; font-family: 맑은 고딕, sans-serif; color: red;"></div>
				<input id="nickName" type="text" name="nickName" maxlength="45" autocomplete="off" class="medium">
			</div>

			<div class="input">
				<div class="label">
					<label>전화번호 *</label>
				</div>
				<input type="text" name="phone1" maxlength="4" autocomplete="off" class="small" value="010" readonly> 
					<span class="delimiter">-</span> 
				<input id="phone2" type="text" name="phone2" maxlength="4" autocomplete="off" class="small"> 
					<span class="delimiter">-</span> 
				<input id="phone3" type="text" name="phone3" maxlength="4" autocomplete="off" class="small">
			</div>
			<button onclick="checkAll()">다음</button>
		</section>
	</form>
</body>
</html>