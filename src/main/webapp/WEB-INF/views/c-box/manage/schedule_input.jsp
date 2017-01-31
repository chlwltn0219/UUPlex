<<<<<<< HEAD
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
=======
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/theater.js"></script>

<!-- 영화정보 입력 모달 시작 -->
<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<h4 class="modal-title">영화 등록</h4>
	</div>
	<form action="/uuplex/c-box/manage/schedule/add" method="post"
		name="scheduleInputForm" onsubmit="">
		<div class="modal-body">
			<!--  영화 정보 추가하기 -->
			<%-- 이미지 경로 확인 <img src="<%=request.getServletContext().getContextPath()%>/saveImage/kb01.jpg"> --%>
			<table class="table">
				<tr>
					<th>영화${time}</th>
					<td><select name="movie_num" required="required">
							<option value="">영화를 선택하세요</option>
							<c:forEach items="${mdtos}" var="mdto">
								<option value="${mdto.movie_num}">${mdto.title1}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>상영관</th>
					<td><select name="theater_num" required="required">
							<option value="">상영관을 선택하세요</option>
							<option value=1>1</option>
							<option value=2>2</option>
							<option value=3>3</option>
							<option value=4>4</option>
					</select></td>
				</tr>
				<tr>
					<th>상영일</th>
					<td><input type="date" name="schedule_Date" min="<fmt:formatDate value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000)%>" pattern="YYYY-MM-dd" />" max="<fmt:formatDate value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 *6)%>" pattern="YYYY-MM-dd" />" required="required"></td>
				</tr>
				<tr>
					<th>상영시각</th>
					<td><input type="time" name="schedule_Time" value="09:00" required="required" step="300"></td>
				</tr>
				<tr>
					<td colspan="5" align="center"><input type="submit"
						class="btn btn-primary" value="입력"> <input type="reset"
						class="btn btn-warning" value="초기화"> <input type="button"
						class="btn btn-danger" data-dismiss="modal" value="취소"></td>
>>>>>>> 21259d5f70f2eb2a6c237d9f6350557c4e495678
				</tr>
			</table>
		</div>
	</form>
</div>
<<<<<<< HEAD
<!-- 영화스케줄 입력 모달 끝 -->
=======
<!-- 영화정보 입력 모달 끝 -->
>>>>>>> 21259d5f70f2eb2a6c237d9f6350557c4e495678
