<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<style>
.list {
	margin: 30px auto 100px;
}	
.movieTable {
	margin:auto auto;
}	
.aa {
	float: left;
	position: relative;
}	
	
</style>

<div class="list">
	<c:if test="${dtos!=null}">
		<table class="movieTable">
			<tr>
				<c:forEach var="dto" items="${dtos}" varStatus="status">
					<td>
						<div class="aa">

							<table class="movie" style="border: 1px solid #EAEAEA;">
								<tr>
									<td colspan="2"><img src="/uuplexImg/c-box/${dto.poster}"
										width=></td>
								</tr>
								<tr class="sub">
									<th><img id="rate"
										src="${img}mpaa_rating/${dto.MPAARating}.png"></th>
									<td>${dto.title1}</td>
								</tr>
								<tr>
									<td colspan="2"><input type="button" value="상세정보"
										data-toggle="modal" data-target="#modalPage"
										onclick="movieDetail(${dto.movie_num})"> <input
										type="button" value="예매하기"></td>
								</tr>
							</table>
						</div>
					</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
	<c:if test="${dtos==null}">
		<table>
			<tr>
				<td>
					<h3>
						<center>영화가 아직 준비되지 않았습니다.</center>
					</h3>
				</td>
			</tr>
		</table>
	</c:if>

</div>