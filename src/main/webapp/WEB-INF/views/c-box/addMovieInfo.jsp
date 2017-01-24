<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화정보추가처리</title>
</head>
<body>
	<c:if test="${cnt == 0}">
		<script type="text/javascript">
			alert("영화정보추가에 실패했습니다. 잠시후 다시 시도해주세요");
		</script>
	
	</c:if>
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("영화정보가 추가되었습니다.");
		</script>
		<c:redirect url="c-box/ManageMovieInfo"/>
	
	</c:if>
</body>
</html>