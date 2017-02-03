<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>    
    
<html>
<head>

</head>
<body>

	<c:if test="${cnt == 0}">
			<script type="text/javascript">
				alert("비밀번호가 일치하지 않습니다.");
				window.location="memInfo";
			</script>
	</c:if>	
	
	<c:if test="${cnt == 1}">
		<c:if test="${delcnt == 0}">
			<script type="text/javascript">
				alert("회원탈퇴에 실패하였습니다.");
				window.location="memInfo";
			</script>	
		</c:if>	
		<c:if test="${delcnt == 1}">
			<script type="text/javascript">
				alert("회원탈퇴가 완료되었습니다.");
				window.location="main";
			</script>	
		</c:if>	
	</c:if>

</body>
</html>