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

th {
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
   width:200px;      
}

#view img {
	width:500px;
	padding:5px;
}

</style>
<script type="text/javascript" src="C:\Dev\workspace\UUPlex\src\main\webapp\resources\js\jquery-1.12.4.js"></script>
<script type="text/javascript">
   $(function (){
      //첫번째 링크를 클릭한 경우
      $(".item:eq(0)").click(function(){
         //링크의 주소에 지정된 href속성값 획득
         var image = $(this).attr("href");
         //이미지 영역을 0.5초간 숨기고..
         $(".item:eq(1) img").css("border", "0px")
         $(".item:eq(2) img").css("border", "0px")
         $(".item:eq(3) img").css("border", "0px")
         $(".item:eq(4) img").css("border", "0px")
         $("#view img").fadeOut(500, function(){
            //이미지가 사라진 다음에 이미지경로를 클릭한 링크의 href 속성값으로 대치
            $("#view img").attr("src", image);
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
   });
</script>
</head>
<body>
<div class="container">
<div id="content">
<h3>객실예약</h3><br><br>

<c:forEach var="dto" items="${dtos}">
	<div class="panel panel-default">
	  <div class="panel-body">
	    <h4><em>${dto.roomName}</em></h4><br>
	    <table style="border:1px solid #EAEAEA;">
	    <tr>
	    <th>
	    <div id="view">
	    <img src="/uuplexImg/${dto.mainImg}" alt="">
	    </div>
	    </th>
	    <th>
	    <div>
	    	<ul id="thumb">
			<li><a href="/uuplexImg/${dto.detail_1}" class="item"><img src="/uuplexImg/${dto.detail_1}"></a></li>
			<li><a href="/uuplexImg/${dto.detail_2}" class="item"><img src="/uuplexImg/${dto.detail_2}"></a></li>
			<li><a href="/uuplexImg/${dto.detail_3}" class="item"><img src="/uuplexImg/${dto.detail_3}"></a></li>
			<li><a href="/uuplexImg/${dto.detail_4}" class="item"><img src="/uuplexImg/${dto.detail_4}"></a></li>
			<li><a href="/uuplexImg/${dto.detail_5}" class="item"><img src="/uuplexImg/${dto.detail_5}"></a></li>
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
		<button type="button" class="btn btn-default">바로예약</button>
		<div class="collapse" id="${dto.roomNum}">
		  <div class="well">
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
	</div><br><br>
	</c:forEach>
	<center><input class="btn btn-default btn-lg" type="button" value="메인으로"
		onclick="location.href='/uuplex/hotel'"></center>
</div>
</div>
</body>
</html>