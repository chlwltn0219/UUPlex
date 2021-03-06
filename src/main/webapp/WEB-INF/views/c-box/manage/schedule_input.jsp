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
					<th>영화</th>
					<td><select  class="form-control" name="movie_num" required="required">
							<option value="">영화를 선택하세요</option>
							<c:forEach items="${mdtos}" var="mdto">
								<option value="${mdto.movie_num}">${mdto.title1}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>상영관</th>
					<td><select class="form-control select" name="theater_num" required="required">
							<option value="">상영관을 선택하세요</option>
							<c:forEach items="${theaters}" var="theater" varStatus="status">
								<c:if test="${theater_num==status.count}">
									<option value="${theater.theater_num}" selected="selected">${status.count}</option>
								</c:if>
								<c:if test="${theater_num!=status.count}">
								<option value="${theater.theater_num}">${status.count}</option>
								</c:if>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>상영일</th>
					<td><input type="date" class="form-control" name="schedule_Date" 
					min="<fmt:formatDate value="<%=new Date()%>" pattern="YYYY-MM-dd" />" 
					max="<fmt:formatDate value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 *6)%>" pattern="YYYY-MM-dd" />" 
					value="${date}" required="required"></td>
				</tr>
				<tr>
					<th>상영시간</th>
					<td><input type="time" class="form-control" name="schedule_Time" 
					min="08:50" max="24:00" value="${time}" required="required" step="300"></td>
				</tr>
				<tr>
					<td colspan="5" align="center"><input type="submit"
						class="btn btn-primary" value="입력"> <input type="reset"
						class="btn btn-warning" value="초기화"> <input type="button"
						class="btn btn-danger" data-dismiss="modal" value="취소"></td>
				</tr>
			</table>
		</div>
	</form>
</div>
