<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<style>
.list {
	margin: 100px auto;
}

</style>

<div class="container">
	<div class="list">
		<h2>상영시간표</h2>
	
		<c:if test="${dtos!=null}">

			<c:forEach var="dto" items="${dtos}">
			
			
<<<<<<< HEAD
			</c:forEach>/
=======
			</c:forEach>
>>>>>>> origin/master
			
			
		</c:if>
			
		<c:if test="${dtos==null}">
			<h3>
				<center>상영스케줄이 아직 준비되지 않았습니다.</center>
			</h3>
		
		</c:if>	
			
				
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
</div>
