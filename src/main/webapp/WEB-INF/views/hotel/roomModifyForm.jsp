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
	<form action="roomModifyPro" method="post" name="roomModifyPro">
		<input type="hidden" name="roomNum" value="${dto.roomNum}">
		<table border="1">
			<tr>
				<th>객실이름</th>
				<td><input class="input" type="text" name="roomName" maxlength="20" value="${dto.roomName}"></td>
			</tr>
			<tr>
				<th>메인이미지</th>
				<td><input class="input" type="text" name="mainImg" value="${dto.mainImg}"></td>
			</tr>
			<tr>
				<th>상세이미지1</th>
				<td><input class="input" type="text" name="detail_1" value="${dto.detail_1}"></td>
			</tr>
			<tr>
				<th>상세이미지2</th>
				<td><input class="input" type="text" name="detail_2" value="${dto.detail_2}"></td>
			</tr>
			<tr>
				<th>상세이미지3</th>
				<td><input class="input" type="text" name="detail_3" value="${dto.detail_3}"></td>
			</tr>
			<tr>
				<th>상세이미지4</th>
				<td><input class="input" type="text" name="detail_4" value="${dto.detail_4}"></td>
			</tr>
			<tr>
				<th>상세이미지5</th>
				<td><input class="input" type="text" name="detail_5" value="${dto.detail_5}"></td>
			</tr>
			<tr>
				<th>객실소개</th>
				<td><input class="input" type="text" name="intro" value="${dto.intro}"></td>
			</tr>
			<tr>
				<th>객실규모</th>
				<td><select name="roomType">
					<c:if test="${dto.roomType == 'standard'}">
					<option value="standard">스탠다드룸</option>
					<option value="suite">스위트룸</option></c:if>
					<c:if test="${dto.roomType == 'suite'}">
					<option value="suite">스위트룸</option>
					<option value="standard">스탠다드룸</option></c:if>
					</select>
				</td>
			</tr>
			<tr>
				<th>침대유형</th>
				<td><select name="bed">
					<c:if test="${dto.bed == 'single'}">
					<option value="single">싱글베드</option>
					<option value="twin">트윈베드</option></c:if>
					<c:if test="${dto.bed == 'twin'}">
					<option value="twin">트윈베드</option>
					<option value="single">싱글베드</option></c:if>
					</select>
				</td>
			</tr>
			<tr>
				<th>전망형태</th>
				<td><select name="hotelView">
					<c:if test="${dto.hotelView == 'city'}">
					<option value="city">시티뷰</option>
					<option value="ocean">오션뷰</option></c:if>
					<c:if test="${dto.hotelView == 'ocean'}">
					<option value="ocean">오션뷰</option>
					<option value="city">시티뷰</option></c:if>
					</select>
				</td>
			</tr>
			<tr>
				<th>수용인원</th>
				<td><input class="input" type="number" name="capacity" value="${dto.capacity}" min="2" max="10" step="2"></td>
			</tr>
			<tr>
				<th>이용요금</th>
				<td><input class="input" type="text" name="charge" value="${dto.charge}"></td>
			</tr>
		</table>
		<input class="inputButton" type="submit" value="수정">
		<input class="inputButton" type="reset" value="재작성">
		<input class="inputButton" type="button" value="취소"
			onclick="/hotel/adminMain">
	</form> 
</body>
</html>