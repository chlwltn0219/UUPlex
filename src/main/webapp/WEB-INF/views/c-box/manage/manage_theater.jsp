<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/theater.js"></script>


<div class="container">
	<h3>영화 관리</h3>

	<table class="table table-hover">
		<thead>
			
			<tr>
				<th>상영관 번호</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${dtos}" var="dto">
				<tr>
					<td><a class="btn btn-link"
						onclick="theater(${dto.theater_num})" data-toggle="modal"
						data-target="#modalPage">${dto.theater_num}</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>

	<div class="modal fade" id="modalPage" role="dialog">
		<div class="modal-dialog" id="dialog"></div>
	</div>

</div>



