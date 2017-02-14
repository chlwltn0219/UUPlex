<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#listTable {
	width: 500px;
	align: center;
	border: 0;
	text-align: center;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="col-md-6">
	<table id="listTable" border="1px solid #8e8e8e;">
		<tr style="height: 5px;">
			<th style="text-align:center; height:40px;">예약번호</th>
			<th style="text-align:center;">객실명</th>
			<th style="text-align:center;">성명(영문)</th>
			<th style="text-align:center;">이메일</th>
			<th style="text-align:center;">상세보기</th>
		</tr>
		<c:forEach var="dto" items="${dtos}">
		<tr>
			<td style="height:40px;">${dto.reservNum}</td>
			<td>${dto.roomName}</td>
			<td>${dto.firstName} ${dto.lastName}</td>
			<td>${dto.email}</td>
			<td><input type="button" data-toggle="modal"
				class="btn btn-default" data-target="#modal"
				href="./adminCalDetail?reservNum=${dto.reservNum}" value="상세보기"></td>
		</tr>
		</c:forEach>
	</table>
	</div>
	
	<%@ include file="/admin_Modal/hotelModal.jsp" %>
	
</body>
</html>