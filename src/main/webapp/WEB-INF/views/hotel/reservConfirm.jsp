<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>

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
			<td>
			</td>
		</tr>
		
		<tr>
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
		</tr>
		
	</table>
	<hr>
	<div id="result" style="text-align:right">
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
