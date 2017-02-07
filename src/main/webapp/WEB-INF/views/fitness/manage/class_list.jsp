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
<title>강의 목록</title>
</head>
<body>
	<c:set var="now" value="<%= new java.util.Date() %>"/>
	<h3>시간표 관리</h3>
	<table class="table table-hover">
		<thead>
			<tr>
				<td colspan="2">
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
				<td>
				<!-- 등록 -->
					<div class="form-group pull-right">
						<input type="button" class="btn btn-primary" 
							value="등록하기" onclick="classInput()"
							data-toggle="modal" data-target="#modalPage">
					</div>
				</td>
			</tr>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th colspan="2">정보</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${dtos}" var="dto">
			
				<c:if test="${now < dto.register_start || (now > dto.register_end && now < dto.start_date)}">
				<tr class="active">
				</c:if>
				<c:if test="${now >= dto.register_start && now <= dto.register_end}">
				<tr class="info">
				</c:if>
				<c:if test="${now >= dto.start_date && now <= dto.end_date}">
				<tr class="success">
				</c:if>
				<c:if test="${now > dto.end_date}">
				<tr>
				</c:if>
					<td>${dto.cid}</td>
					<td>
						<h4>
							<a class="btn btn-link" onclick="classDetail(${dto.cid})"
							data-toggle="modal" data-target="#modalPage">${dto.pname} <small>${dto.subname}</small></a>
						</h4>
					</td>
					<td>
						<table class="inner-table">
							<tr>
								<th>종목</th>
								<td>${dto.sname}</td>
							</tr>
							<tr>
								<th>강사</th>
								<td>${dto.tname}</td>
							</tr>
							<tr>
								<th>신청 기간</th>
								<td>
									${fn:substring(dto.register_start,0,10)}<br> 
									~ ${fn:substring(dto.register_end,0,10)} 
								<c:if test="${now < dto.register_start}">(예정)</c:if>
								<c:if test="${now >= dto.register_start && now <= dto.register_end}">(진행중)	</c:if>
								<c:if test="${now > dto.register_end}">(종료)</c:if>
							</tr>
							<tr>
								<th>수업 기간</th>
								
								<td>
									${fn:substring(dto.start_date,0,10)}<br> 
									~ ${fn:substring(dto.end_date,0,10)} 
									<c:if test="${now < dto.start_date}">(예정)</c:if>
									<c:if test="${now >= dto.start_date && now <= dto.end_date}">(진행중)</c:if>
									<c:if test="${now > dto.end_date}">(종료)</c:if>
								</td>
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
