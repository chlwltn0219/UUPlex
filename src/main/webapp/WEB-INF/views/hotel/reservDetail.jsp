<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="/uuplex/resources/js/hotelRequest.js"></script>
<script type="text/javascript" src="/uuplex/resources\js\jquery-1.12.4.js"></script>
<html>
<head>
<style>
form {
	width:870px;
}
#result {
	margin-right:50px;
}
</style>

</head>
<body>
<script src="/uuplex/resources/hotel_script/hotelScript.js"></script>

<div class="container">
<form action="reservCancel" method="post" name="reservCancel" onsubmit="return cancelChk();">
<input type="hidden" name="roomName" value="${roomName}">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">예약내역 상세정보</h4>
	</div>
	<div class="modal-body">

		<table class="table" id="reservTable" >
	      <tr>
	         <th colspan="2" class="warning" style="text-align:center;"><h5>숙박정보</h5></th>
	      </tr>
	      <tr>
	         <td width="50%">객실명</td>
	         <td>${dto.roomName}</td>
	      </tr>
	      <tr>
	         <td>숙박날짜</td>
	         <td>
	         	<label for="start"> 체크인 : </label> ${dto.checkIn}<br>
	            <label for="end"> 체크아웃 : </label> ${dto.checkOut}  
	         </td>
	      </tr>
	      <tr>
	         <td>숙박기간</td>
	         <td>${dto.day}박</td>
	      </tr>
	      <tr>
	         <td>입실인원</td>
	         <td>${dto.capacity}명</td>
	      </tr>
	      <tr>
	         <td>추가 옵션</td>
	         <td>
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
	         </td>
	      </tr>
	      
	      <tr>
	         <th colspan="2" class="warning" style="text-align:center"><h5>예약자정보</h5></th>
	      </tr>
	      <tr>
	         <td>성명<small>(영문)</small></td>
	         <td>${dto.firstName} ${dto.lastName}</td>
	      </tr>
	        <tr>
	           <td>이메일</td>
	           <td>${email}</td>
	        </tr>
	        
	      <tr>
	         <th colspan="2" class="warning" style="text-align:center"><h5>결제정보</h5></th>
	      </tr>
	      <tr>
	         <td>카드종류</td>
	         <td>${dto.card}</td>
	      </tr>
	      <tr>
	         <td>카드번호</td>
	         <td>${dto.cardNum}</td>
	      </tr>
	      <tr>
	         <td>만기일</td>
	         <td>${dto.cardEndM}</td>
	      </tr>
	   </table>
	   <hr><br>
	   <div id="result" style="text-align:right">
	   	<font size="4em">총 결제금액 : &nbsp;&nbsp;&nbsp; ${dto.totCharge} 원 </font>
	   </div>
	   <br>
	</div>

	<div class="modal-footer">
		<button type="submit" class="btn btn-default btn-lg">예약취소</button>
		<button type="button" class="btn btn-default btn-lg"
			data-dismiss="modal" onclick="window.location.reload()">닫기</button>
	</div>
	
</form>
</div>					
</body>
</html>