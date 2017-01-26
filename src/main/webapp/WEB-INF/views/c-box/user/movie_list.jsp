<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/movieinfo.js"></script>
<style>
.list {
	margin: 100px auto;
}

.movie {
	width: 200px;
	height: 100%;
	margin: 11px;
	border: 1px solid #EAEAEA;
}

.movie td>input {
	color: #5A5A5A;
	padding: 10px 13px;
	margin: 10px 0 10px 10px;
	border: none;
	background-color: #EAEAEA;
}

.movie td>img {
	width: 100%;
}

.sub>td {
	padding: 10px 20px;
	font-size: 15px;
}

.sub>th {
	padding-left: 10px;
	width: 40px;
}

.aa {
	float: left;
}
</style>
<div class="container">
	<div class="list">
		<c:if test="${dtos!=null}">

			<c:forEach var="dto" items="${dtos}">
				<div class="aa">
					<table class="movie" style="border: 1px solid #EAEAEA;">
						<tr>
							<td colspan="2"><img src="/uuplexImg/c-box/${dto.poster}"></td>
						</tr>
						<tr class="sub">
							<th><img id="rate" src="${img}mpaa_rating/${dto.MPAARating}.png"></th>
							<td>${dto.title1}</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="button" value="상세정보" data-toggle="modal" data-target="#modalPage" onclick="movieDetail(${dto.movie_num})">
								<input type="button" value="예매하기">
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${dtos==null}">
			<h3>
				<center>영화가 아직 준비되지 않았습니다.</center>
			</h3>
		</c:if>

		<div class="modal fade" id="modalPage" role="dialog">
			<div class="modal-dialog modal-lg" id="dialog"></div>
		</div>
	</div>
</div>