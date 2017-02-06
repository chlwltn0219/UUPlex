<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>   
<%@page import="java.util.Date"%>

<style>
.thead td{
	height:50px;
	background-color:#333;
	color:white;
	font-size: 20px;
	text-align: center;
	border:2px solid white;
}
.inside tbody {
	background-color:#F6F6F6;
}
tr{
	width:1140px;
}
.list{
	margin: 100px auto;
}
.option {
	margin : 10px;
}

.optionDta{
	height:40px;
	font-size: 18px;
	padding:5px;
}
.optionLine:hover{
	border:1px solid #5D5D5D;
}
.optionDta:hover{
	background-color:#4C4C4C;
	color:white;
	
}
.active{
	background-color:#4C4C4C;
	color:white;
}

.date *{
	display:block;
	text-align:center;
}
.date {
	padding: 20px;
}
.date a {
	margin : 20px;
}
.date div{
	margin-bottom: 10px;


}


</style>
<script type="text/javascript">
	$(function(){
		$("#title").click(function(){
			$("#title").addClass("active");
		});
	});
	
	
</script>
<div class="container">
	<div class="list">
		<div class="inside">
			<table>
				<tr class="thead">
					<td style="width:520px">영화</td>
					<td style="width:180px">날짜</td>
					<td style="width:900px">시간</td>
				</tr>
				<tbody>
				<tr>
					<td>
						<div class="option">
							
								<c:forEach var="dto" items="${dtos}">
									<div class="optionDta">
										<div class="optionLine" id="title">
									<img id="rate" src="${img}mpaa_rating/${dto.MPAARating}.png">
									&nbsp;${dto.title1}
										</div>
									</div>	
								</c:forEach>
						</div>
					</td>
					<td>
					<div class="date">
						<span><fmt:formatDate value="<%=new Date()%>" pattern="YYYY" /></span>
						<span style="font-size: 30px; margin-bottom: 15px;"><fmt:formatDate value="<%=new Date()%>" pattern="MM" /></span>
						
						<span class="glyphicon glyphicon-play" style="color:#B70000; float:left"></span>
						<div><fmt:formatDate value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000)%>" pattern="E dd" /></div>
						<div><fmt:formatDate value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 2)%>" pattern="E dd" /></div>
						<div><fmt:formatDate value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 3)%>" pattern="E dd" /></div>
						<div><fmt:formatDate value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 4)%>" pattern="E dd" /></div>
					
							
					</div>		
					</td>
					<td>내용</td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
	
</div>