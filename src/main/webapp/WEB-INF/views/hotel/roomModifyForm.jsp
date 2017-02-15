<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/uuplex/resources/hotel_script/hotelScript.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UU HOTEL</title>
<style>
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
				<td>
					<input type="hidden" name="old_img" value="${dto.mainImg}">
					<input class="input" type="file" name="mainImg" accept="image/*">
				</td>			
			</tr>
			<tr>
				<th>상세이미지1</th>
				<td>
					<input type="hidden" name="old_img" value="${dto.detail_1}">
					<input class="input" type="file" name="detail_1" accept="image/*">
				</td>
			</tr>
			<tr>
				<th>상세이미지2</th>
				<td>
					<input type="hidden" name="old_img" value="${dto.detail_2}">
					<input class="input" type="file" name="detail_2" accept="image/*">
				</td>
			</tr>
			<tr>
				<th>상세이미지3</th>
				<td>
					<input type="hidden" name="old_img" value="${dto.detail_3}">
					<input class="input" type="file" name="detail_3" accept="image/*">
				</td>
			</tr>
			<tr>
				<th>상세이미지4</th>
				<td>
					<input type="hidden" name="old_img" value="${dto.detail_4}">
					<input class="input" type="file" name="detail_4" accept="image/*">
				</td>
			</tr>
			<tr>
				<th>상세이미지5</th>
				<td>
					<input type="hidden" name="old_img" value="${dto.detail_5}">
					<input class="input" type="file" name="detail_5" accept="image/*">
				</td>
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
					<c:if test="${dto.hotelView == 'river'}">
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