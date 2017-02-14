<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<style>
a img{
	width: 15px;
	height: 15px;
}
a{
color: #000000;
text-decoration: none;
cursor: pointer;
}
a:HOVER {
color: #000000;
text-decoration: none;
cursor: pointer;
}
</style>

<c:if test="${fn:length(dtos) > 0}">
	<c:forEach items="${dtos}" var="dto" varStatus="status">
			<c:if test="${status.index==0 || dtos[status.index].theater_num!=dtos[status.index-1].theater_num}">
				<br><br>
				<p>${dto.theater_num}관 (${dto.seatcnt}석)</p>
			</c:if>
			<a style="width:110px; margin: 3px; display:inline-block;" onclick="location.href='/uuplex/c-box/ticket?schedule_num=${dto.schedule_num}'">
				<span style="border: 1px solid #aaaaaa; padding: 3px 0 0 3px;">
					<fmt:formatDate value="${dto.showtime}" pattern="HH:mm" />
					</span>
					<span>
					&nbsp;${dto.seatcnt-dto.ed}석
					<fmt:formatDate value="${dto.showtime}" var="showtime" pattern="H" />
					<c:if test="${showtime<11}"><img src="${img}etc/sun.png"></c:if>
					<c:if test="${showtime>=23}"><img src="${img}etc/moon.png"></c:if>
					<c:if test="${showtime<23 && showtime>=11}"></c:if></span>
			</a>
		</c:forEach>
</c:if>

<c:if test="${fn:length(dtos) == 0}">
	<h1>상영스케줄이 없습니다.</h1>
</c:if>