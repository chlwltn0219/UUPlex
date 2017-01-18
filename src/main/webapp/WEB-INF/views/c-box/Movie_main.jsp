<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>씨박스</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.top_menu {
	color: white;
	min-width: 1500px;
	padding-top: 50px;
	width: 100%;
	height: 70px;
	background-color: #4374D9;
	font-family: a치어리더;
	font-size: 25px;
	text-align: right;
}

.a {
	position: absolute;
	left: 150px;
	top: 60px;
}

.a>img {
	width: 280px;
}

.btn {
	position: absolute;
	right: 15%;
	top: 140px;
	width: 300px;
}

.btn1 {
	margin: 0 5px;
	float: left;
	border: 2px solid #4374D9;
	background-color: white;
	font-family: a치어리더;
	font-size: 20px;
	color: #4374D9;
	padding: 5px;
	width: 120px;
	text-align: center;
}

.btn2 {
	margin: 0 5px;
	float: left;
	border: 2px solid white;
	background-color: #4374D9;
	font-family: a치어리더;
	font-size: 20px;
	color: white;
	padding: 5px;
	width: 120px;
	text-align: center;
}

.b {
	float: right;
	padding-right: 150px;
}

.a>input {
	color: white;
	width: 500px;
	font-family: a치어리더;
	font-size: 90px;
	text-align: center;
	background-color: rgba(0, 0, 0, 0);
	border: none;
}

.rate {
	z-index: 1;
	width: 20px;
	margin-top: 8px;
	margin-right: 5px;
}

.b>input {
	color: white;
	width: 150px;
	font-family: a치어리더;
	font-size: 23px;
	text-align: center;
	background-color: #4374D9;
	border: none;
}

.imgbox {
	background-color: black;
	min-width: 1100px;
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

td>table {
	width: 220px;
	height: 100%;
	padding: 10px;
}

td>input {
	border: 1px solid #1F50B5;
	background-color: #5586EB;
	color: #ffffff;
	padding: 3px 10px;
	margin: 3px;
}

td>img {
	width: 100%;
}

td {
	text-align: center;
}

.sub {
	padding: 3px;
	border: 1px solid #1F50B5;
	font-family: a치어리더;
	font-size: 20px;
}

.sub>th {
	width: 25px;
}

.footer {
	color: white;
	min-width: 1500px;
	width: 100%;
	height: 200px;
	background-color: #4374D9;
}
</style>
</head>
<body>
	<div class="top_menu">
		<div class="a">
			<img src="img/c-box.png">
		</div>
		<div class="b">
			<input type="text" value="영화" readonly="readonly" width="100px;"
				onclick="location.href='http://www.megabox.co.kr/?menuId=movie'">|<input
				type="text" value="예매" readonly="readonly" width="100px;">|<input
				type="text" value="이벤트" readonly="readonly" width="100px;"
				onclick="location.href='http://www.megabox.co.kr/?menuId=event'">|<input
				type="text" value="로그인" readonly="readonly" width="100px;">
		</div>
		<div class="btn">
			<div class="btn1"
				onclick="location.href='http://www.megabox.co.kr/?menuId=timetable-movie'">상영시간표</div>
			<div class="btn2">빠른예매</div>
		</div>
	</div>

	<div class="imgbox" align="center">
		<img class="button" src="img/pre.png"> <img width="800px"
			src="img/lala.jpg"> <img class="button" src="img/post.png">
	</div>
	<div class="content">
		<table>
			<tr>
				<td>
					<table>
						<tr>
							<td colspan="2"><img src="img/너의 권력은.jpg"></td>
						</tr>
						<tr class="sub">
							<th><img class="rate" src="img/12.png"></th>
							<td>너의 권력은</td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" value="상세정보"
								onclick="location.href='http://www.megabox.co.kr/?show=detail&rtnShowMovieCode=011523'"><input
								type="button" value="예매하기"></td>
						</tr>
					</table>
				<td>
					<table>
						<tr>
							<td colspan="2"><img src="img/모아나.jpg"></td>
						</tr>
						<tr class="sub">
							<th><img class="rate" src="img/all.png"></th>
							<td>모아나</td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" value="상세정보"><input
								type="button" value="예매하기"></td>
						</tr>
					</table>
				</td>
				<td>
					<table>
						<tr>
							<td colspan="2"><img src="img/얼라이드.jpg"></td>
						</tr>
						<tr class="sub">
							<th><img class="rate" src="img/15.png"></th>
							<td>얼라이드</td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" value="상세정보"
								onclick="location.href='http://www.megabox.co.kr/?show=detail&rtnShowMovieCode=011574'"><input
								type="button" value="예매하기"></td>
						</tr>
					</table>
				</td>
		</table>
	</div>
	<div class="footer"></div>
	</div>

</body>
</html>