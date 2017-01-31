<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/schedule.js"></script>


<div class="container">
	<h3>상영일정 관리</h3>

	<table class="table table-hover">
		<thead>
			<tr>
				<td colspan="2">
					<!-- 등록 -->
					<div class="form-group pull-right">

						<input type="button" class="btn btn-primary" value="등록하기"
							onclick="scheduleInput()" data-toggle="modal"
							data-target="#modalPage">

					</div>
				</td>
			</tr>
			<tr>
				<th>영화</th>
				<th>상영관</th>
				<th>상영날짜</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${dtos}" var="dto">
				<tr>
					<td>${dto.showtime}</td>
					<td>${dto.theater_num}</td>
					<td>${dto.showtime}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>

	<div class="modal fade" id="modalPage" role="dialog">
		<div class="modal-dialog modal-lg" id="dialog"></div>
	</div>

</div>



