<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UU HOTEL</title>
<style>
/* 상단바 고정 */
header {
	background-image: url("/uuplex/resources/hotelImages/hotel_background.png");
	background-size: 800px;
	color: #030066;
}

header li {
	float: left;
	list-style: none;
	margin-left: 50px;
	font-size: .9em;
}

header a {
	color: #cccccc;
	text-decoration: none;
}

header .logo {
	padding: 50px 50px 0 400px;
	align: left;
}

header .hit_menu {
	overflow: hidden;
	padding: 5px;
}

header .hit_menu ul {
	overflow: hidden;
	width: 1200px;
	margin: 0 auto 3px;
}

header .hit_menu li {
	float: right;
	margin: 0;
	text-align: center;
}

header .hit_menu a {
	display: block;
	color: #BDBDBD;
	font-size: 1.1em;
	padding: 10px 30px;
	border: 1px solid #cccccc;
}

header .hit_menu li:first-child a {
	border-radius: 0 10px 10px 0;
}

header .hit_menu li:last-child a {
	border-radius: 10px 0 0 10px;
}
/* 상단바 고정 */

#content {
	width: 1700px;
	margin: 100px;
}

</style>
<script src="/uuplex/resources/hotel_script/hotelScript.js"></script>
<script>
function deleteChk() {
	if($('input:checkbox:checked').length==0) {
		alert("삭제할 객실을 선택하세요.");
		return false;
	} else {
		alert("해당 객실을 삭제하시겠습니까?");
	}
}

</script>

</head>
<body>
<header>
		<div class="logo">
			<img src="${resources}/hotelImages/hotellogo.png" width="150px;">
		</div>
		<div class="hit_menu">
			<ul>
				<c:if test="${idCode == 101}">
					<li><a href="adminCalendar">예약관리</a></li>
					<li><a href="roomList">객실관리</a></li>
					<li><a href="hotelInfo">호텔안내</a></li>
				</c:if>
				<c:if test="${idCode != 101}">
					<li><a href="reservManage">예약내역</a></li>
					<li><a href="reservation">객실예약</a></li>
					<li><a href="hotelInfo">호텔안내</a></li>
				</c:if>
			</ul>
		</div>
</header>
	<div id="content">
		<h3>객실목록</h3>
		<br> <br>
		<form action="roomDeletePro" method="post" name="roomDeletePro" onsubmit="return deleteChk();">
			<table class="table table-hover" id="listTable">
				<tr>
					<th>선택삭제</th>
					<th>객실번호</th>
					<th>객실명</th>
					<th>메인이미지</th>
					<th>상세이미지1</th>
					<th>상세이미지2</th>
					<th>상세이미지3</th>
					<th>상세이미지4</th>
					<th>상세이미지5</th>
					<th width="400px">객실소개</th>
					<th>객실규모</th>
					<th>침대유형</th>
					<th>전망형태</th>
					<!-- <th>수용인원</th> -->
					<th>이용요금</th>
					<th>객실정보수정</th>
				</tr>
				<c:forEach var="dto" items="${dtos}">
					<tr>
						<td><input type="checkbox" name="checkbox" class="chk"
							value="${dto.roomNum}"></td>
						<td>${dto.roomNum}</td>
						<td>${dto.roomName}</td>
						<td><img src="/uuplexImg/${dto.mainImg}" width="100px" height="65px"></td>
						<td><img src="/uuplexImg/${dto.detail_1}" width="100px" height="65px"></td>
						<td><img src="/uuplexImg/${dto.detail_2}" width="100px" height="65px"></td>
						<td><img src="/uuplexImg/${dto.detail_3}" width="100px" height="65px"></td>
						<td><img src="/uuplexImg/${dto.detail_4}" width="100px" height="65px"></td>
						<td><img src="/uuplexImg/${dto.detail_5}" width="100px" height="65px"></td>
						<td>${dto.intro}</td>
						<td>${dto.roomType}</td>
						<td>${dto.bed}</td>
						<td>${dto.hotelView}</td>
						<%-- <td>${dto.capacity}</td> --%>
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
				<button type="button" class="btn btn-default btn-lg" data-toggle="modal"
					data-target="#myModal">객실등록</button>
				<button type="submit" class="btn btn-default btn-lg">객실삭제</button>
				<input class="btn btn-default btn-lg" type="button" value="메인으로"
			onclick="location.href='/uuplex/hotel'">
			</center>
		</form>
		
		<!-- Modal -->
		<form action="roomAddPro" method="post" enctype="multipart/form-data" name="roomAddPro" onsubmit="return addCheck()">
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">객실등록 <small> (정보를 입력하세요.)</small></h4>
						</div>
						<div class="modal-body">

							<table class="table">
								<tr>
									<th>객실이름</th>
									<td><input class="input" type="text" name="roomName" placeholder="공백없이 영문으로 입력"></td>
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
									<td><textarea name="intro" cols="60" rows="5"></textarea></td>
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
											<option value="double">더블베드</option>
											<option value="twin">트윈베드</option>
									</select></td>
								</tr>
								<tr>
									<th>전망형태</th>
									<td><select name="hotelView">
											<option value="city">시티뷰</option>
											<option value="river">리버뷰</option>
									</select></td>
								</tr>
								<!-- <tr>
									<th>수용인원</th>
									<td><input class="input" type="number" name="capacity"
										placeholder="0" min="2" max="10" step="2"></td>
								</tr> -->
								<tr>
									<th>이용요금</th>
									<td><input class="input" type="text" name="charge" placeholder="',' 없이 숫자로만 입력"></td>
								</tr>
							</table>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default btn-lg"
								data-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-default btn-lg">등록</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>