<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${resources}/c-box/js/review.js"></script>
</head>
<body>
	
	<table class="table">
		
		<tbody>
			
			<c:if test="${dtos!=null}">
			<c:forEach items="${dtos}" var="dto">
				<tr style="border-bottom: none">
					<c:set var="id" value="${dto.memId}"></c:set>
					<td>
						<div class="reviewId" style="font-size: 18px">
						${fn:substring(id, 0, fn:length(id)-2)}**</div>
						<div class="reviewContents" ><c:set var="date1" value="${dto.reg_date}"/>
							<c:set var="date2" value="${fn:substring(date1, 0, 10)}" />
							${date2}
						</div>
						<div class="reviewContents" ><c:if test="${dto.rating == 1}">
								<img title="괜히봤어요" src="${img}/etc/star_01.png">
							</c:if> 
							<c:if test="${dto.rating == 2}">
								<img title="기대하진 말아요" src="${img}/etc/star_02.png">
							</c:if> 
							<c:if test="${dto.rating == 3}">
								<img title="무난했어요" src="${img}/etc/star_03.png">
							</c:if> 
							<c:if test="${dto.rating == 4}">
								<img title="기대해도 좋아요!" src="${img}/etc/star_04.png">
							</c:if> 
							<c:if test="${dto.rating == 5}">
								<img title="정말 멋진 영화였어요!" src="${img}/etc/star_05.png">
							</c:if>
						</div>
						<div class="form-group pull-right">

						<!-- 본인이 작성한 글일 경우에만 삭제가능 -->
						<c:if test="${dto.memId == sessionScope.id}"> 
						<input type="button" class="btn btn-primary" value="글삭제"
							onclick="window.location='/uuplex/c-box/user/review/delete?review_num=${dto.review_num}'" >
						</c:if>
						
					</div>
					</td>
					<td style="width:100px" rowspan="2">
						<div class="like" style="font-size: 30px;">
							<div style="margin-top:20px; margin-bottom:0">0</div>
							<a class="chucheon">추천</a>
						</div>
					
					</td>
					
				</tr>
				<tr>	
					<td  style="font-size:20px; background-color:#eeeeee;">
						${dto.review_content}<br>
					</td>
					
				</tr>
				
			</c:forEach>
			</c:if>
		</tbody>
		
		<%-- <tfoot>
			<tr>
				<td colspan="3" align="center">
					<c:if test="${prev == true}">
						<ul class="pager"> 
							<li><a href="/uuplex/c-box/movie_detail?page=${startPage-1}">&lt; prev</a></li>
						</ul>
					</c:if>
				
					<ul class="pagination">
						<c:forEach begin="${startPage}" end="${endPage}" 
								   var="page" varStatus="status">
							<c:if test="${status.current == nowPage}">
								<li class="active"><a>${page}</a></li>
							</c:if>
							<c:if test="${status.current != nowPage}">
								<li><a href="/uuplex/c-box/movie_detail?page=${page}">${page}</a></li>
							</c:if>
						</c:forEach>
					</ul>
					
					<c:if test="${next == true}">
						<ul class="pager"> 
							<li><span onclick = "paging(${endPage+1})">next &gt;</span></li>
						</ul>
					</c:if>
					
				</td>
			</tr>
		</tfoot> --%>
	</table>
	

	
	
</body>
</html>