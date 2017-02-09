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
<script type="text/javascript">
function diff(value1, value2) {
	var arr1 = value1.split('-');
	var arr2 = value2.split('-');
	
	var dt1 = new Date(arr1[0], arr1[1], arr1[2]);
	var dt2 = new Date(arr2[0], arr2[1], arr2[2]);
	
	var diff = dt2 - dt1;
	var day = 1000 * 60 * 60 * 24; /* 밀리세컨초 * 초 * 분 * 시간
	var month = day * 30;
	var year = month * 12; */
	
	document.write("차이 일수: " + (parseInt(diff/day)));
}

</script>
</head>
<body onload="diff()">
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
         <td><mark>${dto.roomName}</mark></td>
      </tr>
      <tr>
         <td>숙박날짜</td>
         <td><label for="start"> 체크인 : </label>
            <mark>${dto.checkIn}</mark><br>
            <label for="end"> 체크아웃 : </label>
            <mark>${dto.checkOut}</mark>    
         </td>
      </tr>
      <tr>
         <td>숙박기간</td>
         <td> 박</td>
      </tr>
      <tr>
         <td>입실인원</td>
         <td><mark>${dto.capacity}</mark>명</td>
      </tr>
      <tr>
         <td>추가 옵션</td>
         <td><mark>
         <c:if test="${dto.extraBed != null}">
         	엑스트라 베드 &nbsp;- &nbsp;${dto.extraBedcnt} 개<br>
         </c:if>
         <c:if test="${dto.laundry != null}">
         	 드라이클리닝/세탁<br>
         </c:if>
         <c:if test="${dto.breakfast != null}">
         	조식<br>
         </c:if>
         </mark></td>
      </tr>
      
      <tr>
         <th colspan="2" class="warning" style="height:60px; text-align:center"><h4>예약자정보</h4></th>
      </tr>
      <tr>
         <td>성명<small>(영문)</small></td>
         <td><mark>${dto.firstName} ${dto.lastName}</mark></td>
      </tr>
        <tr>
           <td>이메일</td>
           <td><mark>${dto.email}</mark></td>
        </tr>
        
      <tr>
         <th colspan="2" class="warning" style="height:60px; text-align:center"><h4>결제정보</h4></th>
      </tr>
      <tr>
         <td>카드종류</td>
         <td><mark>${dto.card}</mark></td>
      </tr>
      <tr>
         <td>카드번호</td>
         <td><mark>${dto.cardNum}</mark></td>
      </tr>
      <tr>
         <td>만기일</td>
         <td><mark>${dto.cardEndM}</mark></td>
      </tr>
      
   </table>
   <hr>
   <div id="result" style="text-align:right">
   	<font size="5em">총 결제금액 : &nbsp;&nbsp;&nbsp; ${dto.totCharge} 원 </font>
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