<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
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
	width: 1200px;
	margin-top: 100px;
	margin-bottom: 100px;
}
 
#view img {
	width:500px; height:300px;
	padding:5px;
}
 
.panel > .panel-body > .imgTable {
	/* margin-left:70px; */
}
 
#collapseTable {
	width: 1100px;
}
 
.carousel-control.left{background-image:none;}
.carousel-control.right{background-image:none;}
.carousel-inner > .item > img, .carousel-inner > .item > a > img {
      top: 0;
      left: 0;
      width: 500px;
      height: 290px;
 } 
</style>
<script type="text/javascript" src="/uuplex/resources\js\jquery-1.12.4.js"></script>
</head>
<body>
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
<h3>객실예약</h3><br>
 
<c:forEach var="dto" items="${dtos}">
	<div class="panel panel-default">
	  <div class="panel-body">
	    <h4><b>${dto.roomName}</b></h4><br>
	    <table class="imgTable">
	    <tr>
	    <th>
	    <div id="view">
	    <img src="/uuplexImg/${dto.mainImg}">
	    </div>
	    </th>
		<th>
	  	  &nbsp;&nbsp;
	    </th>
	    <th>
	    	<div id="${dto.roomName}" class="carousel slide" data-ride="carousel" data-interval="false">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#${dto.roomName}" data-slide-to="0" class="active"></li>
			    <li data-target="#${dto.roomName}" data-slide-to="1"></li>
			    <li data-target="#${dto.roomName}" data-slide-to="2"></li>
			    <li data-target="#${dto.roomName}" data-slide-to="3"></li>
			    <li data-target="#${dto.roomName}" data-slide-to="4"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			    <div class="item active">
			      <img src="/uuplexImg/${dto.detail_1}">
			      <div class="carousel-caption">
			        	상세이미지1
			      </div>
			    </div>
			    <div class="item">
			      <img src="/uuplexImg/${dto.detail_2}">
			      <div class="carousel-caption">
			        	상세이미지2
			      </div>
			    </div>
			    <div class="item">
			      <img src="/uuplexImg/${dto.detail_3}">
			      <div class="carousel-caption">
			        	상세이미지3
			      </div>
			    </div>
			    <div class="item">
			      <img src="/uuplexImg/${dto.detail_4}">
			      <div class="carousel-caption">
			        	상세이미지4
			      </div>
			    </div>
			    <div class="item">
			      <img src="/uuplexImg/${dto.detail_5}">
			      <div class="carousel-caption">
			        	상세이미지5
			      </div>
			    </div>
			    
			  </div>
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#${dto.roomName}" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#${dto.roomName}" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
	    </th>
	    </tr>
	    </table>
	  </div>
	  <div class="panel-footer">
		${dto.intro}<br><br>
		<button class="btn btn-default" type="button" data-toggle="collapse" data-target="#${dto.roomNum}" aria-expanded="false" aria-controls="collapseExample">
		  상세정보</button>
		<!-- <button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal" >예약하기</button> -->
		<a data-toggle="modal" class="btn btn-default" data-target="#modal" href="./reservForm?roomName=${dto.roomName}&charge=${dto.charge}">예약하기</a>	
		<div class="collapse" id="${dto.roomNum}">
		  <div class="well">
		  <table id = "collapseTable">
		  <tr>
		  	<td>
			<mark>요금</mark> ${dto.charge} 원<br>
			<mark>형태</mark> ${dto.roomType} room<br>
			<mark>전망</mark> ${dto.hotelView} view<br>
			<mark>침대</mark> ${dto.bed} bed<br>
			<c:if test="${dto.roomType == 'standard'}">
			<mark>구성</mark> 침실1, 욕실1, 화장실1<br><br>
			</c:if>
			<c:if test="${dto.roomType == 'suite'}">
			<mark>구성</mark> 침실1, 욕실1, 화장실2, 응접실 1<br><br>
			</c:if>
			</td>
			<td>
			유무선 초고속 인터넷 접속<br>
			전자 보안 및 개인 금고<br>
			개별 온도 조절 장치<br>
			넓은 업무용 공간<br>
			미니 바<br>
			전 객실 내 네스프레소 커피머신<br>
			트윈 배니티의 오픈 플랜 욕실<br>
			전 욕실 LCD TV 설치<br>
			아로마테라피 다양한 바스용품 구비<br>
			장애인 시설
			</td>
			</table>
		    </div>
		  </div>
		</div>
	</div><br>
 
	
	</c:forEach>
	<center><input class="btn btn-default btn-lg" type="button" value="메인으로"
		onclick="location.href='/uuplex/hotel'"></center>
		
	<%@ include file="/admin_Modal/hotelModal.jsp" %>
</div>
</div>
</body>
</html>