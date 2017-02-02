<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<script src="${js}jquery-1.11.3.min.js"></script>

<style>
.row {
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
						<label><input type="radio" class="type" name="seatstate" value="0">좌석없음 </label>
						<label><input type="radio" class="type" name="seatstate" value="1" checked="checked">일반좌석 </label>
						<label><input type="radio" class="type" name="seatstate" value="2">장애인좌석</label>
					</td>
				</tr>
				<tr>
					<td colspan="21">
						<div
							style="width: 100%; padding: 5px 0; margin: 0 0 20px 0; border: 1px solid #aaaaaa;">screen</div>
					</td>
				</tr>
				<tr>
					<th>열 선택</th>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
					<td><input type="checkbox" class="row"></td>
				</tr>
				<c:set var="begin" value="0"/>
				<c:set var="end" value="19"/>
				<c:forEach items="${row}" var="row">
					<tr>
						<th>${row}</th>
						<c:forEach items="${seat}" var="seat" begin="${begin}" varStatus="status" end="${end}">
							<td><input type="checkbox" class="seat" value="${seat}">${seat}</td>
						</c:forEach>
						<c:set var="begin" value="${begin+20}" />
						<c:set var="end" value="${end+20}"/>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="20" align="center"><input type="submit"
						class="btn btn-primary" value="수정"> <input type="reset"
						class="btn btn-warning" value="초기화"> <input type="button"
						class="btn btn-danger" data-dismiss="modal" value="취소"></td>
				</tr>
			</table>

		</div>
	</form>
</div>