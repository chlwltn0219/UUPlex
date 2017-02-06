<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>   

<style>
.thead td{
	height:50px;
	background:black;
	color:white;
	font-size: 20px;
	text-align: center;
	border:2px solid white;
}
tr{
	width:1140px;
}
.list{
	margin: 100px auto;
}
.option{
	margin : 10px;
}
.optionDta{
	margin : 10px;
}
</style>

<div class="container">
	<div class="list">
		<div class="inside">
			<table>
				<tr class="thead">
					<td style="width:700px">영화</td>
					<td style="width:200px">날짜</td>
					<td style="width:700px">시간</td>
				</tr>
				<tr>
					<td>
						<div class="option">
							<c:forEach var="dto" items="${dtos}">
								<div class="optionDta">
								<img id="rate" src="${img}mpaa_rating/${dto.MPAARating}.png">
								${dto.title1}
								</div>
							</c:forEach>
						</div>
					</td>
					<td>내용</td>
					<td>내용</td>
				</tr>
			
			</table>
		</div>
	</div>
	
</div>