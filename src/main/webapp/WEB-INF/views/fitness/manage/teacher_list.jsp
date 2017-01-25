<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/fitness/js/teacher_manager.js"></script>
<title>강사 리스트</title>
</head>
<body>

	<h3>강사 관리</h3>
	<table class="table table-hover">
		<thead>
			<tr>
				<td colspan="2">
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
					</form>
				</td>
				<td>
					<div class="form-group pull-right">
						<input type="button" class="btn btn-primary" 
							value="등록하기" onclick="teacherInput()" 
							data-toggle="modal" data-target="#modalPage">
					</div>
				</td>
			</tr>
			<tr>
				<th>강사 코드</th>
				<th>강사명</th>
				<th>재직 여부</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty dtos}">
			<c:forEach items="${dtos}" var="dto">
			<c:if test="${dto.activated == 'Y'}">
			<tr class="success">
			</c:if>
<%-- 			<c:if test="${dto.activated == 'N'}">
			<tr class="danger">
			</c:if> --%>

				<td>${dto.tid}</td>
				<td><a class="btn btn-link" 
									data-toggle="modal" data-target="#modalPage" onclick="teacherDetails(${dto.tid})">
									${dto.tname}</a></td>
				<td>
				<c:if test="${dto.activated=='Y'}"> 재직중</c:if>
				<c:if test="${dto.activated=='N'}"> 퇴사</c:if>
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
							<li><a href="/uuplex/fitness/manage/teacher/list?page=${startPage-1}">&lt;prev</a></li>						
						</ul>
					</c:if>  				
					<ul class="pagination">
					<c:forEach var="page" begin="${startPage}" end="${endPage}" varStatus="status">			
					<c:if test="${nowPage == status.current}">
					  <li class="active"><a href="/uuplex/fitness/manage/teacher/list?page=${page}">${page}</a></li>
					</c:if>  
					<c:if test="${nowPage != status.current}">
					  <li><a href="/uuplex/fitness/manage/teacher/list?page=${page}">${page}</a></li>
					</c:if>  
					</c:forEach>
					</ul>					
					<c:if test="${next == true}">
						<ul class="pager">
							<li><a href="/uuplex/fitness/manage/teacher/list?page=${endPage+1}">next&gt;</a></li>						
						</ul>
					</c:if>  					
				</td>
			</tr>
		
		</tfoot>
	</table>
	
	<div class="modal fade" id="modalPage" role="dialog">
		<div class="modal-dialog" id="dialog"></div>
	</div>
<%-- 	 	<%@ include file="teacher_input.jsp" %> 
 		<%@ include file="teacher_detail.jsp" %>  --%>
</body>
</html>