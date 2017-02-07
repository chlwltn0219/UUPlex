<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#content {
	width: 1200px;
	margin-top: 100px;
	margin-bottom: 100px;
}
#imgTable th {
	border: 1px solid #EAEAEA;
}

#thumb{
   padding:0px;
   margin:0px;
   list-style:none;
   float:left;
}

#thumb li { /* 부모 thumb의 모든 하위 li */
   padding:5px 10px;
   float:left;
}

#thumb li img {
   width:200px; height:120px;
}

#view img {
	width:500px; height:300px;
	padding:5px;
}

</style>
<script type="text/javascript" src="/uuplex/resources\js\jquery-1.12.4.js"></script>
<script type="text/javascript">
   function change(roomName){
	   
	  document.getElementById("item").className = roomName;
	   
      $(".item:eq(0)").click(function(){
         //링크의 주소에 지정된 href속성값 획득
         var image = $(this).attr("href");
         //이미지 영역을 0.5초간 숨기고..
         $(".item:eq(1) img").css("border", "0px")
         $(".item:eq(2) img").css("border", "0px")
         $(".item:eq(3) img").css("border", "0px")
         $(".item:eq(4) img").css("border", "0px")
         $("#item img").fadeOut(500, function(){
            //이미지가 사라진 다음에 이미지경로를 클릭한 링크의 href 속성값으로 대치
            $("#item img").attr("src", image);
            //다시 현재요소를 보여준다.
            $(this).fadeIn(300);
         });
         $(".item:eq(0) img").css("border", "2px solid black")
         return false;
      });
      /* fadeIn / fadeOut */
      $(".item:eq(1)").click(function(){
         var image = $(this).attr("href");
         $(".item:eq(0) img").css("border", "0px")
         $(".item:eq(2) img").css("border", "0px")
         $(".item:eq(3) img").css("border", "0px")
         $(".item:eq(4) img").css("border", "0px")
         $("#view img").fadeOut(500, function(){
            $("#view img").attr("src", image);
            $(this).fadeIn(300);
         });
         $(".item:eq(1) img").css("border", "2px solid black")
         
         return false;
      });
      /* slideUp / slideDown */
      $(".item:eq(2)").click(function(){
         var image = $(this).attr("href");
         $(".item:eq(0) img").css("border", "0px")
         $(".item:eq(1) img").css("border", "0px")
         $(".item:eq(3) img").css("border", "0px")
         $(".item:eq(4) img").css("border", "0px")
         $("#view img").fadeOut(500, function(){
            $("#view img").attr("src", image);
            $(this).fadeIn(300);
         });
         $(".item:eq(2) img").css("border", "2px solid black")
         return false;
      });
      $(".item:eq(3)").click(function(){
          var image = $(this).attr("href");
          $(".item:eq(0) img").css("border", "0px")
          $(".item:eq(1) img").css("border", "0px")
          $(".item:eq(2) img").css("border", "0px")
          $(".item:eq(4) img").css("border", "0px")
          $("#view img").fadeOut(500, function(){
             $("#view img").attr("src", image);
             $(this).fadeIn(300);
          });
          $(".item:eq(3) img").css("border", "2px solid black")
          return false;
       });
      $(".item:eq(4)").click(function(){
          var image = $(this).attr("href");
          $(".item:eq(0) img").css("border", "0px")
          $(".item:eq(1) img").css("border", "0px")
          $(".item:eq(2) img").css("border", "0px")
          $(".item:eq(3) img").css("border", "0px")
          $("#view img").fadeOut(500, function(){
             $("#view img").attr("src", image);
             $(this).fadeIn(300);
          });
          $(".item:eq(4) img").css("border", "2px solid black")
          return false;
       });
      $(".item:eq(5)").click(function(){
          var image = $(this).attr("href");
          $(".item:eq(0) img").css("border", "0px")
          $(".item:eq(1) img").css("border", "0px")
          $(".item:eq(2) img").css("border", "0px")
          $(".item:eq(3) img").css("border", "0px")
          $("#view img").fadeOut(500, function(){
             $("#view img").attr("src", image);
             $(this).fadeIn(300);
          });
          $(".item:eq(5) img").css("border", "2px solid black")
          return false;
       });
   });
   
</script>
</head>
<body>
<div class="container">
<div id="content">
<h3>객실예약</h3><br>

<c:forEach var="dto" items="${dtos}">
	<div class="panel panel-default">
	  <div class="panel-body">
	    <h4><b>${dto.roomName}</b></h4><br>
	    <table id="imgTable" style="border:1px solid #EAEAEA;">
	    <tr>
	    <th>
	    <div id="view">
	    <img src="/uuplexImg/${dto.mainImg}" alt="">
	    </div>
	    </th>
	    <th>
	    <div>
	    	<ul id="thumb">
			<li><a href="/uuplexImg/${dto.detail_1}" id="item" class="${dto.roomName}"><img src="/uuplexImg/${dto.detail_1}" onclick="change('${dto.roomName}')"></a></li>
			<li><a href="/uuplexImg/${dto.detail_2}" id="item" class="${dto.roomName}"><img src="/uuplexImg/${dto.detail_2}"></a></li>
			<li><a href="/uuplexImg/${dto.detail_3}" id="item" class="${dto.roomName}"><img src="/uuplexImg/${dto.detail_3}"></a></li>
			<li><a href="/uuplexImg/${dto.detail_4}" id="item" class="${dto.roomName}"><img src="/uuplexImg/${dto.detail_4}"></a></li>
			<li><a href="/uuplexImg/${dto.detail_5}" id="item" class="${dto.roomName}"><img src="/uuplexImg/${dto.detail_5}"></a></li>
			<li><a href="/uuplexImg/${dto.mainImg}" id="item"  class="${dto.roomName}"><img src="/uuplexImg/${dto.mainImg}"></a></li>
			</ul>
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
		    </div>
		  </div>
		</div>
	</div><br>
	
<%-- <form action="reservConfirm" method="post" enctype="multipart/form-data" onsubmit="return reservCheck()">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel"><b>${dto.roomName}</b><small>&nbsp;&nbsp;&nbsp;예약정보를 입력하세요.</small></h4>
					</div>
					<div class="modal-body">

						<table class="table table-bordered">
							<tr>
								<th colspan="2">숙박정보</th>
							</tr>
							<tr>
								<td class="active">숙박날짜</td>
								<td><label for="start"> 체크인 : </label>
									<input type="date" id="start"> &nbsp;
									<label for="end"> 체크아웃 : </label>
									<input type="date" id="end">
								</td>
							</tr>
							<tr>
								<td class="active">입실인원</td>
								<td><input type="number" name="capacity"
									value="0" min="1" max="4"> 명</td>
							</tr>
							<tr>
								<td class="active">옵션 선택</td>
								<td><input type="checkbox" name="extraBed">&nbsp; 엑스트라 베드 &nbsp;&nbsp;[
								<input type="number" name="extraBed" value="0" min="1" max="3"> 개] &nbsp;
								<button type="button" class="btn btn-xs btn-default" data-toggle="popover" title="Extra bed" data-content="30,000원 / 1 bed">추가금액 확인</button>
								<br>
								<input type="checkbox" name="laundry"> 드라이클리닝/세탁 &nbsp;
								<button type="button" class="btn btn-xs btn-default" data-toggle="popover" title="laundry" data-content="30,000원 / 1 bed">추가금액 확인</button>
								<br>
								<input type="checkbox" name="breakfast"> 조식 &nbsp;
								<button type="button" class="btn btn-xs btn-default" data-toggle="popover" title="breakfast" data-content="30,000원 / 1 bed">추가금액 확인</button>
								</td>
							</tr>
							<tr>
								<th colspan="2">예약자정보</th>
							</tr>
							<tr>
								<td class="active">성명<small>(영문)</small></td>
								<td><input class="input" type="text" name="engName"></td>
							</tr>
							<tr>
								<th colspan="2">결제정보</th>
							</tr>
							<tr>
								<td class="active">카드종류</td>
								<td><select name="card">
										<option value="Visa">Visa</option>
										<option value="MasterCard">Master Card</option>
										<option value="AmericanExpress">American Express</option>
								</select></td>
							</tr>
							<tr>
								<td class="active">카드번호</td>
								<td><input class="input" type="text" name="cardNum"></td>
							</tr>
							<tr>
								<td class="active">만기일</td>
								<td><input type="month" id="endM"></td>
							</tr>
							
						</table>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default"
							data-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-default">다음단계</button>
					</div>
				</div>
			</div>
		</div>
	</form> --%>
	
	</c:forEach>
	<center><input class="btn btn-default btn-lg" type="button" value="메인으로"
		onclick="location.href='/uuplex/hotel'"></center>
		
	<%@ include file="/admin_Modal/hotelModal.jsp" %>
</div>
</div>
</body>
</html>