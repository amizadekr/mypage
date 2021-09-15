<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/admin/template.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<div class="top">
		<span class="top-logo">
			<a href="/mypage" > MyPage </a>
		</span>
		<span class="top-search">
			<input type="text" placeholder="'나혼자레벨업'인기검색어" class="top-text">
				<button type="button" class="top-button">검색</button>
			|
			<c:choose>
				<c:when test="${member==null }">
					<div class="account">
						<a href="?page=/member/loginForm" class="blue">로그인</a>
						<span>|</span>
						<a href="?page=/member/joinForm" class="white">회원가입</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="account">
						<a href="/myPage" class="blue">마이페이지</a>
						<a href="/logout" class="white">로그아웃</a>
					</div>
				</c:otherwise>
			</c:choose>
		</span>
	</div>
</body>
</html>