<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

	<div class="panel panel-default">
			<div class="panel-heading">검색 리스트</div>
			<table class="panel-body table">
				<tbody>
				<c:if test="${fn:length(dtos) <= 0}">
					<tr>
						<td>
							<table style="width: 100%">
								<tr>
									<th><h1>선택한 조건의 강좌가 없습니다. 조건을 다시 선택해 주세요.</h1></th>
								</tr>
							</table>
						</td>
					</tr>
				</c:if>
				<c:if test="${fn:length(dtos) > 0}">
				<c:forEach items="${dtos}" var="c">
					<tr>
						<td>
							<table style="width: 100%">
								<tr>
									<th rowspan="5"><h3>${c.pname}<small> : ${c.subname} - ${c.pname} </small></h3></th>
									<th>정원</th>
									<td>${c.current_people} / ${c.limit} 명</td>
									<td rowspan="5">
										<c:if test="${c.current_people >= c.limit}">
											<button class="btn btn-default disabled"> 종료됨 </button>
										</c:if>
										<c:if test="${c.current_people < c.limit}">
											<button class="btn btn-default"> 신청하기 </button>
										</c:if>
										
									</td>
								</tr>
								<tr>
									<th>신청 기간</th>
									<td>${c.register_start} ~ ${c.register_end}</td>
								</tr>
								<tr>
									<th>강의 기간</th>
									<td>${c.start_date} ~ ${c.end_date}</td>
								</tr>
								<tr>
									<th>강의 요일</th>
									<td>
									<c:if test="${c.sun == 'Y'}">
										일 
									</c:if>
									<c:if test="${c.mon == 'Y'}">
										월 
									</c:if>
									<c:if test="${c.tue == 'Y'}">
										화 
									</c:if>
									<c:if test="${c.wed == 'Y'}">
										수 
									</c:if>
									<c:if test="${c.thu == 'Y'}">
										목
									</c:if>
									<c:if test="${c.fri == 'Y'}">
										금 
									</c:if>
									<c:if test="${c.sat == 'Y'}">
										토 
									</c:if>
									</td>
								</tr>
								<tr>
									<th>강의 시간</th>
									<td>${c.start_time} ~ ${c.end_time}</td>
								</tr>
							</table>
						</td>
					</tr>
				</c:forEach>
				</c:if>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5" align="center">
							<c:if test="${prev == true}">
								<ul class="pager"> 
									<li><a href="/uuplex/fitness/manage/program/list?page=${startPage-1}">&lt; prev</a></li>
								</ul>
							</c:if>
						
							<ul class="pagination">
								<c:forEach begin="${startPage}" end="${endPage}" 
										   var="page" varStatus="status">
									<c:if test="${status.current == nowPage}">
										<li class="active"><a>${page}</a></li>
									</c:if>
									<c:if test="${status.current != nowPage}">
										<li><a href="/uuplex/fitness/manage/program/list?page=${page}">${page}</a></li>
									</c:if>
								</c:forEach>
							</ul>
							
							<c:if test="${next == true}">
								<ul class="pager"> 
									<li><a href="/uuplex/fitness/manage/program/list?page=${endPage+1}">next &gt;</a></li>
								</ul>
							</c:if>
							
						</td>
					</tr>
				</tfoot>
			</table>
		</div>