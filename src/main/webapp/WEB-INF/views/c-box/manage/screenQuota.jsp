<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table class="table">
		<tr>
			<th>상영관</th>
			<th>한국영화 상영일수</th>
			<th>남은 일수</th>
		</tr>
		<c:if test="${sq == null}">
			<tr>
				<td colspan="3">상영내역이 없습니다.</td>
			</tr>
		
		</c:if>
		<c:if test="${sq != null}">
			<c:forEach items="${sq}" var="dto">
			<tr>
				<td>${dto.theater}</td>
				<td>${dto.dayCnt}</td>
				<td>${73-dto.dayCnt}</td>
			</tr>
			</c:forEach>
		</c:if>
		
	
	</table>
</body>
</html>