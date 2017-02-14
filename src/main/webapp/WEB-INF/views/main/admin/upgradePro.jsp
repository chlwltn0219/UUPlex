<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>


<c:if test="${cnt == 0}">
	<script type="text/javascript">
		errorAlert("등업 실패");
		window.history.back();
	</script>
</c:if>

<c:if test="${cnt != 0}">
	<script type="text/javascript">
		alert("등업이 완료되었습니다.");
		window.location="memberList?grade=전체";
	</script>
	
</c:if>
