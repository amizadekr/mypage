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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/admin/toon.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
<div class="my-box">일러스트목록</div>
	<div class="cf">
		<div>
			<nav class="menu-nav">
				<a href="?page=illust.jsp" type="button" class="" id="">신규</a>
				<a href="?page=illustranking.jsp" type="button" class="" id="">랭킹</a>
				<a href="?page=illustfollow.jsp" type="button" class="" id="">팔로우</a>
			</nav>
		</div>
		<table>
			<colgroup>
				<col width="">
				<col width="">
				<col width="">
				<col width="">
				<col width="">
				<col width="">
				<col width="">
				<col width="">
			</colgroup>
			<tbody>
				<tr>
					<td>
						<a href="#" id="" class="">제목1</a>
						<a href="#" id="" class="">제목2</a>
						<a href="#" id="" class="">제목3</a>
						<a href="#" id="" class="">제목4</a>
						<a href="#" id="" class="">제목5</a>
						<a href="#" id="" class="">제목6</a>
						<a href="#" id="" class="">제목7</a>
						<a href="#" id="" class="">제목8</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>