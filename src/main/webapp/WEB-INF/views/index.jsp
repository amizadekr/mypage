<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	<%
		String select = request.getParameter("page");

		if (select == null) {
			select = "newtoon.jsp";
		}
	%>
</script>
</head>
<body>
<table>
	<!-- top -->
	<jsp:include page="top.jsp" flush="false"/>
	<!-- menu -->
	<div class="main-list">
		<div>
			<div>
				<jsp:include page="menu.jsp" flush="false"/>
			</div>
			<div>
				<jsp:include page="<%=select%>" flush="false"/>
			</div>
		</div>
	</div>
	<!-- footer -->
	<jsp:include page="bottom.jsp" flush="false"/>
</table>
</body>
</html>