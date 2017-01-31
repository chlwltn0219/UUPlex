<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/schedule.js"></script>
<style>
.list {
	margin: 100px auto;
}

</style>

<div class="container">
	<div class="list">
		<h2>상영 일정 관리</h2>
		<table>
			<tr>
				<td style="width:500px">
					<!-- 검색 -->
					<form action="" method="get" onsubmit="" class="form-inline"
						name="searchForm">
						<div class="input-group">
							<!-- 							<select class="form-control"> -->
							<!-- 								<option>코드</option> -->
							<!-- 								<option>종목 명</option> -->
							<!-- 							</select> -->
							<input class="form-control" type="search" placeholder="검색 구현 필요">
							<div class="input-group-btn">
								<button type="submit" class="btn btn-info">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
				</td>	
				<td>
					<!-- 등록 -->
					<div class="form-group pull-right">

						<input type="button" class="btn btn-primary" value="등록하기"
							onclick="scheduleInput();" data-toggle="modal"
							data-target="#modalPage">
					</div>
				</td>
			</tr>
		</table>
		

	
	
		<table class="table">
			<tr>
				<th>더킹</th><td>1관</td><td><input type="datetime-local">17:55</td><td>20:35</td>
			</tr>
			<tr>
				<th>모아나</th><td>2관</td><td>17:55</td><td>20:35</td>
			</tr>	
			<tr>
				<th>라라랜드</th><td>3관</td><td>17:55</td><td>20:35</td>
			</tr>	
			
		</table>
	</div>
	
	<div class="modal fade" id="modalPage" role="dialog">
		<div class="modal-dialog modal-lg" id="dialog"></div>
	</div>
	
</div>

