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
			<ul class="menu01">
				<li class="menu_01">
				<a href="#" id="spreadBtn01" class="a01">???</a>
					<ul id="hiddenList01" class="example01">
						<li class="gnb00"><a href="?page=newtoon.jsp">??????</a></li>
						<li class="gnb01"><a href="?page=newrankingtoon.jsp">??????</a></li>
					</ul>
				</li>
				<li class="menu_01">
				<a href="#" id="spreadBtn02" class="a01">??????</a>
					<ul id="hiddenList02" class="example01">
						<li class="gnb02"><a href="?page=toon.jsp">??????</a></li>
						<li class="gnb03"><a href="?page=toonranking.jsp">??????</a></li>
					</ul>
				</li>
				<li class="menu_01">
				<a href="#" id="spreadBtn03" class="a01">??????</a>
					<ul id="hiddenList03" class="example01">
						<li class="gnb02"><a href="?page=novel.jsp">??????</a></li>
						<li class="gnb03"><a href="?page=novelranking.jsp">??????</a></li>
					</ul>
				</li>
				<li class="menu_01">
				<a href="#" id="spreadBtn04" class="a01">????????????</a>
					<ul id="hiddenList04" class="example01">
						<li class="gnb02"><a href="?page=illust.jsp">??????</a></li>
						<li class="gnb03"><a href="?page=illustranking.jsp">??????</a></li>
					</ul>
				</li>
			</ul>
			<ul class="menu02">
				<li class="menu_02">
				<a href="#" id="" class="a01">??????</a>
					<ul>
						<li><a href="">?????????1</a></li>
						<li><a href="">?????????2</a></li>
						<li><a href="">?????????3</a></li>
						<li><a href="">?????????4</a></li>
						<li><a href="">?????????5</a></li>
						<li><a href="">?????????6</a></li>
						<li><a href="">?????????7</a></li>
						<li><a href="">?????????8</a></li>
						<li><a href="">?????????9</a></li>
						<li><a href="">?????????0</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
</body>
</html>