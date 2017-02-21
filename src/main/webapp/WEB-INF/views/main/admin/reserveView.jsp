<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
<html>
<head>

<style>
	.reserve {
		margin: 20px;
	}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2 align="center">${memId} 님의 예약현황 </h2> <br>
	
	<div class="reserve">
	
	<table class="table table-condensed">
		 <tr>
		 	<th colspan="9" style="background-color:#f0f0f0">영화</th>
		 </tr>
		 <tr>
			<th>예매번호</th>
			<th>아이디</th>
			<th>영화번호</th>
			<th>상영관번호</th>		
			<th>상영관일정번호</th>		
			<th>예매좌석</th>		
			<th>예매일</th>		
			<th>수량</th>		
			<th>결제금액</th>		
		  </tr>
	
		<c:forEach var="dto" items="${mdtos}">
		  <tr class="bg-warning">
			<th>${dto.reserve_num}</th>
			<th>${dto.memId}</th>
			<th>${dto.movie_num}</th>
			<th>${dto.theater_num}</th>		
			<th>${dto.schedule_num}</th>		
			<th>${dto.seat_num}</th>	
			<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reserve_date}" /></th>		
			<th>${dto.cnt}</th>		
			<th><fmt:formatNumber value="${dto.price}" pattern="#,###.##"/>원</th>		
		  </tr>
		</c:forEach>
		
		
		
		<tr>
		 	<th colspan="9"></th>
		</tr>
		
	</table>
	
	
	<table class="table table-condensed">
	 <tr>
	 	<th colspan="9" style="background-color:#f0f0f0">호텔</th>
	 </tr>
	 <tr>
		<th>예약번호</th>
		<th>아이디</th>
		<th>객실명</th>
		<th>예약일</th>		
		<th>체크인</th>		
		<th>체크아웃</th>				
		<th>숙박기간</th>		
		<th>입실인원</th>		
		<th>결제금액</th>		
	  </tr>

	<c:forEach var="dto" items="${hdtos}">
	  <tr class="bg-success">
		<th>${dto.reservNum}</th>
		<th>${dto.memId}</th>
		<th>${dto.roomName}</th>
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reservDay}" /></th>		
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.checkIn}" /></th>		
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.checkOut}" /></th>		
		<th>${dto.day}</th>		
		<th>${dto.capacity}</th>		
		<th><fmt:formatNumber value="${dto.totCharge}" pattern="#,###.##"/>원</th>				
	  </tr>
	</c:forEach>
	
		<tr>
		 	<th colspan="9"></th>
		</tr>
	</table>
	
	<table class="table table-condensed">
	 <tr>
	 	<th colspan="6" style="background-color:#f0f0f0">휘트니스</th>
	 </tr>
	 
	 <tr>
		<th>등록번호</th>
		<th>아이디</th>
		<th>프로그램</th>
		<th>강사</th>
		<th>신청일</th>		
		<th>가격</th>			
		<!-- <th>환불</th> -->			
	  </tr>
	 
	 <c:forEach var="dto" items="${fdtos}">
	  <tr class="bg-info">
		<th>${dto.stid}</th>
		<th>${dto.memid}</th>
		<th>${dto.pname} - ${dto.subname}</th>
		<th>${dto.tname}</th>
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.reg_date}" /></th>		
		<th><fmt:formatNumber value="${dto.price}" pattern="#,###.##"/>원</th>		
		<!-- <th><button class="btn btn-default">환불</button></th> -->		
	  </tr>
	</c:forEach>
	
		<tr>
		 	<th colspan="9"></th>
		</tr>
	</table>
	
	<div align="center">
		<input type="button" class="btn btn-default" value="닫기" onclick="window.location.reload()">
	</div>
	
	</div>
	
</body>
</html>