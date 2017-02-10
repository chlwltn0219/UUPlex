<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>영화 진흥법 시행령에 의거하여  각 상영관은 의무적으로 1년에 73일 이상 한국영화를 상영해야 합니다.</p>
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