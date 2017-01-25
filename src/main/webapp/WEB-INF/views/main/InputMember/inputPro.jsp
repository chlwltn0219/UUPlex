<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>


<c:if test="${cnt == 0}">
	<script type="text/javascript">
		errorAlert("회원가입에 실패하였습니다");
<<<<<<< HEAD
=======
		window.history.back();
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
	</script>
</c:if>

<c:if test="${cnt != 0}">
	<script type="text/javascript">
		alert("회원가입을 완료되었습니다");
		window.location="main";
	</script>
	
</c:if>
