<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

<div class="container" >
<div class="panel panel-default">
	<c:forEach var="s" items="${sports}">
			<div class="panel-heading">${s.sname}</div>
			<table class="panel-body table">
				<thead>
					<tr>
						<th>프로그램</th>
						<th>상세정보</th>
						<th>프로그램 상세</th>
					</tr>
				</thead>
				<c:if test="${fn:length(dto) <= 0}">
					<tr>
						<td colspan="3">
							<table style="width: 100%">
								<tr>
									<th><h1>개설된 강좌가 없습니다.</h1></th>
								</tr>
							</table>
						</td>
					</tr>
				</c:if>
				<c:if test="${fn:length(dto) > 0}">
				<c:forEach items="${dto}" var="p">
					<tr>
						<td rowspan="3"><h3>이름뭐야씨발</h3></td>
					</tr>
				</c:forEach>
				</c:if>
			</table>
			</c:forEach>
		</div>
		</div>