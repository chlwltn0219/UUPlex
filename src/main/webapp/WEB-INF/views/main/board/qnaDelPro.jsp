<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>    
    
   
<c:if test="${delCnt == 0}">
	<script type="text/javascript">
		alert("삭제에 실패하였습니다.");
		window.history.back();
	</script>
</c:if>

<c:if test="${delCnt != 0}">
	<script type="text/javascript">
		alert("삭제가 완료되었습니다.");
		window.location="qna?shopCode=" + ${shopCode};
	</script>
	
</c:if>