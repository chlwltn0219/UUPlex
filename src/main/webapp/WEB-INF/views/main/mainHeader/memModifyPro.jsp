<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>    
    
<html>
<head>

</head>
<body>

	<c:if test="${cnt == 0}">
		<!-- 작성 실패 -->
		<script type="text/javascript">
			errorAlert("수정 실패");
		</script>
		<c:redirect url="memInfo" />
	</c:if>	
	
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("개인정보가 수정 되었습니다.");
			window.location="memInfo";
		</script>	
	</c:if>

</body>
</html>