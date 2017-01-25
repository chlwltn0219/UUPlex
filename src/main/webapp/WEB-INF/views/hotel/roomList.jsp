<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#content {
	width: 100%;
	height: 820px;
}

#listTable th {
	font-size: 0.8em;
}
</style>

</head>
<body>
	<div id="content">
		<br>
		<h3>객실목록</h3>
		<br> <br>
		<form action="roomDeletePro" method="post">
			<table class="table table-hover" id="listTable">
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
						<td><input type="checkbox" name="checkbox"
							value="${dto.roomNum}"></td>
						<td>${dto.roomNum}</td>
						<td>${dto.roomName}</td>
						<%-- <td><img src="<%=request.getServletContext().getContextPath()%>/resources/hotelImages/${dto.mainImg}"></td> --%>
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
							<button type="button" class="btn btn-default"
								onclick="window.location='roomModifyForm?roomNum=${dto.roomNum}'">수정</button>
						</td>
					</tr>
				</c:forEach>
			</table>

			<!-- Button trigger modal -->
			<br> <br>
			<center>
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal">객실등록</button>
				<button type="submit" class="btn btn-default">객실삭제</button>
			</center>
		</form>
		<!-- Modal -->
		<form action="roomAddPro" method="post" enctype="multipart/form-data">
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">객실정보를 입력하세요.</h4>
						</div>
						<div class="modal-body">

							<table class="table">
								<tr>
									<th>객실이름</th>
									<td><input class="input" type="text" name="roomName"
										maxlength="20"></td>
								</tr>
								<tr>
									<th>메인이미지</th>
									<td><input class="input" type="file" name="mainImg"
										accept="image/*"></td>
								</tr>
								<tr>
									<th>상세이미지1</th>
									<td><input class="input" type="text" name="detail_1"></td>
								</tr>
								<tr>
									<th>상세이미지2</th>
									<td><input class="input" type="text" name="detail_2"></td>
								</tr>
								<tr>
									<th>상세이미지3</th>
									<td><input class="input" type="text" name="detail_3"></td>
								</tr>
								<tr>
									<th>상세이미지4</th>
									<td><input class="input" type="text" name="detail_4"></td>
								</tr>
								<tr>
									<th>상세이미지5</th>
									<td><input class="input" type="text" name="detail_5"></td>
								</tr>
								<tr>
									<th>객실소개</th>
									<td><input class="input" type="text" name="intro"></td>
								</tr>
								<tr>
									<th>객실규모</th>
									<td><select name="roomType">
											<option value="standard">스탠다드룸</option>
											<option value="suite">스위트룸</option>
									</select></td>
								</tr>
								<tr>
									<th>침대유형</th>
									<td><select name="bed">
											<option value="single">싱글베드</option>
											<option value="twin">트윈베드</option>
									</select></td>
								</tr>
								<tr>
									<th>전망형태</th>
									<td><select name="hotelView">
											<option value="city">시티뷰</option>
											<option value="ocean">오션뷰</option>
									</select></td>
								</tr>
								<tr>
									<th>수용인원</th>
									<td><input class="input" type="number" name="capacity"
										placeholder="0" min="2" max="10" step="2"></td>
								</tr>
								<tr>
									<th>이용요금</th>
									<td><input class="input" type="text" name="charge"></td>
								</tr>
							</table>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-default">등록</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>