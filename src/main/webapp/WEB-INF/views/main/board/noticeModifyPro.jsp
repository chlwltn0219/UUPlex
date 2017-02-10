<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>


<c:if test="${cnt == 0}">
	<script type="text/javascript">
		alert("수정에 실패하였습니다.");
		window.history.back();
	</script>
</c:if>

<c:if test="${cnt != 0}">
	<script type="text/javascript">
		alert("수정이 완료되었습니다.");
		window.location="notice?shopCode=" + ${shopCode};
	</script>
	
</c:if>
