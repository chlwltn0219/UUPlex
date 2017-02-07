<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

<div class="container" >
<div class="panel panel-default">
			<div class="panel-heading">검색 리스트</div>
			<table class="panel-body table">
				<thead>
					<tr>
						<th>프로그램</th>
						<th>상세정보</th>
						<th>프로그램 상세</th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${fn:length(dtos) <= 0}">
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
				<c:if test="${fn:length(dtos) > 0}">
				<c:forEach items="${dtos}" var="c">
					<tr>
						<td rowspan="5"><h3>${c.pname}<small> : ${c.subname} - ${c.pname} </small></h3></td>
						<td>
							<table style="width: 100%">
								<tr>
									<th>정원</th>
									<td>${c.current_people} / ${c.limit} 명</td>
								</tr>
								<tr>
									<th>신청 기간</th>
									<td>${fn:substring(c.register_start, 0, 10)} ~ ${fn:substring(c.register_end, 0, 10)}</td>
								</tr>
								<tr>
									<th>강의 기간</th>
									<td>${fn:substring(c.start_date, 0, 10)} ~ ${fn:substring(c.end_date, 0, 10)}</td>
								</tr>
								<tr>
									<th>강의 요일</th>
									<td>
									<c:if test="${c.sun == 'Y'}"><span class="label label-danger">일</span></c:if>
									<c:if test="${c.sun == 'N'}"><span class="label label-default">일</span>	</c:if>
									
									<c:if test="${c.mon == 'Y'}"><span class="label label-success">월</span></c:if>
									<c:if test="${c.mon == 'N'}"><span class="label label-default">월</span></c:if>
									
									
									<c:if test="${c.tue == 'Y'}"><span class="label label-success">화</span></c:if>
									<c:if test="${c.tue == 'N'}"><span class="label label-default">화</span></c:if>
									
									<c:if test="${c.wed == 'Y'}"><span class="label label-success">수</span></c:if>
									<c:if test="${c.wed == 'N'}"><span class="label label-default">수</span></c:if>

									<c:if test="${c.thu == 'Y'}"><span class="label label-success">목</span></c:if>
									<c:if test="${c.thu == 'N'}"><span class="label label-default">목</span></c:if>
									
									<c:if test="${c.fri == 'Y'}"><span class="label label-success">금</span></c:if>
									<c:if test="${c.fri == 'N'}"><span class="label label-default">금</span></c:if>
									
									<c:if test="${c.sat == 'Y'}"><span class="label label-primary">토</span></c:if>
									<c:if test="${c.sat == 'N'}"><span class="label label-default">토</span></c:if>
									</td>
								</tr>
								<tr>
									<th>강의 시간</th>
									<td>${fn:substring(c.start_time, 11, 16)} ~ ${fn:substring(c.end_time, 11, 16)}</td>
								</tr>
							</table>
						</td>
					</tr>
				</c:forEach>
				</c:if>
				</tbody>
			</table>
		</div>
		</div>