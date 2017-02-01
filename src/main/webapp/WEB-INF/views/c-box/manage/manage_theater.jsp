<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/theater.js"></script>
<script src="${js}jquery-1.11.3.min.js"></script>

<script>
	$(function() {
		var seatclass = [ 'btn-default', 'btn-primary', 'btn-success' ];//클래스 이름 지정

		var type = $(':radio[name="type"]:checked').val();//라디오 현재값

		
		for (var i = 0; i < 960; i++) {
			$(".seat").eq(i).addClass(seatclass[$(".seat").eq(i).val()]);
		}
		
		$(".seat").click(function() {
			
			$(this).attr('class', 'seat btn btn-sm ' + seatclass[type]);
			$(this).val(type);
			$(this).next().val(type);
		});

		$(".type").click(function() {

			type = $(':radio[name="type"]:checked').val();

			$(".seat").click(function() {

				$(this).attr('class', 'seat btn btn-sm ' + seatclass[type]);
				$(this).val(type);
				$(this).next().val(type);
			});

		});

	});
</script>

<style>
.seattable td {
	padding: 4px;
	text-align: center;
}

.seatarrange td, .seatarrange th {
	padding: 2px;
	text-align: center;
}

.seattable, .seatarrange {
	width: 800px;
	margin: 0 auto;
}
</style>

<div class="container">
	<h3>상영관 관리</h3>

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

		<table class="seattable">
			<tr>
				<td><label><input type="radio" class="type" name="type"
						value="0">좌석없음</label> <label><input type="radio"
						class="type" name="type" value="1" checked="checked">일반좌석</label>
					<label><input type="radio" class="type" name="type"
						value="2">장애인좌석</label></td>
			</tr>
			<tr>
				<td>
					<div
						style="width: 100%; padding: 5px 0; margin: 0 0 20px 0; border: 1px solid #aaaaaa;">screen</div>
				</td>
			</tr>
		</table>


		<!-- Tab panes -->
		<div class="tab-content">

			<div role="tabpanel" class="tab-pane active" id="home">
				<c:forEach items="${dtos}" var="dto">
					<c:if test="${dto.theater_num==1}">
						<form action="/uuplex/c-box/manage/theater/modify" method="post"
							name="theaterForm" onsubmit="">
							<input type="hidden" name="theater_num"
								value="${dto.theater_num}">
							<!--  영화 정보 추가하기 -->
							<%-- 이미지 경로 확인 <img src="<%=request.getServletContext().getContextPath()%>/saveImage/kb01.jpg"> --%>
							<table class="seatarrange">
								<c:set var="begin" value="0" />
								<c:set var="end" value="19" />
								<c:forEach items="${row}" var="row">
									<tr>
										<th>${row}</th>
										<c:forEach items="${dto.seats}" var="seat" begin="${begin}" varStatus="status" end="${end}">
											<td>
												<button type="button" class="seat btn btn-sm" value="${seat}" style="padding: 5px 1px; width: 30px;">
													${row}${status.count}</button> <input type="hidden" name="seat"
												value="${seat}">
											</td>
										</c:forEach>
										<c:set var="begin" value="${begin+20}" />
										<c:set var="end" value="${end+20}" />
									</tr>
								</c:forEach>
								<tr>
									<td colspan="20" align="center"><input type="submit"
										class="btn btn-primary" value="수정"> <input
										type="button" class="btn btn-warning"
										onclick="window.location='/uuplex/c-box/manage_theater'"
										value="초기화">
								</tr>
							</table>
						</form>
					</c:if>
				</c:forEach>
			</div>

			<div role="tabpanel" class="tab-pane" id="profile">
				<c:forEach items="${dtos}" var="dto">
					<c:if test="${dto.theater_num==2}">
						<form action="/uuplex/c-box/manage/theater/modify" method="post"
							name="theaterForm" onsubmit="">
							<input type="hidden" name="theater_num"
								value="${dto.theater_num}">
							<!--  영화 정보 추가하기 -->
							<%-- 이미지 경로 확인 <img src="<%=request.getServletContext().getContextPath()%>/saveImage/kb01.jpg"> --%>
							<table class="seatarrange">
								<c:set var="begin" value="0" />
								<c:set var="end" value="19" />
								<c:forEach items="${row}" var="row">
									<tr>
										<th>${row}</th>
										<c:forEach items="${dto.seats}" var="seat" begin="${begin}"
											varStatus="status" end="${end}">
											<td>
												<button type="button" class="seat btn btn-sm"
													value="${seat}" style="padding: 5px 1px; width: 30px;">
													${row}${status.count}</button> <input type="hidden" name="seat"
												value="${seat}">
											</td>
										</c:forEach>
										<c:set var="begin" value="${begin+20}" />
										<c:set var="end" value="${end+20}" />
									</tr>
								</c:forEach>
								<tr>
									<td colspan="20" align="center"><input type="submit"
										class="btn btn-primary" value="수정"> <input
										type="button" class="btn btn-warning"
										onclick="window.location='/uuplex/c-box/manage_theater'"
										value="초기화">
								</tr>
							</table>
						</form>
					</c:if>
				</c:forEach>
			</div>
			<div role="tabpanel" class="tab-pane" id="messages">
				<c:forEach items="${dtos}" var="dto">
					<c:if test="${dto.theater_num==3}">
						<form action="/uuplex/c-box/manage/theater/modify" method="post"
							name="theaterForm" onsubmit="">
							<input type="hidden" name="theater_num"
								value="${dto.theater_num}">
							<!--  영화 정보 추가하기 -->
							<%-- 이미지 경로 확인 <img src="<%=request.getServletContext().getContextPath()%>/saveImage/kb01.jpg"> --%>
							<table class="seatarrange">
								<c:set var="begin" value="0" />
								<c:set var="end" value="19" />
								<c:forEach items="${row}" var="row">
									<tr>
										<th>${row}</th>
										<c:forEach items="${dto.seats}" var="seat" begin="${begin}"
											varStatus="status" end="${end}">
											<td>
												<button type="button" class="seat btn btn-sm"
													value="${seat}" style="padding: 5px 1px; width: 30px;">
													${row}${status.count}</button> <input type="hidden" name="seat"
												value="${seat}">
											</td>
										</c:forEach>
										<c:set var="begin" value="${begin+20}" />
										<c:set var="end" value="${end+20}" />
									</tr>
								</c:forEach>
								<tr>
									<td colspan="20" align="center"><input type="submit"
										class="btn btn-primary" value="수정"> <input
										type="button" class="btn btn-warning"
										onclick="window.location='/uuplex/c-box/manage_theater'"
										value="초기화">
								</tr>
							</table>
						</form>
					</c:if>
				</c:forEach>
			</div>
			<div role="tabpanel" class="tab-pane" id="settings">
				<c:forEach items="${dtos}" var="dto">
					<c:if test="${dto.theater_num==4}">
						<form action="/uuplex/c-box/manage/theater/modify" method="post"
							name="theaterForm" onsubmit="">
							<input type="hidden" name="theater_num"
								value="${dto.theater_num}">
							<!--  영화 정보 추가하기 -->
							<%-- 이미지 경로 확인 <img src="<%=request.getServletContext().getContextPath()%>/saveImage/kb01.jpg"> --%>
							<table class="seatarrange">
								<c:set var="begin" value="0" />
								<c:set var="end" value="19" />
								<c:forEach items="${row}" var="row">
									<tr>
										<th>${row}</th>
										<c:forEach items="${dto.seats}" var="seat" begin="${begin}"
											varStatus="status" end="${end}">
											<td>
												<button type="button" class="seat btn btn-sm"
													value="${seat}" style="padding: 5px 1px; width: 30px;">
													${row}${status.count}</button> <input type="hidden" name="seat"
												value="${seat}">
											</td>
										</c:forEach>
										<c:set var="begin" value="${begin+20}" />
										<c:set var="end" value="${end+20}" />
									</tr>
								</c:forEach>
								<tr>
									<td colspan="20" align="center"><input type="submit"
										class="btn btn-primary" value="수정"> <input
										type="button" class="btn btn-warning"
										onclick="window.location='/uuplex/c-box/manage_theater'"
										value="초기화">
								</tr>
							</table>
						</form>
					</c:if>
				</c:forEach>
			</div>

		</div>
	</div>
</div>