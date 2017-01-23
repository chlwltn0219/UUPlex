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

.top_menu {
	color: white;
	min-width: 1500px;
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
	background-color : #000000;
	padding: 5px;
	width: 120px;
	text-align: center;
}

#rate {
	width: 20px;
}

.menu {
	width: 400px;
	margin: 5px auto;
}

.menu td {
	width: 100px;
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

.content td>table {
	width: 220px;
	height: 100%;
	margin: 10px;
}

.content td>input {
	color: #5A5A5A;
	padding: 10px 13px;
	margin: 3px;
	border: none;
	background-color: #EAEAEA;
}

.content td>img {
	width: 100%;
}

.content>td>table{
	border: 1px solid #EAEAEA;
}

td {
	text-align: center;
}

.sub {
	padding: 10px;
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
}

.carousel-inner embed {
	height: 400px;
	width: 800px;
	margin: 0 30%;
}



</style>
</head>
<body>

	<div class="top_menu">
		<div>
			<img class="logo" src="${img}etc/c-box_logo.png">
		</div>
		<div class="menu">
			<table>
				<tr>
					<td><input type="button" value="영화"
						onclick="location.href='http://www.megabox.co.kr/?menuId=movie'"></td>
					<td><input type="button" value="예매"></td>
					<td><input type="button" value="이벤트"
						onclick="location.href='http://www.megabox.co.kr/?menuId=event'"></td>
					<td><input type="button" value="로그인"></td>
				</tr>
			</table>
		</div>
	</div>
	
	<div class="btn_div">
		<input class="btn1" type="button" value="상영시간표" onclick="location.href='http://www.megabox.co.kr/?menuId=timetable-movie'">
		<input class="btn2" type="button" value="빠른예매">
	</div>	

	<!-- 슬라이드 쇼 : 캐러셀 -->

	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active"  style="background-image: url('${img}/etc/allied.jpg'); ">
				<embed src="https://www.youtube.com/embed/Jlp94-C31cY"></embed>
				<div class="carousel-caption"></div>
			</div>
			<div class="item" style="background-image: url('${img}/etc/lalaland.jpg');">
				<embed src="https://www.youtube.com/embed/0pdqf4P9MB8"></embed>
				<div class="carousel-caption"></div>
			</div>

			<div class="item" style="background-image: url('${img}/etc/Ghostbusters.jpg');">
				<embed src="https://www.youtube.com/embed/w3ugHP-yZXw"></embed>
				<div class="carousel-caption"></div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!-- 캐러셀 끝 -->

	<div class="content">
		<table>
			<tr>
				<td>
					<table style="border: 1px solid #EAEAEA;">
						<tr>
							<td colspan="2"><img src="${img}movie_poster/너의 권력은.jpg"></td>
						</tr>
						<tr class="sub">
							<th><img id="rate" src="${img}mpaa_rating/12.png"></th>
							<td>너의 권력은</td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" value="상세정보"  data-toggle="modal" data-target="#myModal">
							<input type="button" value="예매하기"></td>
						</tr>
					</table>
				</td>
				<td>
					<table style="border: 1px solid #EAEAEA;">
						<tr>
							<td colspan="2"><img src="${img}movie_poster/모아나.jpg"></td>
						</tr>
						<tr class="sub">
							<th><img id="rate" src="${img}mpaa_rating/all.png"></th>
							<td>모아나</td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" value="상세정보"  data-toggle="modal" data-target="#myModal">
							<input type="button" value="예매하기"></td>
						</tr>
					</table>
				</td>
				<td>
					<table style="border: 1px solid #EAEAEA;">
						<tr>
							<td colspan="2"><img src="${img}movie_poster/얼라이드.jpg"></td>
						</tr>
						<tr class="sub">
							<th><img id="rate" src="${img}mpaa_rating/15.png"></th>
							<td>얼라이드</td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" value="상세정보"  data-toggle="modal" data-target="#myModal">
							<input type="button" value="예매하기"></td>
						</tr>
					</table>
				</td>
				</tr>
		</table>
		
		<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">상세정보</h4>
				</div>
				<div class="modal-body">
					<jsp:include page="movie_datail.jsp"/>
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 끝 -->
	</div>
	<div class="footer"></div>

</body>
</html>