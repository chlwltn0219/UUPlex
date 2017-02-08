<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

	<c:set var="now" value="<%= new java.util.Date()%>"/>
	<div class="panel panel-default">
			<div class="panel-heading">검색 리스트</div>
			<table class="panel-body table">
				<thead>
					<tr>
						<th>프로그램</th>
						<th>정보</th>
						<th>신청하기</th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${fn:length(dtos) <= 0}">
					<tr>
						<td colspan="3">
							<table style="width: 100%">
								<tr>
									<th><h1>선택한 조건에 해당하는 강좌가 없습니다. 조건을 다시 선택해 주세요.</h1></th>
								</tr>
							</table>
						</td>
					</tr>
				</c:if>
				<c:if test="${fn:length(dtos) > 0}">
				<c:forEach items="${dtos}" var="c">
					<tr>
						<td><h3>${c.pname}<small> : ${c.subname} - ${c.pname} </small></h3></td>
						<td>
							<table style="width: 100%">
								<tr>
									<th>정원</th>
									<td>${c.current_people} / ${c.limit} 명</td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd ">
									<th>가격</th>
									<td>${c.price} 원</td>
								</tr>
								<tr>
									<th>신청 기간</th>
									<td>
										${fn:substring(c.register_start, 0, 10)} ~ ${fn:substring(c.register_end, 0, 10)}
										<c:if test="${now < c.register_start}"><span class="label label-warning">예정</span></c:if>
										<c:if test="${now >= c.register_start && now <= c.register_end}"><span class="label label-success">진행중</span></c:if>
										<c:if test="${now > c.register_end}"><span class="label label-danger">종료</span></c:if>
									</td>
								</tr>
								<tr>
									<th>강의 기간</th>
									<td>
										${fn:substring(c.start_date, 0, 10)} ~ ${fn:substring(c.end_date, 0, 10)}
										<c:if test="${now < c.start_date}"><span class="label label-warning">예정</span></c:if>
										<c:if test="${now >= c.start_date && now <= c.end_date}"><span class="label label-success">진행중</span></c:if>
										<c:if test="${now > c.end_date}"><span class="label label-danger">종료</span></c:if>
									</td>
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
						<td>
							<c:if test="${c.register_start > now}">
								<button class="btn btn-warning disabled"> 신청 대기 </button>
							</c:if>
							<c:if test="${c.current_people < c.limit && c.register_start <= now && c.register_end >= now }">
								<button class="btn btn-success"  
									data-toggle="modal" data-target="#modalPage"
									onclick="reserveForm(${c.cid})"> 신청하기 </button>
							</c:if>
							<c:if test="${c.current_people >= c.limit || c.register_end < now}">
								<button class="btn btn-danger disabled"> 종료됨 </button>
							</c:if>
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
									<li><a onclick="classList(${pid}, ${startPage-1})">&lt; prev</a></li>
								</ul>
							</c:if>
						
							<ul class="pagination">
								<c:forEach begin="${startPage}" end="${endPage}" 
										   var="page" varStatus="status">
									<c:if test="${status.current == nowPage}">
										<li class="active"><a>${page}</a></li>
									</c:if>
									<c:if test="${status.current != nowPage}">
										<li><a onclick="classList(${pid}, ${page})">${page}</a></li>
									</c:if>
								</c:forEach>
							</ul>
							
							<c:if test="${next == true}">
								<ul class="pager"> 
									<li><a onclick="classList(${pid}, ${endPage+1})">next &gt;</a></li>
								</ul>
							</c:if>
							
						</td>
					</tr>
				</tfoot>
			</table>
		</div>