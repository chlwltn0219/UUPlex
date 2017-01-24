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
<form action="roomAddForm" method="post" name="roomAddForm">
	<table border="1">
		<tr>
			<th>선택삭제</th>
			<th>객실번호</th>
			<th>객실이름</th>
			<th>메인이미지</th>
			<th>상세이미지1</th>
			<th>상세이미지2</th>
			<th>상세이미지3</th>
			<th>상세이미지4</th>
			<th>상세이미지5</th>
			<th>객실소개</th>
			<th>객실규모</th>
			<th>침대유형</th>
			<th>전망형태</th>
			<th>수용인원</th>
			<th>이용요금</th>
			<th>객실정보수정</th>
		</tr>
	<c:forEach var="dto" items="${dtos}">
		<tr>
			<td><input type="checkbox" name="checkbox"></td>
			<td>${dto.roomNum}<input type="hidden" value="${dto.roomNum}" name="roomNum"></td>
			<td>${dto.roomName}</td>
			<td>${dto.mainImg}</td>
			<td>${dto.detail_1}</td>
			<td>${dto.detail_2}</td>
			<td>${dto.detail_3}</td>
			<td>${dto.detail_4}</td>
			<td>${dto.detail_5}</td>
			<td>${dto.intro}</td>
			<td>${dto.roomType}</td>
			<td>${dto.bed}</td>
			<td>${dto.hotelView}</td>
			<td>${dto.capacity}</td>
			<td>${dto.charge}</td>
			<td>
			<input class="inputButton" type="button" value="객실수정"
				onclick="window.location='roomModifyForm?roomNum=${dto.roomNum}'"> 
			</td>
		</tr>
	</c:forEach>
	</table>
		<input class="inputButton" type="submit" value="객실등록"> 
		<input class="inputButton" type="button" value="객실삭제"
			onclick="window.location='roomDeletePro'">
	</form>
</body>
</html>