<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<style>
.reserve th, .reserve td{
text-align: center;
padding: auto 5px;
}
</style>

<div class="container">

	<h3>영화 관리</h3>

	<table class="table table-hover reserve">
		<thead>
			<tr>
				<th colspan="2"">영화명</th>
				<th>상영관</th>
				<th>일시</th>
				<th>좌석</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${dtos}" var="dto">
				<tr>
					<td><img id="poster" src="/uuplexImg/c-box/${dto.poster}" width="100px"></td>
					<td width="50px"><a class="btn btn-link"
						onclick="reserveDetail(${dto.reserve_num})" data-toggle="modal"
						data-target="#modalPage">${dto.title1}</a></td>
					<td>${dto.theater_num}</td>
					<td>${dto.showtime}</td>
					<td>${dto.seat_num}</td>
					
					<td><input type="button" class="btn btn-danger" name="deleteButton" value="예약취소"
							onclick="window.location='/uuplex/c-box/user/reservation/delete?reserve_num=${dto.reserve_num}'"></td>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>

	<div class="modal fade" id="modalPage" role="dialog">
		<div class="modal-dialog modal-lg" id="dialog"></div>
	</div>

</div>

