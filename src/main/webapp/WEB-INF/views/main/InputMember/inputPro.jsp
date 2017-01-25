<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>


<c:if test="${cnt == 0}">
	<script type="text/javascript">
		errorAlert("회원가입에 실패하였습니다");
	</script>
</c:if>

<c:if test="${cnt != 0}">
	<script type="text/javascript">
		alert("회원가입을 완료되었습니다");
		window.location="main";
	</script>
	
</c:if>
