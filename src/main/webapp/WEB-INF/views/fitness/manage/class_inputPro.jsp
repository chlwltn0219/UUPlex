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
			// error 스크립트
		</script>
	</c:if>

	<c:if test="${cnt != 0}">
		<h1>등록 완료 되었습니다.</h1>
		<c:redirect url="/fitness/manage/class/list"/>
	</c:if>

</body>
</html>