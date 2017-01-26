<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>씨박스</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: 나눔고딕;
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
	width: 200px;
	margin: 0 45%;
}

.btn_div {
	width: 250px;
	position: absolute;
	top: 190px;
	right: 300px;
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
	font-family: 나눔고딕;
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
	visibility: hidden;
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
	opacity: 0;
	transition: 0.3s;
}

.item:HOVER #img {
	opacity: 0.5;
	transiton: 0.5s;
}

#img:ACTIVE ~embed {
	visibility: visible;
}

#img:ACTIVE {
	display: none;
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

#setting:HOVER ~.mmanagermenu, .mmanagermenu:HOVER{
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

.mmanagermenu table *{
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
		<div class="menu">
			<table>
				<tr>
					<td><input type="button" value="영화"
						onclick="location.href='/uuplex/c-box/user/movie_list'"></td>
					<td><input type="button" value="이벤트"
						onclick="location.href='http://www.megabox.co.kr/?menuId=event'"></td>
					<td><input type="button" value="로그인"></td>
				</tr>
			</table>
		</div>
	</div>

	<div class="btn_div">
		<input class="btn1" type="button" value="상영시간표"
			onclick="location.href='http://www.megabox.co.kr/?menuId=timetable-movie'">
		<input class="btn2" type="button" value="빠른예매">
	</div>

	<jsp:include page="${contentPage}" />

	<img id="setting" src="${img}etc/setting.png">
	
	<div class="mmanagermenu">
		<table class="table table-hover text-center">
			<tr>
				<td><a href="c-box/manage_movie">영화관리</a></td>
			</tr>
			<tr>
				<td>상영일정관리</td>
			</tr>
			<tr>
				<td>상영관 관리</td>
			</tr>
			<tr>
				<td>예매관리</td>
			</tr>
		</table>

	</div>

</body>
</html>