<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<%@page import="java.util.Date"%>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/schedule.js"></script>
<script src="${js}jquery-1.11.3.min.js"></script>

<script>
	$(function() {
		$("#time td").click(function() {
			var url = "/uuplex/c-box/manage/schedule/inputForm";

			var day = $(this).parent().prevAll().length;
			var date = $("#date thead tr").children().eq(day).text();

			var method = "GET";
			var params = "date=" + date + "&time=" + $(this).prevAll().length;
			sendRequest(scheduleModal, url, method, params);
		});

		$(".glyphicon-trash")
				.click(
						function() {
							if (confirm($(this).val() + "상영일정을 삭제하시겠습니까?")) {
								window.location = "/uuplex/c-box/manage/schedule/delete?num="
										+ $(this).val();
							}
						});

	});
</script>

<style>
.timetable {
	width: 100%;
}

.timetable th {
	text-align: right;
	height: 30px;
	border-top: 1px solid #aaaaaa;
	padding: 3px;
}

.time td {
	width: 95px;
	height: 30px;
	padding: 3px;
	border-top: 1px solid #aaaaaa;
}

.time td:HOVER {
	background-color: #cccccc;
}

#dsche {
	margin: 30px auto 0 auto;
	display: block;
	opacity: 0;
}

.sche {
	width: 120px;
	position: absolute;
	opacity: 0.7;
	border-radius: 3px;
	color: #ffffff;
	background-color: #444444;
	transition: 0.5s;
}

.sche:HOVER {
	opacity: 1;
}

.sche:HOVER #dsche {
	opacity: 1;
}

thead td {
	width: 94px;
}
</style>

<div class="container">
	<h3>상영일정 관리</h3>
	<div class="form-group pull-right">

		<input type="button" class="btn btn-primary" value="등록하기"
			onclick="scheduleInput()" data-toggle="modal"
			data-target="#modalPage">

	</div>

	<div role="tabpanel">

		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#home"
				aria-controls="home" role="tab" data-toggle="tab">1관</a></li>
			<li role="presentation"><a href="#profile"
				aria-controls="profile" role="tab" data-toggle="tab">2관</a></li>
			<li role="presentation"><a href="#messages"
				aria-controls="messages" role="tab" data-toggle="tab">3관</a></li>
			<li role="presentation"><a href="#settings"
				aria-controls="settings" role="tab" data-toggle="tab">4관</a></li>
		</ul>
		<table class="table table-bordered" id="date">
			<thead>
				<tr>
					<th style="width: 100px;">&nbsp;</th>
					<td><fmt:formatDate value="<%=new Date()%>" pattern="MM/dd E" /></td>
					<td><fmt:formatDate
							value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000)%>"
							pattern="MM/dd E" /></td>
					<td><fmt:formatDate
							value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 2)%>"
							pattern="MM/dd E" /></td>
					<td><fmt:formatDate
							value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 3)%>"
							pattern="MM/dd E" /></td>
					<td><fmt:formatDate
							value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 4)%>"
							pattern="MM/dd E" /></td>
					<td><fmt:formatDate
							value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 5)%>"
							pattern="MM/dd E" /></td>
					<td><fmt:formatDate
							value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 6)%>"
							pattern="MM/dd E" /></td>
				</tr>
			</thead>
			<tr>
				<td style="padding: 0;">
					<div>
						<table class="timetable">
							<tr>
								<th>9:00 AM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>10:00 AM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>11:00 AM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>12:00 AM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>1:00 PM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>2:00 PM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>3:00 PM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>4:00 PM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>5:00 PM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>6:00 PM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>7:00 PM</th>
							</tr>
							<tr>
								<th>&nbsp;</th>
							</tr>
						</table>
					</div>
				</td>
				<td colspan="7" style="padding: 0;">
					<div style="position: relative;">
						<table class="table-bordered time" id="time" style="width: 100%">
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>

						</table>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="home">
								<c:forEach items="${dtos}" var="sdto">
									<c:if test="${sdto.theater_num==1}">
										<div class="sche"
											style="left: ${sdto.day}px; top: ${sdto.time}px; height: ${sdto.runtime}px;">
											${sdto.title1}
											<button id="dsche" type="button"
												class="btn btn-default glyphicon glyphicon-trash"
												value="${sdto.schedule_num}">삭제</button>
										</div>
									</c:if>
								</c:forEach>
							</div>
							<div role="tabpanel" class="tab-pane" id="profile">
								<c:forEach items="${dtos}" var="sdto">
									<c:if test="${sdto.theater_num==2}">
										<div class="sche"
											style="left: ${sdto.day}px; top: ${sdto.time}px; height: ${sdto.runtime}px;">
											${sdto.title1}
											<button id="dsche" type="button"
												class="btn btn-default glyphicon glyphicon-trash"
												value="${sdto.schedule_num}">삭제</button>
										</div>
									</c:if>
								</c:forEach>
							</div>
							<div role="tabpanel" class="tab-pane" id="messages">
								<c:forEach items="${dtos}" var="sdto">
									<c:if test="${sdto.theater_num==3}">
										<div class="sche"
											style="left: ${sdto.day}px; top: ${sdto.time}px; height: ${sdto.runtime}px;">
											${sdto.title1}
											<button id="dsche" type="button"
												class="btn btn-default glyphicon glyphicon-trash"
												value="${sdto.schedule_num}">삭제</button>
										</div>
									</c:if>
								</c:forEach>
							</div>
							<div role="tabpanel" class="tab-pane" id="settings">
								<c:forEach items="${dtos}" var="sdto">
									<c:if test="${sdto.theater_num==4}">
										<div class="sche"
											style="left: ${sdto.day}px; top: ${sdto.time}px; height: ${sdto.runtime}px;">
											${sdto.title1}
											<button id="dsche" type="button"
												class="btn btn-default glyphicon glyphicon-trash"
												value="${sdto.schedule_num}">삭제</button>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div class="modal fade" id="modalPage" role="dialog">
		<div class="modal-dialog" id="dialog"></div>
	</div>
</div>

