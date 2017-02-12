<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<head>
<style>
#content {
   width: 1700px;
   margin-top: 100px;
   margin-bottom: 200px;
}

#reservTable {
   margin: 70px 0px 50px 0px;
   text-align : center;
   valign : middle;
   width: 1140px;
   height: 600px;
   font-size: 1.15em;
}
</style>
<script type="text/javascript" src="/uuplex/resources/js/jquery-1.12.4.js"></script>

<!-- <script type="text/javascript">
function diff(value1, value2) {
	var arr1 = value1.split('-');
	var arr2 = value2.split('-');
	
	var dt1 = new Date(arr1[0], arr1[1], arr1[2]);
	var dt2 = new Date(arr2[0], arr2[1], arr2[2]);
	
	var diff = dt2 - dt1;
	var day = 1000 * 60 * 60 * 24; /* 밀리세컨초 * 초 * 분 * 시간
	var month = day * 30;
	var year = month * 12; */
	var param = document.getElementById("result");
	param.value = parseInt(diff/day);
	//document.write("차이 일수: " + (parseInt(diff/day)));
}

function window.onload() {
	diff('${dto.checkIn}', '${dto.checkOut}');
}
</script> -->

</head>
<body>
<div id="content">
<div class="container">
<form action="reservPro" method="post" name="reservPro">
   <h3>예약내역 확인</h3>
   <table class="table table-bordered" id="reservTable" >
      <tr>
         <th colspan="2" class="warning" style="height:60px; text-align:center;"><h4>숙박정보</h4></th>
      </tr>
      <tr>
         <td width="50%">객실명</td>
         <td>
         	<mark>${dto.roomName}</mark>
         	<input type="hidden" name="roomName" value="${dto.roomName}">
         </td>
      </tr>
      <tr>
         <td>숙박날짜</td>
         <td><label for="start"> 체크인 : </label>
            <mark>${dto.checkIn}</mark><br>
            <input type="hidden" name="checkIn" value="${dto.checkIn}">
            <label for="end"> 체크아웃 : </label>
            <mark>${dto.checkOut}</mark>    
            <input type="hidden" name="checkOut" value="${dto.checkOut}">
         </td>
      </tr>
      <tr>
         <td>숙박기간</td>
         <td>
         	<mark>${dto.day}</mark>박
         	 <input type="hidden" name="day" value="${dto.day}">
         </td>
      </tr>
      <tr>
         <td>입실인원</td>
         <td>
         	<mark>${dto.capacity}</mark>명
         	<input type="hidden" name="capacity" value="${dto.capacity}">
         </td>
      </tr>
      <tr>
         <td>추가 옵션</td>
         <td><mark>
         <c:if test="${dto.extraBed == null}">
         <c:if test="${dto.laundry == null}">
         <c:if test="${dto.breakfast == null}">
         	없음<br>
         </c:if>
         </c:if>
         </c:if>
         <c:if test="${dto.extraBed != null}">
         	엑스트라 베드 &nbsp;- &nbsp;${dto.extraBedcnt} 개<br>
         </c:if>
         <c:if test="${dto.laundry != null}">
         	 드라이클리닝/세탁<br>
         </c:if>
         <c:if test="${dto.breakfast != null}">
         	조식<br>
         </c:if>
         <input type="hidden" name="extraBed" value="${dto.extraBed}">
         <input type="hidden" name="extraBedcnt" value="${dto.extraBedcnt}">
         <input type="hidden" name="laundry" value="${dto.laundry}">
         <input type="hidden" name="breakfast" value="${dto.breakfast}">
         </mark></td>
      </tr>
      
      <tr>
         <th colspan="2" class="warning" style="height:60px; text-align:center"><h4>예약자정보</h4></th>
      </tr>
      <tr>
         <td>성명<small>(영문)</small></td>
         <td>
         	<mark>${dto.firstName} ${dto.lastName}</mark>
         	<input type="hidden" name="firstName" value="${dto.firstName}">
         	<input type="hidden" name="lastName" value="${dto.lastName}">
         	<input type="hidden" name=country value="${dto.country}">
         </td>
      </tr>
        <tr>
           <td>이메일</td>
           <td> <mark>${email}</mark> </td>
        </tr>
        
      <tr>
         <th colspan="2" class="warning" style="height:60px; text-align:center"><h4>결제정보</h4></th>
      </tr>
      <tr>
         <td>카드종류</td>
         <td>
         	<mark>${dto.card}</mark>
         	<input type="hidden" name="card" value="${dto.card}">
         </td>
      </tr>
      <tr>
         <td>카드번호</td>
         <td>
         	<mark>${dto.cardNum}</mark>
         	<input type="hidden" name="cardNum" value="${dto.cardNum}">
         </td>
      </tr>
      <tr>
         <td>만기일</td>
         <td>
         	<mark>${dto.cardEndM}</mark>
         	<input type="hidden" name="cardEndM" value="${dto.cardEndM}">
         </td>
      </tr>
      
   </table>
   <hr>
   <div id="result" style="text-align:right">
   	<font size="5em">총 결제금액 : &nbsp;&nbsp;&nbsp; ${dto.totCharge} 원 </font>
   	<input type="hidden" name="totCharge" value="${dto.totCharge}">
   </div>
   <br><br><br>
   <center>
      <button type="button" class="btn btn-default btn-lg" onclick="history.back()">돌아가기</button>
      <button type="submit" class="btn btn-default btn-lg">예약하기</button>
   </center>
</form>
</div>
</div>
</body>