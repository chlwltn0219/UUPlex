<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/uuplex/resources/hotel_script/hotelScript.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    #content {
        width: 900px;
        margin: 100px;
    }
    #updateTable {
    	width: 800px;
		margin-left: 50px;
    }
</style>
</head>
<body>
<div id="content">
	<h3>객실정보 수정</h3><br>
	<form action="roomModifyPro" method="post" name="roomModifyPro" enctype="multipart/form-data" onsubmit="return modifyChk()">
		<input type="hidden" name="roomNum" value="${dto.roomNum}">
		<%-- <input type="hidden" name="mainImg" value="${dto.mainImg}"> --%>
		<table class="table" id="updateTable">
			<tr>
				<th>객실이름</th>
				<td><input class="input" type="text" name="roomName" maxlength="20" value="${dto.roomName}"></td>
			</tr>
			<tr>
				<th>메인이미지</th>
				<td><input class="input" type="file" name="mainImg" accept="image/*"></td>			
			</tr>
			<tr>
				<th>상세이미지1</th>
				<td><input class="input" type="file" name="detail_1" accept="image/*"></td>
			</tr>
			<tr>
				<th>상세이미지2</th>
				<td><input class="input" type="file" name="detail_2" accept="image/*"></td>
			</tr>
			<tr>
				<th>상세이미지3</th>
				<td><input class="input" type="file" name="detail_3" accept="image/*"></td>
			</tr>
			<tr>
				<th>상세이미지4</th>
				<td><input class="input" type="file" name="detail_4" accept="image/*"></td>
			</tr>
			<tr>
				<th>상세이미지5</th>
				<td><input class="input" type="file" name="detail_5" accept="image/*"></td>
			</tr>
			<tr>
				<th>객실소개</th>
				<td><textarea name="intro" cols="60" rows="5">${dto.intro}</textarea></td>
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
					<c:if test="${dto.bed == 'double'}">
					<option value="double">더블베드</option>
					<option value="twin">트윈베드</option></c:if>
					<c:if test="${dto.bed == 'twin'}">
					<option value="twin">트윈베드</option>
					<option value="double">더블베드</option></c:if>
					</select>
				</td>
			</tr>
			<tr>
				<th>전망형태</th>
				<td><select name="hotelView">
					<c:if test="${dto.hotelView == 'city'}">
					<option value="city">시티뷰</option>
					<option value="river">리버뷰</option></c:if>
					<c:if test="${dto.hotelView == 'ocean'}">
					<option value="river">리버뷰</option>
					<option value="city">시티뷰</option></c:if>
					</select>
				</td>
			</tr>
			<%-- <tr>
				<th>수용인원</th>
				<td><input class="input" type="number" name="capacity" value="${dto.capacity}" min="2" max="10" step="2"></td>
			</tr> --%>
			<tr>
				<th>이용요금</th>
				<td><input class="input" type="text" name="charge" value="${dto.charge}"></td>
			</tr>
		</table>
		<br><br><center><input class="btn btn-default" type="submit" value="수정">
		<input class="btn btn-default" type="reset" value="재작성">
		<input class="btn btn-default" type="button" value="취소"
			onclick="location.href='roomList'"></center>
	</form>
	</div>
</body>
</html>