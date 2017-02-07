<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<%@page import="java.util.Date"%>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/schedule.js"></script>
<script src="${js}jquery-1.11.3.min.js"></script>

<script>
	$(function() {
		if($(".room").nextAll("#time").length<5){
			var $t=$("<td></td>");
			$(".room").parent().append($li);
		}
	});
</script>

<style>
th {
	background-color: #eeeeee;
	
}
.title{
	font-size: 14px;
	padding : 19px 0 19px 20px; 
	width: 180px;
}

.room{
	padding : 19px 20px 19px 0; 
	width: 120px;
	text-align: right;
}

.revDate{
	padding : 10px;
	font-size: 30px;
}

#time {
	font-size: 20px;
	width: 120px;
	text-align: center;
	transition : 0.3s;
}

#time:HOVER{
	background-color: #000000;
	color: #ffffff;
}

#time a{
text-decoration: none;
}
.container{
	padding-top: 100px;
}
.title, .room, #time{
	border-top: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
}
<<<<<<< HEAD
=======

.timetable{
	width: 780px;
	margin: 0 auto;
}
>>>>>>> origin/master
</style>

<div class="container">

	<c:if test="${dtos!=null}">
		<table class="timetable">
			<c:forEach items="${dtos}" var="dto" varStatus="status">
				<c:if test="${status.index==0 || dtos[status.index].title1!=dtos[status.index-1].title1}">
<<<<<<< HEAD
					<c:if test="${status.index==0 || dtos[status.index].theater_num!=dtos[status.index-1].theater_num}">
=======
>>>>>>> origin/master
						<tr>
							<th class="title"><img id="rate"
							src="${img}mpaa_rating/${dto.MPAARating}.png">&nbsp;&nbsp;${dto.title1}</th>
							<th class="room">${dto.theater_num}관</th>
							<td id="time"><a><fmt:formatDate value="${dto.showtime}"
								pattern="HH:mm" /></a></td>
<<<<<<< HEAD
					</c:if>
=======
>>>>>>> origin/master
				</c:if>
				
				
				<c:if test="${dtos[status.index].title1==dtos[status.index-1].title1}">
					<c:if test="${dtos[status.index].theater_num!=dtos[status.index-1].theater_num}">
						<tr>
<<<<<<< HEAD
							<th>&nbsp;</th>
							<th>${dto.theater_num}관</th>
=======
							<th class="title">&nbsp;</th>
							<th class="room">${dto.theater_num}관</th>
>>>>>>> origin/master
							<td id="time"><a><fmt:formatDate value="${dto.showtime}"
								pattern="HH:mm" /></a></td>
					</c:if>
				</c:if>
				

				<c:if test="${dtos[status.index].theater_num==dtos[status.index-1].theater_num && dtos[status.index].title1==dtos[status.index-1].title1}">
					<td id="time"><a><fmt:formatDate value="${dto.showtime}" pattern="HH:mm" /></a>
				</c:if>
				
			</c:forEach>
			<tr>
				<td colspan="6"></td>
			</tr>
		</table>
	</c:if>
	
	<c:if test="${dtos==null}">
		<h1>상영스케줄이 없습니다.</h1>
	</c:if>

	<div class="modal fade" id="modalPage" role="dialog">
		<div class="modal-dialog" id="dialog"></div>
	</div>
</div>

