<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script src="${js}jquery-1.11.3.min.js"></script>

<script>
	$(function() {
		
		$(".nav-tabs").children().eq(0).attr('class','active');
		$(".tab-pane").eq(0).addClass('active');

		var seatclass = [ 'btn-default', 'btn-primary', 'btn-success' ];//클래스 이름 지정

		var type = $(':radio[name="type"]:checked').val();//라디오 현재값

		for (var j = 0; j < $(".seatarrange").length; j++) {
			for (var i = 0; i < 240; i++) {
				$(".seatarrange").eq(j).find(".seat").eq(i).addClass(
						seatclass[$(".seatarrange").eq(j).find(".seat").eq(i)
								.val()]);
			}
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
			<c:forEach items="${dtos}" var="dto" varStatus="status" >
				<li role="presentation"><a href="#${dto.theater_num}" aria-controls="${dto.theater_num}" role="tab" data-toggle="tab">${status.count}관</a></li>
			</c:forEach>
			
			
			<li role="presentation"><a href="#추가" aria-controls="추가" role="tab" data-toggle="tab">
			<span class="glyphicon glyphicon-plus"></span></a></li>
		</ul>


		<div class="tab-content">

			<c:forEach items="${dtos}" var="dto" varStatus="status">
				<div role="tabpanel" class="tab-pane" id="${dto.theater_num}">
					<table class="seattable">
						<tr>
							<td style="font-size: 20px; font-weight: bold; padding: 10px;">${status.count}관&nbsp;/&nbsp;${dto.seatCnt}석</td>
						</tr>
						<tr>
							<td><label><input type="radio" class="type"
									name="type" value="0">좌석없음</label> <label><input
									type="radio" class="type" name="type" value="1"
									checked="checked">일반좌석</label> <label><input
									type="radio" class="type" name="type" value="2">장애인좌석</label></td>
						</tr>
						<tr>
							<td>
								<div
									style="width: 100%; padding: 5px 0; margin: 0 0 20px 0; border: 1px solid #aaaaaa;">screen</div>
							</td>
						</tr>
					</table>
					<form action="/uuplex/c-box/manage/theater/modify" method="post"
						name="theaterForm" onsubmit="">
						<input type="hidden" name="theater_num" value="${dto.theater_num}">

						<table class="seatarrange">
							<c:set var="begin" value="0" />
							<c:set var="end" value="19" />
							<c:forEach items="${row}" var="row">
								<tr>
									<th>${row}</th>
									<c:forEach items="${dto.seats}" var="seat" begin="${begin}"
										varStatus="status" end="${end}">
										<td>
											<button type="button" class="seat btn btn-sm" value="${seat}"
												style="padding: 5px 1px; width: 30px;">
												${row}${status.count}</button> <input type="hidden" name="seat"
											value="${seat}">
										</td>
									</c:forEach>
									<c:set var="begin" value="${begin+20}" />
									<c:set var="end" value="${end+20}" />
								</tr>
							</c:forEach>
							<tr>
								<td colspan="20" align="center">
								<input type="submit" class="btn btn-primary" value="수정">
								<input type="button" class="btn btn-warning" onclick="window.location='/uuplex/c-box/manage/theater/delete?theater_num=${dto.theater_num}'" value="삭제">
							</tr>
						</table>
					</form>
				</div>
			</c:forEach>

			<div role="tabpanel" class="tab-pane" id="추가">
				<table class="seattable">
					<tr>
						<td style="font-size: 20px; font-weight: bold; padding: 10px;">상영관
							추가</td>
					</tr>
					<tr>
						<td><label><input type="radio" class="type"
								name="type" value="0">좌석없음</label> <label><input
								type="radio" class="type" name="type" value="1"
								checked="checked">일반좌석</label> <label><input
								type="radio" class="type" name="type" value="2">장애인좌석</label></td>
					</tr>
					<tr>
						<td>
							<div
								style="width: 100%; padding: 5px 0; margin: 0 0 20px 0; border: 1px solid #aaaaaa;">screen</div>
						</td>
					</tr>
				</table>
				<form action="/uuplex/c-box/manage/theater/input" method="post">
					<table class="seatarrange">
						<c:forEach items="${row}" var="row" varStatus="r">
							<tr>
										<th>${row}</th>
							<c:forEach begin="0" end="19" varStatus="s">
								<td>
									<button type="button" name="seat" class="seat btn btn-sm" value="1" style="padding: 5px 1px; width: 30px;">
										${row}${s.count}
									</button>
									<input type="hidden" name="seat" value="1">
								</td>
							</c:forEach>
						</c:forEach>
						<tr>
							<td colspan="20" align="center"><input type="submit" class="btn btn-primary" value="추가">
							<input type="button" class="btn btn-warning" onclick="window.location='/uuplex/c-box/manage_theater'" value="초기화">
						</tr>
					</table>
				</form>
			</div>

		</div>
	</div>
</div>