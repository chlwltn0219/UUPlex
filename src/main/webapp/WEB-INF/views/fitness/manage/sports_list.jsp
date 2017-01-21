<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>종목 목록</title>
</head>
<body>

	<table class="table">
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
						<div class="form-group pull-right">
							<input type="button" class="btn btn-primary" value="등록하기"
								data-toggle="modal" data-target="#sportInput">
						</div>
					</form>
				</td>
			</tr>
			<tr>
				<th>종목 코드</th>
				<th>종목 명</th>
			</tr>
		</thead>
		<c:if test="${not empty dtos}">
		<c:forEach items="${dtos}" var="dto">
		<tr>
			<td>${dto.sid}</td>
			<td>${dto.sname}</td>
		</tr>
		</c:forEach>
		</c:if>
		<c:if test="${empty dtos}">
				<td colspan="2"><h4>데이터가 없습니다!</h4></td>
		</c:if>
		<tfoot>
			<tr>
				<td colspan="2" align="center">
					<c:if test="${prev == true}">
						<ul class="pager"> 
							<li><a href="#">&lt; prev</a></li>
						</ul>
					</c:if>
				
					<ul class="pagination">
						<c:forEach begin="${startPage}" end="${startPage}" 
								   var="page" varStatus="status">
							<c:if test="${status.current == nowPage}">
								<li class="active"><a href="">${page}</a></li>
							</c:if>
							<c:if test="${status.current != nowPage}">
								<li><a href="">${page}</a></li>
							</c:if>
						</c:forEach>
					</ul>
					
					<c:if test="${next == true}">
						<ul class="pager"> 
							<li><a href="#">next &gt;</a></li>
						</ul>
					</c:if>
					
				</td>
			</tr>
		</tfoot>
	</table>
	
	<%@ include file="sports_input.jsp" %>
	<%@ include file="sports_modal.jsp" %>
		
</body>
</html>