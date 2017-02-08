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



	<c:if test="${cnt == 0}">
		<h1>등록 실패 하셨습니다.</h1>
		<script type="text/javascript">
			alert("등록 실패...");
			window.location = "/uuplex/fitness/user/reserve";
		</script>
	</c:if>

	<c:if test="${cnt == 1}">
		<h1>등록 완료 되었습니다.</h1>
		<script type="text/javascript">
			alert("등록 성공!");
			window.location = "/uuplex/fitness/user/reserve";
		</script>
	</c:if>
	
	<c:if test="${cnt == 2}">
		<h1>로그인이 필요한 서비스 입니다.</h1>
		<script type="text/javascript">
			alert("로그인인 필요한 서비스입니다. 로그인해주세요.");
			window.location = "/uuplex/fitness/user/reserve";
		</script>
	</c:if>

</body>
</html>