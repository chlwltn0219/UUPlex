<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sports Input Pro</title>
</head>
<body>

	<c:if test="${cnt != 0}"></h1>
		<script type="text/javascript">
			alert("등록 되었습니다");
			window.location = "/uuplex/fitness/manage/class/list";
		</script>
	</c:if>

	<c:if test="${cnt == 0}">
		<script type="text/javascript">
		alert("등록 실패 하였습니다.");
		window.location = "/uuplex/fitness/manage/class/list";
		</script>
	</c:if>
	
</body>
</html>