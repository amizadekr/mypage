<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/admin/new.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<div class="my-box">신작목록</div>
	<div class="cf">
		<div>
			<nav class="menu-nav">
				<a href="?page=newtoon.jsp" type="button" class="" id="">웹툰</a>
				<a href="?page=newnovel.jsp" type="button" class="" id="">소설</a>
				<a href="?page=newillust.jsp" type="button" class="" id="">일러스트</a>
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