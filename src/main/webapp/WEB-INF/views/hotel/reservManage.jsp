<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#content {
	width: 1200px;
	margin-top: 100px; 
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <c:if test="${memId == null}">
				<script type="text/javascript">
					alert("로그인 후에 이용하실 수 있습니다.");
					history.back();
				</script>
</c:if>
	<div class="container">
		<div id="content">
			<h3>예약내역 <small> (상세내역을 확인하시려면 객실명을 클릭하세요.)</small></h3><br><br>
			<form action="reservManagePro" method="post" name="reservManagePro">
				<table class="table table-hover" id="listTable">
					<tr>
						<th>예약번호</th>
						<th>예약일</th>
						<th>객실명</th>
						<th>체크인</th>
						<th>체크아웃</th>
						<th>입실인원</th>
						<th>성명(영문)</th>
						<th>결제금액</th>
					</tr>
					<c:forEach var="dto" items="${dtos}">
					<tr>
						<td>${dto.reservNum}
						<td>${dto.reservDay}</td>
						<td><a data-toggle="modal" class="btn btn-default" data-target="#modal" href="./reservDetail?reservNum=${dto.reservNum}">${dto.roomName}</a></td>
						<td>${dto.checkIn}</td>
						<td>${dto.checkOut}</td>
						<td>${dto.capacity}</td>
						<td>${dto.firstName} ${dto.lastName}</td>
						<td>${dto.totCharge}</td>
					</tr>
					</c:forEach>
				</table>
				
			<br> <br>
			<center>
				<input class="btn btn-default btn-lg" type="button" value="메인으로"
			onclick="location.href='/uuplex/hotel'">
			</center>
			
			<%@ include file="/admin_Modal/hotelModal.jsp" %>
			</form>
		</div>
	</div>
</body>
</html>