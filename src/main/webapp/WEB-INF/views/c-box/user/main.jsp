<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../setting.jsp"%>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/movieinfo.js"></script>
<script src="${js}jquery-1.11.3.min.js"></script>

<style>
.list {
	margin: 30px auto 100px;
}
.movieTable {
	margin:auto auto;
}
.movie {
	width: 200px;
	height: 100%;
	margin: 11px;
	border: 1px solid #EAEAEA;
}

.movie td>input {
	color: #5A5A5A;
	padding: 10px 13px;
	margin: 10px 0 10px 10px;
	border: none;
	background-color: #EAEAEA;
}

.movie td>img {
	width: 100%;
	height: 283px;
}

.sub>td {
	padding: 10px 20px;
	font-size: 15px;
}

.sub>th {
	padding-left: 10px;
	width: 40px;
}

.aa {
	float: left;
	position: relative;
	
	
}
.rankNumBack {
	position: absolute;
	top: 30px;
	left: 10px;
	width:35px;
	height:35px;
	background:#191919;
	opacity: 0.7;
	padding:5px;
	text-align: center;
	box-shadow: 3px 3px 3px black; 
	
}
.rankNum{
	position: absolute;
	top: 35px;
	left: 20px;
	z-index: 3;
	font-size: 20px;
	
}
.boxOffice{
	width:600px;
	height:70px;
	font-size: 20px;
	margin:auto auto 20px;
	padding:20px;
	border: 1px solid #BDBDBD;
	
}
.optionBtn{
	text-align: center;
	border: 1px solid #BDBDBD;
	color:#4C4C4C;
}
.optionBtn:hover{
	background-color: #747474;
	color : white;

}
.activeBtn {
	text-align: center;
	background-color: #747474;
	color : white;
}

</style>
<script>
	$(function() {
		$("embed").hide();
		
		$("#img img").click(function() {
			$(this).hide();
			$(this).parent().next().show();
			$(this).parent().hide();
		});
		
		$( "embed" ).mouseout(function() {
		    $( this ).hide();
		  });
		
		$('#trtr').find('td:first').addClass('activeBtn');
		
		$(".optionBtn").click(function() {
			$(this).addClass('activeBtn');
			$(".optionBtn").not(this).removeClass('activeBtn');
			
		});
		
		
	});
	
	function boxOffice(){
		
		window.location="/uuplex/c-box";
	}
	
	function releaseDate(){
		
		var url = "/uuplex/c-box/orderByDate";
		sendRequest(movieList, url);
			
		
	}
	function movieList() {
		   
		   var movie = document.getElementById("movieSection");
		   
		   if(httpRequest.readyState == 4 ) {
		      if(httpRequest.status == 200) {
		         //응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
		         movie.innerHTML = httpRequest.responseText;
		         
		      } else {
		    	  movie.innerHTML = httpRequest.status + "에러 발생";
		      }
		   } else {
			   movie.innerHTML = "상태 : " + httpRequest.readyState;
		   }
		   
		}
		
	

</script>

<!-- 슬라이드 쇼 : 캐러셀 -->
<div class="contain">
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			
			<div class="item active" style="background-image: url('${img}/etc/allied.jpg');">
				<a id="img"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/Jlp94-C31cY"></embed>
				
			</div>
			<div class="item" style="background-image: url('${img}/etc/lalaland.jpg');">
				<a id="img"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/0pdqf4P9MB8"></embed>
			</div>

			<div class="item" style="background-image: url('${img}/etc/Ghostbusters.jpg');">
				<a id="img"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/w3ugHP-yZXw"></embed>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a>

		<a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>

<!-- 캐러셀 끝 -->

<div class="list" >
	<table class="movieTable">
		<tr>
			<td colspan="5">
				<table class="boxOffice">
					<tr id="trtr">
						<td id="setBtn" class="optionBtn" onclick="boxOffice();">박스 오피스</td>
						<td id="setBtn" class="optionBtn" onclick="releaseDate();">최신 개봉작</td>
					</tr>
				</table>
				
			</td>
		</tr>
	</table>	

<div id="movieSection">	
<c:if test="${dtos!=null}">
	<table class="movieTable">	
		<tr>
			<c:forEach var="dto" items="${dtos}" varStatus="status">
			<td>	
				<div class="aa">
					<span class=rankNum style="color:white;">${status.count}</span>
					<div class="rankNumBack"></div>
					
					<table class="movie" style="border: 1px solid #EAEAEA;">
						<tr>
							<td colspan="2"><img src="/uuplexImg/c-box/${dto.poster}" width=></td>
						</tr>
						<tr class="sub">
							<th><img id="rate" src="${img}mpaa_rating/${dto.MPAARating}.png"></th>
							<td>${dto.title1}</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="button" value="상세정보" data-toggle="modal" data-target="#modalPage" onclick="movieDetail(${dto.movie_num})">
								<input type="button" value="예매하기">
							</td>
						</tr>
					</table>
				</div>
			</td>	
			</c:forEach>
		</tr>
	</table>	
</c:if>
		<c:if test="${dtos==null}">
			<table>
				<tr>
					<td>
					<h3>
						<center>영화가 아직 준비되지 않았습니다.</center>
					</h3>
					</td>
				</tr>
			</table>
		</c:if>
</div>		
		<div class="modal fade" id="modalPage" role="dialog">
			<div class="modal-dialog modal-lg" >
				<div id="dialog"></div>
				<div id="review">
				</div>
			</div>
			
		</div>
</div>	
