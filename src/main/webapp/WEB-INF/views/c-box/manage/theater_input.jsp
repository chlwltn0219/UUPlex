<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../setting.jsp"%>

<script>
	
</script>

<style>
.seatcheck {
	width: 15px;
	height: 15px;
}

.seattable td {
	padding: 0 4px;
	text-align: center;
}

.seattable th {
	text-align: center;
	width: 50px;
}

.seattable {
	width: 510px;
	margin: 0 auto;
}
</style>

<!-- 영화정보 입력 모달 시작 -->
<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<h4 class="modal-title">상영관 등록</h4>
	</div>
	<form action="/uuplex/c-box/manage/theater/add" method="post"
		name="theaterInputForm" enctype="multipart/form-data" onsubmit="">
		<div class="modal-body">
			<!--  영화 정보 추가하기 -->
			<%-- 이미지 경로 확인 <img src="<%=request.getServletContext().getContextPath()%>/saveImage/kb01.jpg"> --%>
			<table class="seattable">
				<tr>
					<td colspan="21">
						<label><input type="radio" class="non" name="seatstate" value="0">좌석없음 </label>
						<label><input type="radio" class="com" name="seatstate" value="1" checked="checked">일반좌석 </label>
						<label><input type="radio" class="dis" name="seatstate" value="2">장애인좌석 </label>
					</td>
				</tr>
				<tr>
					<td colspan="21">
						<div style="width: 100%; padding: 5px 0; margin: 0 0 20px 0; border: 1px solid #aaaaaa;">screen</div>
					</td>
				</tr>
				<tr>
					<th>열 선택</th>
					<td><input type="checkbox" class="seatcheck hchk1"></td>
					<td><input type="checkbox" class="seatcheck hchk2"></td>
					<td><input type="checkbox" class="seatcheck hchk3"></td>
					<td><input type="checkbox" class="seatcheck hchk4"></td>
					<td><input type="checkbox" class="seatcheck hchk5"></td>
					<td><input type="checkbox" class="seatcheck hchk6"></td>
					<td><input type="checkbox" class="seatcheck hchk7"></td>
					<td><input type="checkbox" class="seatcheck hchk8"></td>
					<td><input type="checkbox" class="seatcheck hchk9"></td>
					<td><input type="checkbox" class="seatcheck hchk10"></td>
					<td><input type="checkbox" class="seatcheck hchk11"></td>
					<td><input type="checkbox" class="seatcheck hchk12"></td>
					<td><input type="checkbox" class="seatcheck hchk13"></td>
					<td><input type="checkbox" class="seatcheck hchk14"></td>
					<td><input type="checkbox" class="seatcheck hchk15"></td>
					<td><input type="checkbox" class="seatcheck hchk16"></td>
					<td><input type="checkbox" class="seatcheck hchk17"></td>
					<td><input type="checkbox" class="seatcheck hchk18"></td>
					<td><input type="checkbox" class="seatcheck seat19"></td>
					<td><input type="checkbox" class="seatcheck seat20"></td>
				</tr>
				<tr>
					<th>A</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>B</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>C</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>D</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>E</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>F</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>G</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>H</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>I</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>J</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>K</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<th>L</th>
					<td><input type="checkbox" class="seatcheck seat1" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat2" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat3" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat4" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat5" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat6" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat7" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat8" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat9" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat10" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat11" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat12" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat13" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat14" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat15" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat16" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat17" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat18" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat19" name="seat" value=""></td>
					<td><input type="checkbox" class="seatcheck seat20" name="seat" value=""></td>
				</tr>
				<tr>
					<td colspan="20" align="center"><input type="submit"
						class="btn btn-primary" value="입력"> <input type="reset"
						class="btn btn-warning" value="초기화"> <input type="button"
						class="btn btn-danger" data-dismiss="modal" value="취소"></td>
				</tr>
			</table>
			
		</div>
	</form>
</div>
<script src="${js}jquery-1.12.4.min.js"></script>
		<script src="${js}seat.js"></script>


<!-- 영화정보 입력 모달 끝 -->