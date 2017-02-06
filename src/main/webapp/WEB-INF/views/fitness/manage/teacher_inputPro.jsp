<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>teacher_inputPro</title>
</head>
<body>

<h2>등록이 완료되었습니다.</h2>

<c:if test="${cnt==0}">
	<script type="text/javascript">
		errorAlert(insertError);
	</script>	
</c:if>

<c:if test="${cnt==1}">
<c:redirect url="/fitness/manage/teacher/list" /> 
</c:if>

</body>
</html>