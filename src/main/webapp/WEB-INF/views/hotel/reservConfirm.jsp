<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<<<<<<< HEAD
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
}
</style>

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
=======

<div class="container">
<form action="reservPro" method="post" name="reservPro">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">예약내역 확인</h4>
	</div>
	<table class="table table-bordered" id="reservTable">
		<tr>
			<th colspan="2">숙박정보</th>
		</tr>
		<tr>
			<td class="active">객실명</td>
			<td>${dto.roomName}</td>
			<td class="active">숙박날짜</td>
			<td><label for="start"> 체크인 : </label>
				
				<label for="end"> 체크아웃 : </label>
				
			</td>
		</tr>
		<tr>
			<td class="active">입실인원</td>
			<td>명</td>
		</tr>
		<tr>
			<td class="active">추가 옵션</td>
>>>>>>> origin/master
			<td>
			</td>
		</tr>
		
		<tr>
<<<<<<< HEAD
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
=======
			<th colspan="2">예약자정보</th>
		</tr>
		<tr>
			<td class="active">성명<small>(영문)</small></td>
			<td></td>
		</tr>
        <tr>
        	<td class="active">이메일</td>
        	<td>${dto.email}</td>
        </tr>
        
		<tr>
			<th colspan="2">결제정보</th>
		</tr>
		<tr>
			<td class="active">카드종류</td>
			<td></td>
		</tr>
		<tr>
			<td class="active">카드번호</td>
			<td></td>
		</tr>
		<tr>
			<td class="active">만기일</td>
			<td></td>
>>>>>>> origin/master
		</tr>
		
	</table>
	<hr>
	<div id="result" style="text-align:right">
<<<<<<< HEAD
	총 결제금액 : &nbsp;&nbsp;&nbsp; <font size="5em"> ${dto.totCharge} 원 </font>
	</div>
	<br><br><br>
	<center>
		<button type="button" class="btn btn-default">이전단계</button>
		<button type="submit" class="btn btn-default">예약하기</button>
	</center>
</form>
</div>
</div>
</body>
=======
	총 결제금액 : &nbsp;&nbsp;&nbsp; <font size="5em"> 원 </font>
	</div>
	
	<div class="modal-footer">
		<button type="button" class="btn btn-default">이전단계</button>
		<button type="submit" class="btn btn-default">예약하기</button>
		<button type="button" class="btn btn-default"
			data-dismiss="modal" onclick="window.location.reload()">닫기</button>
	</div>
	
	<%@ include file="/admin_Modal/hotelModal.jsp" %>
</form>
</div>	
>>>>>>> origin/master
