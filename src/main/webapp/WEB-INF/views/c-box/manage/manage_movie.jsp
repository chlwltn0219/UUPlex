<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>


<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/movieinfo.js"></script>


<div class="container">

	<h3>영화 관리</h3>

	<table class="table table-hover">
		<thead>
			<tr>
				<!-- <td colspan="3">
					검색
					<form action="" method="get" onsubmit="" class="form-inline"
						name="searchForm">
						<div class="input-group">
							<input class="form-control" type="search" placeholder="검색 구현 필요">
							<div class="input-group-btn">
								<button type="submit" class="btn btn-info">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
				<td style="text-align: center;"> -->
					<!-- 등록 -->
					<div class="form-group pull-left">

						<input type="button" class="btn btn-primary" value="등록하기"
							onclick="movieInput();" data-toggle="modal"
							data-target="#modalPage">
						
						

					</div>
				</td>
			</tr>
			<tr>
				<th>영화 번호</th>
				<th>영화 이름</th>
				<th>감독</th>
				<th>장르</th>
				<th>개봉일</th>
				<th>상영여부</th>
				<th>삭제</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${dtos}" var="dto">
				<tr>
					<td>${dto.movie_num}</td>
					<td><a class="btn btn-link"
						onclick="movieDetail(${dto.movie_num})" data-toggle="modal"
						data-target="#modalPage">${dto.title1}</a></td>
					<td>${dto.director}</td>
					<td>${dto.genre}</td>
					<td>${dto.releaseDate}</td>
					<td>${dto.status}</td>
					
					<td><input type="button" class="btn btn-danger" name="deleteButton" value="삭제"
							onclick="window.location='/uuplex/c-box/manage/movie/delete?movie_num=${dto.movie_num}'"></td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="7" align="center">
				<c:if test="${prev == true}">
						<ul class="pager">
							<li><a href="/uuplex/c-box/manage_movie?page=${startPage-1}">&lt;
									prev</a></li>
						</ul>
					</c:if>

					<ul class="pagination">
						<c:forEach begin="${startPage}" end="${endPage}" var="page"
							varStatus="status">
							<c:if test="${status.current == nowPage}">
								<li class="active"><a>${page}</a></li>
							</c:if>
							<c:if test="${status.current != nowPage}">
								<li><a href="/uuplex/c-box/manage_movie?page=${page}">${page}</a></li>
							</c:if>
						</c:forEach>
					</ul>
					<c:if test="${next == true}">
						<ul class="pager">
							<li><a href="/uuplex/c-box/manage_movie?page=${endPage+1}">next
									&gt;</a></li>
						</ul>
					</c:if>
				</td>
			</tr>
		</tfoot>

	</table>

	<div class="modal fade" id="modalPage" role="dialog">
		<div class="modal-dialog modal-lg" id="dialog"></div>
	</div>
	
	
	<%-- 	<%@ include file="sports_input.jsp" %> --%>
	<%-- 	<%@ include file="sports_detail.jsp" %> --%>

</div>