<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<script src="/uuplex/resources/js/hotelRequest.js"></script>
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
<script type="text/javascript">
//*popover
$(document).ready(function() {
    $('[data-toggle="popover"]').popover({container: "body"});
});

//*ajax
function load() {
	var extraBed = document.getElementById("extraBed");
	var extraBedcnt	= document.getElementById("extraBedcnt");
	var laundry = document.getElementById("laundry");
	var breakfast = document.getElementById("breakfast");

	var charge = ${charge};
	
	if(extraBed.checked) {
		charge = charge + (30000 * extraBedcnt.value);
	} else if(!extraBed.checked) {
		charge = charge;
	} 
	
	if(laundry.checked) {
		charge = charge + 10000;
	} else if(!laundry.checked) {
		charge = charge;
	}
	
	if(breakfast.checked) {
		charge = charge + 30000;
	} else if(!breakfast.checked) {
		charge = charge;
	}
	
	var params = "charge=" + charge;
	//sendRequest(callback, url, method, params) {} 호출
	sendRequest(loadPage, "calculation", "GET", params); //url = calculation.jsp
}

//콜백함수
function loadPage() {
	var result = document.getElementById("result");
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) {
			/* 응답결과가 HTML이면 responseText로 받고, XML이면 responseXML로 받는다.
			color.jsp가 div에 html로 응답한다. */
			result.innerHTML = httpRequest.responseText;
		} else {
			result.innerHTML = "에러발생";
		}
	} else {
		result.innerHTML = "상태: " + httpRequest.readyState;
	}
}
</script>

<c:if test="${memId == null}">
	<script type="text/javascript">
		alert("로그인 후에 이용하실 수 있습니다.");
		window.location='/uuplex/loginForm';
	</script>
</c:if>
<div class="container">
<form action="reservConfirm" method="post" name="reservConfirm" enctype="multipart/form-data" onsubmit="return reservChk()">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel"><b> ${roomName} 객실  </b><small>&nbsp;&nbsp;&nbsp;예약정보를 입력하세요.</small></h4>
	</div>
	<table class="table table-bordered" id="reservTable">
		<tr>
			<th colspan="2">숙박정보</th>
		</tr>
		<tr>
			<td class="active">숙박날짜</td>
			<td><label for="start"> 체크인 : </label>
				<input type="date" name="checkIn"> &nbsp;
				<label for="end"> 체크아웃 : </label>
				<input type="date" name="checkOut">
			</td>
		</tr>
		<tr>
			<td class="active">입실인원</td>
			<td><input type="number" name="capacity" value="1" min="1" max="4"> 명</td>
		</tr>
		<tr>
			<td class="active">옵션 선택</td>
			<td><input type="checkbox" name="extraBed" id="extraBed" onclick="load()"> 엑스트라 베드 &nbsp;&nbsp;-
			<select name="extraBedcnt" id="extraBedcnt">
					<option value="0">개수선택</option>
					<option value="1">1개</option>
					<option value="2">2개</option>
					<option value="3">3개</option>
			</select> &nbsp;&nbsp;
			
			<button type="button" class="btn btn-xs btn-warning" data-toggle="popover" title="Extra bed" data-content="30,000원 /1 bed">추가금액 확인</button>
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small>(추가할 개수를 선택한 후 체크해 주세요.)</small><br><br>
			<input type="checkbox" name="laundry" id="laundry" onclick="load()"> 드라이클리닝/세탁 &nbsp;&nbsp;
			<button type="button" class="btn btn-xs btn-warning" data-toggle="popover" title="laundry" data-content="10,000원 /1회">추가금액 확인</button>
			<br><br>
			<input type="checkbox" name="breakfast" id="breakfast" onclick="load()"> 조식 &nbsp;&nbsp;
			<button type="button" class="btn btn-xs btn-warning" data-toggle="popover" title="breakfast" data-content="30,000원 /1인">추가금액 확인</button>
			</td>
		</tr>
		
		<tr>
			<th colspan="2">예약자정보</th>
		</tr>
		<tr>
			<td class="active">성명<small>(한글)</small></td>
			<td>
				<input class="input" type="text" name="name" value="${dto.name}">
			</td>
		</tr>
		<tr>
			<td class="active">성명<small>(영문)</small></td>
			<td>
			<label for="firstName"> First name <small>(이름)</small> : </label>
			<input class="input" type="text" name="firstName" placeholder=" 영문으로 입력"><br>
			<label for="lastName"> Last name <small>(성)</small> : </label>
			<input class="input" type="text" name="lastName" placeholder=" 영문으로 입력">
			</td>
		</tr>
		<tr>
			<td class="active">출신 국가</td>
          	<td><input class="input" type="text" name="country" placeholder=" 직접 입력"></td>
        </tr>
        <tr>
			<td class="active">연락처</td>
          	<td><input class="input" type="tel" name="phone" value="${dto.phone}"></td>
        </tr>
        <tr>
        	<td class="active">이메일</td>
        	<td><input class="input" type="text" name="email" value="${dto.email}"></td>
        </tr>
        
		<tr>
			<th colspan="2">결제정보</th>
		</tr>
		<tr>
			<td class="active">카드종류</td>
			<td><select name="card">
					<option value="">카드선택</option>
					<option value="Visa">Visa</option>
					<option value="MasterCard">Master Card</option>
					<option value="AmericanExpress">American Express</option>
			</select></td>
		</tr>
		<tr>
			<td class="active">카드번호</td>
			<td><input class="input" type="text" name="cardNum" placeholder=" ' - ' 제외하고 입력"></td>
		</tr>
		<tr>
			<td class="active">만기일</td>
			<td><input type="month" name="cardEndM"></td>
		</tr>
		
	</table>
	<hr>
	<div id="result" style="text-align:right">
	총 결제금액 : &nbsp;&nbsp;&nbsp; <font size="5em"> ${charge}원 </font>
	</div>
	
	<div class="modal-footer">
		<button type="submit" class="btn btn-default">다음단계</button>
		<button type="button" class="btn btn-default"
			data-dismiss="modal" onclick="window.location.reload()">닫기</button>
	</div>
	
	<%@ include file="/admin_Modal/hotelModal.jsp" %>
</form>
</div>					
</body>
</html>