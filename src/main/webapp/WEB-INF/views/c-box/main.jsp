<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${contentPage==null}">
		<c:set var="contentPage" value="youtube.jsp" />
	</c:if>

	<div class="wrap">
		<div class="wrap01">
			
			
		</div>

		<div class="wrap15">
			

			<jsp:include page="${contentPage}" />

		</div>
		
	</div>
</body>
</html>