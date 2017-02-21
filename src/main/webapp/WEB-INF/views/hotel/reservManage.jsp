<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	width: 1200px;
	margin-top: 100px; 
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UU HOTEL</title>
</head>
<body>
 <c:if test="${memId == null}">
				<script type="text/javascript">
					alert("로그인 후에 이용하실 수 있습니다.");
					history.back();
				</script>
</c:if>
<header>
		<div class="logo">
			<img src="${resources}/hotelImages/hotellogo.png" width="150px;" onclick="location.href='/uuplex/hotel'">
		</div>
		<div class="hit_menu">
			<ul>
				<c:if test="${sessionScope.idCode == 101 || sessionScope.idCode == 103}">
					<li><a href="adminCalendar">예약관리</a></li>
					<li><a href="roomList">객실관리</a></li>
					<li><a href="hotelInfo">호텔안내</a></li>
				</c:if>
				<c:if test="${sessionScope.idCode != 101 && sessionScope.idCode != 103 }">
					<li><a href="reservManage">예약내역</a></li>
					<li><a href="reservation">객실예약</a></li>
					<li><a href="hotelInfo">호텔안내</a></li>
				</c:if>
			</ul>
		</div>
</header>
	<div class="container">
		<div id="content">
			<h3>예약내역 <small> (상세내역을 확인하시려면 객실명을 클릭하세요.)</small></h3><br><br>
			<form action="reservManagePro" method="post" name="reservManagePro">
				<table class="table table-hover" id="listTable">
					<tr>
						<th>예약번호</th>
						<th>예약일</th>
						<th>객실명</th>
						<th>체크인</th>
						<th>체크아웃</th>
						<th>입실인원</th>
						<th>성명(영문)</th>
						<th>결제금액</th>
					</tr>
					<c:forEach var="dto" items="${dtos}">
					<tr>
						<td>${dto.reservNum}</td>
						<td>${dto.reservDay}</td>
						<td><a data-toggle="modal" class="btn btn-default" data-target="#modal" href="./reservDetail?reservNum=${dto.reservNum}">${dto.roomName}</a></td>
						<td>${dto.checkIn}</td>
						<td>${dto.checkOut}</td>
						<td>${dto.capacity}</td>
						<td>${dto.firstName} ${dto.lastName}</td>
						<td>${dto.totCharge}</td>
					</tr>
					</c:forEach>
				</table>
				
			<br> <br>
			<center>
				<input class="btn btn-default btn-lg" type="button" value="메인으로"
			onclick="location.href='/uuplex/hotel'">
			</center>
			
			<%@ include file="/admin_Modal/hotelModal.jsp" %>
			</form>
		</div>
	</div>
</body>
</html>