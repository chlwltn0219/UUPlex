<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${cnt != 0}">
		<h1>수정 완료 되었습니다.</h1>
		<script type="text/javascript">
			alert("수정 되었습니다");
			window.location = "/uuplex/fitness/manage/program/list";
		</script>
	</c:if>

	<c:if test="${cnt == 0}">
		<h1>수정 실패하였습니다.</h1>
		<script type="text/javascript">
		alert("수정 실패 하였습니다.");
		window.location = "/uuplex/fitness/manage/program/list";
		</script>
	</c:if>

</body>
</html>