<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>


<!-- 상영 스케줄 입력 모달 시작 -->
<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<h4 class="modal-title">상영스케줄 등록</h4>
	</div>
	
	<form action="/uuplex/c-box/manage/schedule/add" method="post" name="scheduleInputForm" onsubmit="">
		<div class="modal-body">
		
			<table class="table">
				<tr>
					<th>Movie</th>
					<td >
						<select name="movie_num">
							<option value="">영화를 선택하세요</option>
							<c:forEach items="${dtos}" var="dto">
							<option value="${dto.movie_num}">${dto.title1}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>Theater</th>
					<td >
						<select name="theater_num">
							<option value="">상영관을 선택하세요</option>
							<option value="1">1관</option>
							<option value="2">2관</option>
							<option value="3">3관</option>
						
						</select>
					</td>
				</tr>
				<tr>
					<th>ShowTime</th>
					<td >
						<input type="datetime-local" name="showTime" placeholder="감독" maxlength="50" required>
					</td>
				</tr>
				
				
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" class="btn btn-primary" value="입력">
						<input type="reset" class="btn btn-warning" value="초기화">
						<input type="button" class="btn btn-danger" data-dismiss="modal" value="취소">
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>
<!-- 영화스케줄 입력 모달 끝 -->