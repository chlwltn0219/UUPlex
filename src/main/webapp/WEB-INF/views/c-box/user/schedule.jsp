<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<%@page import="java.util.Date"%>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/schedule.js"></script>
<script src="${js}jquery-1.11.3.min.js"></script>

<script>
	
	
	function date(date) {
		var url = "/uuplex/c-box/schedulechange";
		var method = "GET";
		var params = "date="+date;
		sendRequest(daterequest, url, method, params);
	}
	
	function daterequest() {

		var modal = document.getElementById("result");

		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
				modal.innerHTML = httpRequest.responseText;
			} else {
				modal.innerHTML = httpRequest.status + "에러 발생";
			}
		} else {
			modal.innerHTML = "상태 : " + httpRequest.readyState;
		}
	}
>>>>>>> 37668d98f581b6aa8419cd483f8d011720a9a566
</script>

<style>
th {
	background-color: #eeeeee;
}

.title {
	font-size: 15px;
	padding: 19px 0 30px 20px;
	width: 220px;
}

.room {
	padding: 19px 20px 30px 0;
	width: 120px;
	text-align: right;
}

.revDate {
	padding: 10px;
	font-size: 30px;
}

.time {
	width: 120px;
	height: 80px;
	display: inline-block;
	transition: 0.3s;
}

.time:HOVER {
	background-color: #000000;
	color: #ffffff;
}

.container {
	padding-top: 100px;
	padding-left: 100px;
	padding-right: 100px;
}

.title, .room, .timetable td {
	border-top: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
	height: 80px;
}

.timetable {
	width: 100%
}

.glyphicon {
	padding: 5px 7px 9px 7px;
	border-radius: 100%;
	background-color: #cccccc;
	color: #ffffff;
	cursor: pointer;
}

.time_info span {
	width: 120px;
	box-sizing : border-box;
	display : block;
	text-align: center;
}

.type {
	font-size: 10px;
}

.seat {
	font-size: 12px;
}

.showtime {
	font-size: 20px;
}
.hover_time{

}
</style>

<div class="container">

	<div id="result">

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
					<div class="time">
						<a>
							<span class="hover_time" style="display: none;">
								<fmt:formatDate value="${dto.showtime}" pattern="HH:mm" />~<fmt:formatDate value="${dto.showtime}" pattern="HH:mm" />
							</span>
						</a>

						<p class="time_info ">
							<span class="type">
								<fmt:formatDate value="${dto.showtime}" var="showtime" pattern="H" />
								<c:if test="${showtime<=10}">조조</c:if> <c:if test="${showtime>=23}">심야</c:if>
							</span>
							<span class="showtime">
								<fmt:formatDate value="${dto.showtime}" pattern="HH:mm" />
							</span>
							<span class="seat">166/${dto.seatcnt}</span>
						</p>
					</div>
				</c:forEach>
			</table>
		</c:if>

		<c:if test="${dtos==null}">
			<h1>상영스케줄이 없습니다.</h1>
		</c:if>
	</div>

</div>

