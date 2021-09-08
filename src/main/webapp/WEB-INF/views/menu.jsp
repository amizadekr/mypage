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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/admin/menu.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/admin/template.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script>
	$(document).ready(function() {
		$("#spreadBtn01").click(function() {
			if ($("#hiddenList01").is(":visible")) {
				$("#hiddenList01").hide();
			} else {
				$("#hiddenList01").show();
				$("#hiddenList02").hide();
				$("#hiddenList03").hide();
				$("#hiddenList04").hide();
			}
		});
		$("#spreadBtn02").click(function() {
			if ($("#hiddenList02").is(":visible")) {
				$("#hiddenList02").hide();
			} else {
				$("#hiddenList02").show();
				$("#hiddenList01").hide();
				$("#hiddenList03").hide();
				$("#hiddenList04").hide();
			}
		});
		$("#spreadBtn03").click(function() {
			if ($("#hiddenList03").is(":visible")) {
				$("#hiddenList03").hide();
			} else {
				$("#hiddenList03").show();
				$("#hiddenList01").hide();
				$("#hiddenList02").hide();
				$("#hiddenList04").hide();
			}
		});
		$("#spreadBtn04").click(function() {
			if ($("#hiddenList04").is(":visible")) {
				$("#hiddenList04").hide();
			} else {
				$("#hiddenList04").show();
				$("#hiddenList01").hide();
				$("#hiddenList02").hide();
				$("#hiddenList03").hide();
			}
		});
	});
</script>
</head>
<body>
	<div class="left-con">
		<nav class="mng-nav">
			<ul>
				<li class="menu">
				<a href="#" id="spreadBtn01" class="a01">홈</a>
					<ul id="hiddenList01" class="example01">
						<li class="gnb00"><a href="?page=newtoon.jsp">신작</a></li>
						<li class="gnb01"><a href="?page=newrankingtoon.jsp">랭킹</a></li>
					</ul>
				</li>
				<li class="menu">
				<a href="#" id="spreadBtn02" class="a01">웹툰</a>
					<ul id="hiddenList02" class="example01">
						<li class="gnb02"><a href="?page=toon.jsp">신규</a></li>
						<li class="gnb03"><a href="?page=toonranking.jsp">랭킹</a></li>
						<li class="gnb03"><a href="?page=toonfollow.jsp">팔로우</a></li>
					</ul>
				</li>
				<li class="menu">
				<a href="#" id="spreadBtn03" class="a01">소설</a>
					<ul id="hiddenList03" class="example01">
						<li class="gnb02"><a href="?page=novel.jsp">신규</a></li>
						<li class="gnb03"><a href="?page=novelranking.jsp">랭킹</a></li>
						<li class="gnb03"><a href="?page=novelfollow.jsp">팔로우</a></li>
					</ul>
				</li>
				<li class="menu">
				<a href="#" id="spreadBtn04" class="a01">일러스트</a>
					<ul id="hiddenList04" class="example01">
						<li class="gnb02"><a href="?page=illust.jsp">신규</a></li>
						<li class="gnb03"><a href="?page=illustranking.jsp">랭킹</a></li>
						<li class="gnb03"><a href="?page=illustfollow.jsp">팔로우</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
</body>
</html>