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
			errorAlert("글작성 실패");
		</script>
		<c:redirect url="eventWrite" />
	</c:if>	
	
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("글이 등록되었습니다.");
			window.location="event?shopCode=" + ${shopCode};
		</script>	
	</c:if>

</body>
</html>