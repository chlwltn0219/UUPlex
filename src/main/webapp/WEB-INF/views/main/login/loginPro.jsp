<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<html>
<head>
</head>
<body>

<c:if test="${cnt == 1}">
	<script type="text/javascript">
		alert("로그인 되었습니다. ${id} 님 반갑습니다.");
		window.location="main";
	</script>
</c:if>

<c:if test="${cnt != 1}">
	<script type="text/javascript">
		alert("로그인오류");
		window.history.back();
	</script>
</c:if>

</body>
</html>