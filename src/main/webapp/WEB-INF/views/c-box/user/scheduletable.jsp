<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<%@page import="java.util.Date"%>
<h2>
			<%
				int date = 0;
				if (request.getParameter("date") != null) {
					date = Integer.parseInt(request.getParameter("date"));
					;
				}
			%>
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"
				onclick="date(${date-1});"></span>
			<fmt:formatDate
				value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * date)%>"
				pattern="MM.dd E" />
			<span class="glyphicon glyphicon-chevron-right"
				onclick="date(${date+1});"></span>
		</h2>

		<c:if test="${dtos!=null}">
			<table class="timetable">
				<c:forEach items="${dtos}" var="dto" varStatus="status">
					<c:if
						test="${status.index==0 || dtos[status.index].title1!=dtos[status.index-1].title1}">
						<tr>
							<th class="title"><img id="rate"
								src="${img}mpaa_rating/${dto.MPAARating}.png">&nbsp;&nbsp;${dto.title1}</th>
							<th class="room">${dto.theater_num}관</th>
							<td>
					</c:if>


					<c:if
						test="${dtos[status.index].title1==dtos[status.index-1].title1}">
						<c:if
							test="${dtos[status.index].theater_num!=dtos[status.index-1].theater_num}">
							<tr>
								<th class="title">&nbsp;</th>
								<th class="room">${dto.theater_num}관</th>
								<td>
						</c:if>
					</c:if>
					<div class="time" onclick="location.href='/uuplex/c-box/ticket?schedule_num=${dto.schedule_num}'">
						<p class="time_info ">
							<span class="type">
								<fmt:formatDate value="${dto.showtime}" var="showtime" pattern="H" />
								<c:if test="${showtime<11}">조조</c:if> <c:if test="${showtime>=23}">심야</c:if>
								<c:if test="${showtime<23 || showtime>0}">&nbsp;</c:if>
							</span>
							<span class="showtime">
								<fmt:formatDate value="${dto.showtime}" pattern="HH:mm" />
							</span>
							<span class="seat">${dto.seatcnt-dto.ed}/${dto.seatcnt}</span>
						</p>
					</div>
				</c:forEach>
			</table>
		</c:if>

		<c:if test="${fn:length(dtos) == 0}">
			<h1>상영스케줄이 없습니다.</h1>
		</c:if>