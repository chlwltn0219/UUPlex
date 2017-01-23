<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="roomModifyView" method="post" name="roomModifyForm">
	<c:forEach var="dto" items="${dtos}">
	<table border="1">
		<tr>
			<th>객실이름</th>
			<td>${dto.roomName}</td>
		</tr>
		<tr>
			<th>메인이미지</th>
			<td>${dto.mainImg}</td>
		</tr>
		<tr>
			<th>상세이미지1</th>
			<td>${dto.detail_1}</td>
		</tr>
		<tr>
			<th>상세이미지2</th>
			<td>${dto.detail_2}</td>
		</tr>
		<tr>
			<th>상세이미지3</th>
			<td>${dto.detail_3}</td>
		</tr>
		<tr>
			<th>상세이미지4</th>
			<td>${dto.detail_4}</td>
		</tr>
		<tr>
			<th>상세이미지5</th>
			<td>${dto.detail_5}</td>
		</tr>
		<tr>
			<th>객실소개</th>
			<td>${dto.intro}</td>
		</tr>
		<tr>
			<th>객실규모</th>
			<td>${dto.roomType}</td>
		</tr>
		<tr>
			<th>침대유형</th>
			<td>${dto.bed}</td>
		</tr>
		<tr>
			<th>${dto.hotelView}</th>
			<td></td>
		</tr>
		<tr>
			<th>수용인원</th>
			<td>${dto.capacity}</td>
		</tr>
		<tr>
			<th>이용요금</th>
			<td>${dto.charge}</td>
		</tr>
	</table>
	</c:forEach>
	</form>
</body>
</html>