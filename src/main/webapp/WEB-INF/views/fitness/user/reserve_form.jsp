<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>프로그램 예약</title>
<style type="text/css">
	div.select div.panel-body {
		height: 200px;
		overflow-y: auto; 
	}
	
	.panel-heading {
		background-color:black !important;
		color:white !important;
	} 
	
	.title {
		margin-bottom: 1em;
	}
	
</style>
</head>
<body>

<div class="container">
	
	<img class="title" src="${resources}/fitness/img/register.png">

	<div class="row select">
		<div class="col-sm-6" id="sports">
			<div class="panel panel-default">
				<div class="panel-heading">종목</div>
				<div class="panel-body list-group">
					<c:forEach items="${sports}" var="s">
					<a class="list-group-item">	${s.sname} <input type="hidden" value="${s.sid}"></a>
					</c:forEach>
				</div>
			</div>
		</div>
				
		<div class="col-sm-6" id="program">
			<div class="panel panel-default">
				<div class="panel-heading">프로그램</div>
				<div class="panel-body list-group">
					선택된 종목이 없습니다.
				</div>
			</div>
		</div>
		
<!-- 		<div class="col-sm-2" id="day"> -->
<!-- 			<div class="panel panel-default"> -->
<!-- 				<div class="panel-heading">요일</div> -->
<!-- 				<div class="panel-body list-group"> -->
<!-- 					<a class="list-group-item">	전체	<input type="hidden" value="all"></a> -->
<!-- 					<a class="list-group-item">	주중	<input type="hidden" value="weekday"></a> -->
<!-- 					<a class="list-group-item">	주말	<input type="hidden" value="weekend"></a> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		
<!-- 		<div class="col-sm-2" id="time"> -->
<!-- 			<div class="panel panel-default"> -->
<!-- 				<div class="panel-heading">시간</div> -->
<!-- 				<div class="panel-body list-group"> -->
<!-- 					<a class="list-group-item">	전체	<input type="hidden" value="all"></a> -->
<!-- 					<a class="list-group-item">	오전	<input type="hidden" value="forenoon"></a> -->
<!-- 					<a class="list-group-item">	오후	<input type="hidden" value="afternoon"></a> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

	</div>
	
	<hr>
	
	<div id="seaechList">
		<div class="panel panel-default">
			<div class="panel-heading">검색 리스트</div>
			<table class="panel-body table">
				<tbody>
					<tr>
						<td>
							<table style="width: 100%">
								<tr>
									<th><h4 align="center">선택한 조건의 강좌가 없습니다. </h4></th>
								</tr>
							</table>
						</td>
					</tr>
				</tbody>
				<tfoot>
					
				</tfoot>
			</table>
		</div>
	</div>
	
</div>

<div class="modal fade" id="modalPage" role="dialog">
	<div class="modal-dialog" id="dialog"></div>
</div>

<script type="text/javascript" src="${resources}/fitness/js/reserve_program.js"></script>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
</body>
</html>