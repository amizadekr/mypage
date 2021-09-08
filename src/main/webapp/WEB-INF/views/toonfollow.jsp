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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/admin/follow.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
$(document).ready(function() {
	$("#follow-hiddenMenu01").click(function() {
		if ($("#follow-hiddenList01").is(":visible")) {
			$("#follow-hiddenList01").hide();
		} else {
			$("#follow-hiddenList01").show();
			$("#follow-hiddenList02").hide();
			$("#follow-hiddenList03").hide();
		}
	});
	$("#follow-hiddenMenu02").click(function() {
		if ($("#follow-hiddenList02").is(":visible")) {
			$("#follow-hiddenList02").hide();
		} else {
			$("#follow-hiddenList02").show();
			$("#follow-hiddenList01").hide();
			$("#follow-hiddenList03").hide();
		}
	});
	$("#follow-hiddenMenu03").click(function() {
		if ($("#follow-hiddenList03").is(":visible")) {
			$("#follow-hiddenList03").hide();
		} else {
			$("#follow-hiddenList03").show();
			$("#follow-hiddenList01").hide();
			$("#follow-hiddenList02").hide();
		}
	});
});
</script>
</head>
<body>
<div class="my-box">웹툰팔로우</div>
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
						<a href="#" id="" class="">제목111</a>
						<a href="#" id="" class="">제목222</a>
						<a href="#" id="" class="">제목333</a>
						<a href="#" id="" class="">제목444</a>
						<a href="#" id="" class="">제목555</a>
						<a href="#" id="" class="">제목666</a>
						<a href="#" id="" class="">제목777</a>
						<a href="#" id="" class="">제목888</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>