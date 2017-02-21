<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table class="table table-condensed">
	 
	 <tr>
		<th>예약번호</th>
		<th>아이디</th>
		<th>영화번호</th>
		<th>영화제목</th>
		<th>감독</th>
		<th>상영관번호</th>		
		<th>상영관일정번호</th>		
		<th>예매좌석</th>		
		<th>예매일</th>		
		<th>수량</th>		
		<th>결제금액</th>		
	  </tr>

	<c:forEach var="dto" items="${dtos}">
	  <tr>
		<th>${dto.reserve_num}</th>
		<th>${dto.memId}</th>
		<th>${dto.movie_num}</th>
		<th>${dto.title1}</th>
		<th>${dto.director}</th>
		<th>${dto.theater_num}</th>		
		<th>${dto.schedule_num}</th>		
		<th>${dto.seat_num}</th>	
		<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reserve_date}" /></th>		
		<th>${dto.cnt}</th>		
		<th>${dto.price}</th>	
		<c:set var="totSales" value="${totSales + dto.price}" />
	  </tr>
	
	</c:forEach>
	<tr><td  colspan="11">&nbsp;</td></tr>
	<tr >
		<th colspan="10" style="font-size: 20px;text-align: right; background-color:#eeeeee">매출 합계:</th>
		<th  style="font-size: 20px;background-color:#eeeeee"><fmt:formatNumber value="${totSales}" pattern="###,###,###.##"/>원</th>
	
	</tr>
	</table>
	
	
	
	
</body>
</html>