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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/admin/ranking.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
$(document).ready(function() {
	$("#ranking-hiddenMenu01").click(function() {
		if ($("#ranking-hiddenList01").is(":visible")) {
			$("#ranking-hiddenList01").hide();
		} else {
			$("#ranking-hiddenList01").show();
			$("#ranking-hiddenList02").hide();
			$("#ranking-hiddenList03").hide();
		}
	});
	$("#ranking-hiddenMenu02").click(function() {
		if ($("#ranking-hiddenList02").is(":visible")) {
			$("#ranking-hiddenList02").hide();
		} else {
			$("#ranking-hiddenList02").show();
			$("#ranking-hiddenList01").hide();
			$("#ranking-hiddenList03").hide();
		}
	});
	$("#ranking-hiddenMenu03").click(function() {
		if ($("#ranking-hiddenList03").is(":visible")) {
			$("#ranking-hiddenList03").hide();
		} else {
			$("#ranking-hiddenList03").show();
			$("#ranking-hiddenList01").hide();
			$("#ranking-hiddenList02").hide();
		}
	});
});
</script>
</head>
<body>
<div class="my-box">웹툰랭킹</div>
	<div class="cf">
		<div>
			<nav class="menu-nav">
				<a href="?page=toon.jsp" type="button" class="" id="">신규</a>
				<a href="?page=toonranking.jsp" type="button" class="" id="">랭킹</a>
				<a href="?page=toonfollow.jsp" type="button" class="" id="">팔로우</a>
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
						<a href="#" id="" class="">제목11</a>
						<a href="#" id="" class="">제목22</a>
						<a href="#" id="" class="">제목33</a>
						<a href="#" id="" class="">제목44</a>
						<a href="#" id="" class="">제목55</a>
						<a href="#" id="" class="">제목66</a>
						<a href="#" id="" class="">제목77</a>
						<a href="#" id="" class="">제목88</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>