<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 추가</title>
</head>
<body>
	<c:if test="${cnt == 0}">
		<script type="text/javascript">
			alert("리뷰작성에 실패했습니다. 잠시후 다시 시도해주세요");
		</script>
	
	</c:if>
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("리뷰가 성공적으로 작성되었습니다!.");
			history.back();
		</script>
	
	</c:if>
</body>
</html>