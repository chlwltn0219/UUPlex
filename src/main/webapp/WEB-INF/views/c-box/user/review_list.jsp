<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 리스트</title>
<style>
	.option{
		text-align:right;
		margin-bottom:6px; 
		font-size: 15px
	
	}

	.reviewId{
		float:left;
		margin-right:8px;
		margin-top: 6px;
		
		
	}
	.reviewContents{
		float:left;
		margin-right:8px;
		margin-top: 8px;
		
		
	}
	.like{
		background: white;
		border: 1px solid #E8D9FF;	
		width: 100px;
		height: 100px;	
		margin: 0px; 
		padding: 0px;
		text-align: center;
		
	
	}
	.like:hover{
		background: #E8D9FF;
		border: 1px solid #E8D9FF;
		width: 100px;
		height: 100px;	
		margin: 0px; 
		padding: 0px;
		text-align: center;
	
	}
	.chucheon{
		height:10px; 
		font-size: 17px; 
		margin-top:0; 
		padding-bottom:20px; 
		margin-bottom:20px;
	}
</style>
<script type="text/javascript" src="${resources}/c-box/js/review.js"></script>
</head>
<body>
	
	<table class="table">
		<div class="option"><a>최신순</a> | <a>추천순</a> | <a>평점순</a></div>
		<tbody>
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
						<%-- <c:if test="${id == sessionScope.memId}"> --%>
						<input type="button" class="btn btn-primary" value="글삭제"
							onclick="deleteReview(${dto.review_num});" >
						<%-- </c:if> --%>
						
					</div>
					</td>
					<td style="width:100px" rowspan="2">
						<div class="like" style="font-size: 30px;">
							<div style="margin-top:20px; margin-bottom:0">0</div>
							<a><div class="chucheon" >추천</div></a>
						</div>
					
					</td>
					
				</tr>
				<tr>	
					<td  style="font-size:20px;background-color:#E8D9FF">
						${dto.review_content}<br>
					</td>
					
				</tr>
				
			</c:forEach>
		</tbody>
		
		<tfoot>
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
							<li><a href="/uuplex/c-box/movie_detail?page=${endPage+1}">next &gt;</a></li>
						</ul>
					</c:if>
					
				</td>
			</tr>
		</tfoot>
	</table>
	
	
	
	
</body>
</html>