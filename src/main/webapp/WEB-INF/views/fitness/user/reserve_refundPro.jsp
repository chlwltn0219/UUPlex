<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/fitness/js/class_manager.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	table.inner-table th {
		width: 35%;
		vertical-align: top; 
	}
</style>
<title>명세 목록</title>
</head>
<body>
	<h3>명세 목록</h3>
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<td colspan="3">
				<!-- 검색 -->
				<form action="" method="get" onsubmit=""
					 class="form-inline" name="searchForm">
					<div class="input-group">
<!-- 							<select class="form-control"> -->
<!-- 								<option>코드</option> -->
<!-- 								<option>종목 명</option> -->
<!-- 							</select> -->
						<input class="form-control" type="search" placeholder="검색 구현 필요">
						<div class="input-group-btn">
							<button type="submit" class="btn btn-info">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</tr>
			<tr>
				<th>#</th>
				<th>프로그램</th>
				<th colspan="2">정보</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${dtos}" var="dto">
				<tr>
					<td>${dto.stid}</td>
					<td>
						<h4>
							${dto.pname} <small> : ${dto.subname} - ${dto.tname} 강사</small></a>
						</h4>
					</td>
					<td>
						<table class="inner-table">
							<tr>
								<th>신청자</th>
								<td>${dto.memid}</td>
							</tr>
							<tr>
								<th>신청일</th>
								<td>${fn:substring(dto.reg_date, 0, 10)}</td>
							</tr>
							<tr>
								<th>가격</th>
								<td>${dto.price} 원</td>
							</tr>
						</table>
					</td>
				</tr>
			</c:forEach>
			<c:if test="${empty dtos}">
				<tr>
 					<td colspan="4"><h5>등록된 내용이 없습니다.</h5></td>
 				</tr>
			</c:if>
		</tbody>
		
		<tfoot>
			<tr>
				<td colspan="5" align="center">
					<c:if test="${prev == true}">
						<ul class="pager"> 
							<li><a href="/uuplex/fitness/manage/class/list?page=${startPage-1}">&lt; prev</a></li>
						</ul>
					</c:if>
				
					<ul class="pagination">
						<c:forEach begin="${startPage}" end="${endPage}" 
								   var="page" varStatus="status">
							<c:if test="${status.current == nowPage}">
								<li class="active"><a>${page}</a></li>
							</c:if>
							<c:if test="${status.current != nowPage}">
								<li><a href="/uuplex/fitness/manage/class/list?page=${page}">${page}</a></li>
							</c:if>
						</c:forEach>
					</ul>
					
					<c:if test="${next == true}">
						<ul class="pager"> 
							<li><a href="/uuplex/fitness/manage/class/list?page=${endPage+1}">next &gt;</a></li>
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
</body>
</html>
