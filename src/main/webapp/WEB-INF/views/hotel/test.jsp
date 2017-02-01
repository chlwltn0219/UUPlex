<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
	
<form action="reservConfirm" method="post" enctype="multipart/form-data" onsubmit="return reservCheck()">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel"><b>[ ${roomName} ] 객실</b><small>&nbsp;&nbsp;&nbsp;예약정보를 입력하세요.</small></h4>
	</div>
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
		
	
	
	<div class="modal-footer">
		<button type="submit" class="btn btn-default">다음단계</button>
		<button type="button" class="btn btn-default"
			data-dismiss="modal" onclick="window.location.reload()">닫기</button>
	</div>
</form>
					
 
<!-- </body> -->
<!-- </html> -->