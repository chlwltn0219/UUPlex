<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>씨박스</title>

<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

* {
	margin: 0;
	padding: 0;
	font-family: 'Jeju Gothic', sans-serif;
}

body {
	min-width: 1690px;
}

.top_menu {
	color: white;
	min-width: 1690px;
	width: 100%;
	height: 130px;
	background-color: #000000;
}

.logo {
	width: 250px;
}

.btn_div {
	width: 250px;
	position: absolute;
	top: 190px;
	left: 70%;
	z-index: 1;
}

.btn1 {
	float: left;
	background-color: white;
	font-size: 20px;
	padding: 5px;
	width: 120px;
	text-align: center;
	border: 2px solid black;
}

.btn2 {
	float: right;
	border: 2px solid white;
	font-size: 20px;
	color: white;
	background-color: #000000;
	padding: 5px;
	width: 120px;
	text-align: center;
}

#rate {
	width: 20px;
}

.menu {
	width: 300px;
	margin: 10px auto;
}

.menu td {
	width: 100px;
	text-align: center;
}

.menu input {
	color: white;
	font-size: 20px;
	text-align: center;
	border: none;
	background-color: #000000;
}

.imgbox {
	min-width: 1690px;
}

.button {
	width: 40px;
	height: 100%;
	margin: 150px 30px;
}

.content {
	width: 660px;
	margin: 50px auto;
}

.content td>table {
	width: 200px;
	height: 100%;
	margin: 10px;
	border: 1px solid #EAEAEA;
}

.content td>input {
	color: #5A5A5A;
	padding: 10px 13px;
	margin: 10px 0 10px 10px;
	border: none;
	background-color: #EAEAEA;
}

.content td>img {
	width: 100%;
}

.sub>td {
	padding: 10px 20px;
	font-size: 15px;
}

.sub>th {
	padding-left: 10px;
	width: 40px;
}

.footer {
	color: white;
	min-width: 1690px;
	width: 100%;
	height: 200px;
}

embed {
	height: 400px;
	width: 800px;
}

.contain {
	min-width: 1690px;
	background-color: black;
	width: 100%;
}

.carousel-inner {
	height: 400px;
}

.item {
	min-width: 1690px;
	background-attachment: fixed;
	background-size: 100%;
	width: 100%;
	height: 400px;
}

.item #img {
	position: absolute;
	top: 170px;
	left: 48%;
	width: 70px;
	height: 70px;
	opacity: 0.3;
	transition: 0.3s;
}

.item:HOVER #img {
	opacity: 0.7;
}

#img:HOVER {
	opacity: 1;
	cursor: pointer;
}

#setting {
	width: 40px;
	height: 40px;
	position: fixed;
	left: 90px;
	bottom: 70px;
	z-index: 3;
	opacity: 0.5;
	cursor: pointer;
}

#setting:HOVER ~.mmanagermenu, .mmanagermenu:HOVER {
	display: block;
}

.mmanagermenu {
	position: fixed;
	left: 50px;
	bottom: 100px;
	z-index: 3;
	transition: 0.3s;
	cursor: default;
	display: none;
}

.mmanagermenu table * {
	font-size: 20px;
	padding: 5px;
}
</style>


</head>
<body>
	<c:if test="${contentPage==null}">
		<c:set var="contentPage" value="user/main.jsp" />
	</c:if>

	<div class="top_menu">
		<div>
			<img class="logo center-block" src="${img}etc/c-box_logo.png"
				onclick="location.href='/uuplex/c-box'">
		</div>
		<div class="menu" align="center">
			<table>
				<tr>
					<td><input type="button" value="영화"
						onclick="location.href='/uuplex/c-box/user/movie_list'"></td>	
					
						<c:if test="${sessionScope.id==null}">
						<td>
							<input type="button" value="로그인" data-toggle="modal" data-target="#loginModal" href="/uuplex/noneSM/loginForm">
							</td>
						</c:if>
						<c:if test="${sessionScope.id!=null}">
						<td><input type="button" value="예매조회"
						onclick="location.href='/uuplex/c-box/user/reservation'"></td>
						<td>
							<input type="button" value="로그아웃" onclick="location.href='/uuplex/logout'">
							</td>
						</c:if>
					
				</tr>
			</table>
		</div>
	</div>

	<div class="btn_div">
		<input class="btn1" type="button" value="상영시간표" onclick="location.href='/uuplex/c-box/schedule'">
		<input class="btn2" type="button" value="빠른예매"
			onclick="location.href='/uuplex/c-box/user/reserve/main'">
	</div>

	<jsp:include page="${contentPage}" />
	
	<c:if test="${sessionScope.idCode == 101 || sessionScope.idCode == 102}">

	<img id="setting" src="${img}etc/setting.png">	
		<div class="mmanagermenu">
			<table class="table table-hover text-center">
				<tr>
					<td><a href="/uuplex/c-box/manage_movie">영화관리</a></td>
				</tr>
				<tr>
					<td><a href="/uuplex/c-box/manage_schedule">상영일정관리</a></td>
				</tr>
				<tr>
					<td><a href="/uuplex/c-box/manage_theater">상영관 관리</a></td>
				</tr>
				<tr>
					<td><a href="/uuplex/c-box/manage_reserve">예매관리</a></td>
				</tr>
			</table>
	
		</div>
	</c:if>
</body>
</html>