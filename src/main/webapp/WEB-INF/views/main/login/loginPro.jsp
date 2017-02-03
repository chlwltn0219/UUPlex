<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<html>
<head>
</head>
<body>

<c:if test="${cnt == 1}">

	<c:if test="${idCode == 101}">
		<script type="text/javascript">
			alert("[전체관리자] 님 로그인하셨습니다.");
			location.href = document.referrer;
		</script>
	</c:if>
	
	<c:if test="${idCode == 105}">
		<script type="text/javascript">
			alert("로그인 되었습니다. ${id} 님 반갑습니다.");
			location.href = document.referrer;
		</script>
	</c:if>
</c:if>

<c:if test="${cnt != 1}">
	<script type="text/javascript">
		alert("로그인오류");
		window.history.back();
	</script>
</c:if>

</body>
</html>