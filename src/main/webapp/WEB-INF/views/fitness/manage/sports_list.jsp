<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/fitness/js/sports_manager.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>종목 목록</title>
</head>
<body>
<div class="container">
	<table class="table table-hover">
		<thead>
			<tr>
				<td colspan="3">
					<form action="" method="get" onsubmit=""
						 class="form-inline" name="searchForm">
						<div class="input-group">
<!-- 							<select class="form-control"> -->
<!-- 								<option>코드</option> -->
<!-- 								<option>종목 명</option> -->
<!-- 							</select> -->
							<input class="form-control" type="search" placeholder="검색">
							<div class="input-group-btn">
								<button type="submit" class="btn btn-info">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
						<div class="form-group pull-right">
							<input type="button" class="btn btn-primary" 
								value="등록하기" onclick="sportsInput()"
								data-toggle="modal" data-target="#modalPage">
						</div>
					</form>
				</td>
			</tr>
			<tr>
				<th>종목 코드</th>
				<th>종목 명</th>
				<th>운영 상태</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty dtos}">
			<c:forEach items="${dtos}" var="dto">
			<c:if test="${dto.activated == 'Y'}">
			<tr class="success">
			</c:if>
			<c:if test="${dto.activated == 'N'}">
			<tr>
			</c:if>
				<td>${dto.sid}</td>
				<td><a class="btn btn-link" onclick="sportsDetails(${dto.sid})"
						data-toggle="modal" data-target="#modalPage">
					${dto.sname}</a>
				</td>
				<td>
					<c:if test="${dto.activated == 'Y'}">
						운영중
					</c:if>
					<c:if test="${dto.activated == 'N'}">
						비 운영중
					</c:if>
				</td>
			</tr>
			</c:forEach>
			</c:if>
			<c:if test="${empty dtos}">
					<td colspan="2"><h4>데이터가 없습니다!</h4></td>
			</c:if>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3" align="center">
					<c:if test="${prev == true}">
						<ul class="pager"> 
							<li><a href="/uuplex/fitness/manage/sports/list?page=${startPage-1}">&lt; prev</a></li>
						</ul>
					</c:if>
				
					<ul class="pagination">
						<c:forEach begin="${startPage}" end="${endPage}" 
								   var="page" varStatus="status">
							<c:if test="${status.current == nowPage}">
								<li class="active"><a href="/uuplex/fitness/manage/sports/list?page=${page}">${page}</a></li>
							</c:if>
							<c:if test="${status.current != nowPage}">
								<li><a href="">${page}</a></li>
							</c:if>
						</c:forEach>
					</ul>
					
					<c:if test="${next == true}">
						<ul class="pager"> 
							<li><a href="/uuplex/fitness/manage/sports/list?page=${endPage+1}">next &gt;</a></li>
						</ul>
					</c:if>
					
				</td>
			</tr>
		</tfoot>
	</table>
	
	<div class="modal fade" id="modalPage" role="dialog">
	   	<div class="modal-dialog" id="dialog"></div>
	</div>
<%-- 	<%@ include file="sports_input.jsp" %> --%>
<%-- 	<%@ include file="sports_detail.jsp" %> --%>
</div>	
</body>
</html>
