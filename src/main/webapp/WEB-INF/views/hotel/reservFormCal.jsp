<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<c:if test="${reservCnt > 0}">
<a style="color:red;">이미 예약된 날짜입니다.</a>
</c:if>

<c:if test="${reservCnt == 0}">
<a style="color:green;">예약 가능한 날짜입니다.</a>
<input type="hidden" name="reserveChk" value="1">

</c:if>
</body>
</html>