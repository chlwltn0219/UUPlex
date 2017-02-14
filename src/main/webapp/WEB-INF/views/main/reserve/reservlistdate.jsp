<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table class="table table-condensed">
	 <c:if test="${log == '영화'}">
	 <tr>
	 	<th colspan="9" style="background-color:#f0f0f0">영화</th>
	 </tr>
	 <tr>
		<th>예약번호</th>
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
	  <tr>
		<th>${dto.reserve_num}</th>
		<th>${dto.memId}</th>
		<th>${dto.movie_num}</th>
		<th>${dto.theater_num}</th>		
		<th>${dto.schedule_num}</th>		
		<th>${dto.seat}</th>	
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reserve_date}" /></th>		
		<th>${dto.cnt}</th>		
		<th>${dto.price}</th>		
	  </tr>
	
	</c:forEach>
	</c:if>
	
	<c:if test="${log == '호텔'}">
	 <tr>
	 	<th colspan="9" style="background-color:#f0f0f0">호텔</th>
	 </tr>
	 <tr>
		<th>예약번호</th>
		<th>아이디</th>
		<th>방번호</th>
		<th>예약일</th>		
		<th>체크인</th>		
		<th>체크아웃</th>				
		<th>숙박기간</th>		
		<th>입실인원</th>		
		<th>결제금액</th>		
	  </tr>

	<c:forEach var="dto" items="${hdtos}">
	  <tr>
		<th>${dto.reservNum}</th>
		<th>${dto.memId}</th>
		<th>${dto.roomName}</th>
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reservDay}" /></th>		
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.checkIn}" /></th>		
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.checkOut}" /></th>		
		<th>${dto.day}</th>		
		<th>${dto.capacity}</th>		
		<th>${dto.totCharge}</th>				
	  </tr>
	
	</c:forEach>
	</c:if>
	
	<c:if test="${log == '휘트니스'}">
	 <tr>
	 	<th colspan="7" style="background-color:#f0f0f0">휘트니스</th>
	 </tr>
	 
	 <tr>
		<th>등록번호</th>
		<th>아이디</th>
		<th>프로그램</th>
		<th>강사</th>
		<th>신청일</th>		
		<th>가격</th>			
		<th>환불</th>			
	  </tr>
	 
	 <c:forEach var="dto" items="${fdtos}">
	  <tr>
		<th>${dto.stid}</th>
		<th>${dto.memid}</th>
		<th>${dto.pname} - ${dto.subname}</th>
		<th>${dto.tname}</th>
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.reg_date}" /></th>		
		<th>${dto.price}</th>
		<th><button class="btn btn-default">환불</button></th>				
	  </tr>
	</c:forEach>
	</c:if>
	</table>
	
	
	<c:if test="${log == '전체'}">
	
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
		  <tr>
			<th>${dto.reserve_num}</th>
			<th>${dto.memId}</th>
			<th>${dto.movie_num}</th>
			<th>${dto.theater_num}</th>		
			<th>${dto.schedule_num}</th>		
			<th>${dto.seat}</th>	
			<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reserve_date}" /></th>		
			<th>${dto.cnt}</th>		
			<th>${dto.price}</th>		
		  </tr>
		</c:forEach>
	</table>
	
	
	<table class="table table-condensed">
	 <tr>
	 	<th colspan="9" style="background-color:#f0f0f0">호텔</th>
	 </tr>
	 <tr>
		<th>예약번호</th>
		<th>아이디</th>
		<th>방번호</th>
		<th>예약일</th>		
		<th>체크인</th>		
		<th>체크아웃</th>				
		<th>숙박기간</th>		
		<th>입실인원</th>		
		<th>결제금액</th>		
	  </tr>

	<c:forEach var="dto" items="${hdtos}">
	  <tr>
		<th>${dto.reservNum}</th>
		<th>${dto.memId}</th>
		<th>${dto.roomName}</th>
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reservDay}" /></th>		
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.checkIn}" /></th>		
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.checkOut}" /></th>		
		<th>${dto.day}</th>		
		<th>${dto.capacity}</th>		
		<th>${dto.totCharge}</th>				
	  </tr>
	</c:forEach>
	</table>
	
	
	<table class="table table-condensed">
	 <tr>
	 	<th colspan="7" style="background-color:#f0f0f0">휘트니스</th>
	 </tr>
	 
	 <tr>
		<th>등록번호</th>
		<th>아이디</th>
		<th>프로그램</th>
		<th>강사</th>
		<th>신청일</th>		
		<th>가격</th>			
		<th>환불</th>			
	  </tr>
	 
	 <c:forEach var="dto" items="${fdtos}">
	  <tr>
		<th>${dto.stid}</th>
		<th>${dto.memid}</th>
		<th>${dto.pname} - ${dto.subname}</th>
		<th>${dto.tname}</th>
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.reg_date}" /></th>		
		<th>${dto.price}</th>
		<th><button class="btn btn-default">환불</button></th>				
	  </tr>
	</c:forEach>
	</table>
	</c:if>
	
</body>
</html>