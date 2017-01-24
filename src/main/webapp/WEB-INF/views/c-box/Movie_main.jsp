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

body{
	min-width: 1900px;
}

.top_menu {
	color: white;
	min-width: 1900px;
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
	background-color: black;
	min-width: 1700px;
}

.button {
	width: 40px;
	height: 100%;
	margin: 150px 30px;
}

.content {
	width: 660px;
	margin: 30px auto;
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

.sub>td{
	padding: 10px 20px;
	font-size: 15px;
}

.sub>th {
	padding-left: 10px;
width: 40px;
}

.footer {
	color: white;
	min-width: 1900px;
	width: 100%;
	height: 200px;
}

.carousel-inner embed {
	height: 400px;
	width: 800px;
	opacity: 0;
	transition: 1s;
	margin: 0 560px;
}

.carousel-inner embed:HOVER {
	opacity: 1;
}

.contain {
	min-width : 1900px;
	background-color: black;
	width: 100%; 
}

#carousel-example-generic {
	background-color: black;
	margin: 0 auto;
}

.carousel-inner {
	height: 400px;
}

.item {
	min-width : 1900px;
	background-attachment : fixed;
	background-size: 100%;
}
</style>
</head>
<body>

<c:if test="${contentPage==null}">
	<c:set var="contentPage" value="main.jsp"/>
</c:if>

	<div class="top_menu">
		<div>
			<img class="logo" src="${img}etc/c-box_logo.png" onclick="location.href='/uuplex/c-box'">
		</div>
		<div class="menu">
			<table>
				<tr>
					<td><input type="button" value="영화"
						onclick="location.href='c-box/movie_list'"></td>
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

	<jsp:include page="${contentPage}"/>
	
	<div class="footer"></div>

</body>
</html>