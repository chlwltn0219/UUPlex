<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/theater.js"></script>

<style>
li {
	list-style-type: none;
}

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
	height: 30px;
	padding: 3px;
	border-top: 1px solid #aaaaaa;
}

.sche {
	width: 70px;
	position: absolute;
	opacity: 0.5;
	border-radius: 3px;
	color: #ffffff;
	background-color: #444444;
}
</style>

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
					<td><select name="movie_num">
							<option value="">영화를 선택하세요</option>
							<c:forEach items="${mdtos}" var="mdto">
								<option value="${mdto.movie_num}">${mdto.title1}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>상영관</th>
					<td><select name="theater_num" onchange="theaterschedule(this.value);">
							<option value="">상영관을 선택하세요</option>
							<option value=1>1</option>
							<option value=2>2</option>
							<option value=3>3</option>
							<option value=4>4</option>
					</select></td>
				</tr>
				<tr>
					<th>상영일</th>
					<td><input type="date" name="schedule_Date" placeholder=상영일
						maxlength="50" required></td>
				</tr>
				<tr>
					<th>상영시각</th>
					<td><input type="time" name="schedule_Time"></td>
				</tr>
				<tr>
					<th>스케줄</th>
					<td colspan="4">
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
							<table class="table table-bordered">
								<thead>
									<tr>
										<th style="width: 100px;">&nbsp;</th>
										<td><fmt:formatDate value="<%= new Date() %>" pattern="MM/dd E"/></td>
										<td><fmt:formatDate value="<%=new Date(new Date().getTime() + 60*60*24*1000)%>" pattern="MM/dd E"/></td>
										<td><fmt:formatDate value="<%=new Date(new Date().getTime() + 60*60*24*1000*2)%>" pattern="MM/dd E"/></td>
										<td><fmt:formatDate value="<%=new Date(new Date().getTime() + 60*60*24*1000*3)%>" pattern="MM/dd E"/></td>
										<td><fmt:formatDate value="<%=new Date(new Date().getTime() + 60*60*24*1000*4)%>" pattern="MM/dd E"/></td>
										<td><fmt:formatDate value="<%=new Date(new Date().getTime() + 60*60*24*1000*5)%>" pattern="MM/dd E"/></td>
										<td><fmt:formatDate value="<%=new Date(new Date().getTime() + 60*60*24*1000*6)%>" pattern="MM/dd E"/></td>
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
											<table class="table-bordered time" style="width: 100%">
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
													<c:forEach items="${sdtos}" var="sdto">
														<c:if test="${sdto.theater_num==1}">
															<div class="sche" style="left: ${sdto.day}px; top: ${sdto.time}px; height: ${sdto.runtime}px;">${sdto.title1}</div>
														</c:if>
													</c:forEach>
												</div>
												<div role="tabpanel" class="tab-pane" id="profile">
													<c:forEach items="${sdtos}" var="sdto">
														<c:if test="${sdto.theater_num==2}">
															<div class="sche" style="left: ${sdto.day}px; top: ${sdto.time}px; height: ${sdto.runtime}px;">${sdto.title1}</div>
														</c:if>
													</c:forEach>
												</div>
												<div role="tabpanel" class="tab-pane" id="messages">
													<c:forEach items="${sdtos}" var="sdto">
														<c:if test="${sdto.theater_num==3}">
															<div class="sche" style="left: ${sdto.day}px; top: ${sdto.time}px; height: ${sdto.runtime}px;">${sdto.title1}</div>
														</c:if>
													</c:forEach>
												</div>
												<div role="tabpanel" class="tab-pane" id="settings">
													<c:forEach items="${sdtos}" var="sdto">
														<c:if test="${sdto.theater_num==4}">
															<div class="sche" style="left: ${sdto.day}px; top: ${sdto.time}px; height: ${sdto.runtime}px;">${sdto.title1}</div>
														</c:if>
													</c:forEach>
												</div>
											</div>

										</div>
									</td>


								</tr>

							</table>


						</div>


					</td>
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
<!-- 영화정보 입력 모달 끝 -->