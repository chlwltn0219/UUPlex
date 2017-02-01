<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../setting.jsp"%>
<html>
<head>
<style>
.moviedetail,.reviewList {
	width: 850px;
	padding: 40px;
}

.moviedetail td {
	text-align: left;
	padding-left: 10px;
}

#poster {
	width: 250px;
}

.moviedetail th {
	text-align: left;
	padding-left: 10px;
	font-size: 30px;
}

.tit {
	font-size: 20px;
	padding-top: 40px;
}

.con {
	padding: 10px 0;
}
</style>

<link type="text/css" rel="stylesheet"
	href="/uuplex/resources/c-box/css/rating.css">
<script type="text/javascript" src="${resources}/c-box/js/movieinfo.js"></script>
</head>

<body>	
	
<div class="modal-content">
	<div class="modal-header">
		<button class="close" data-dismiss="modal">&times;</button>
		<h4 class="modal-title">상세정보</h4>
	</div>
	<div class="modal-body">
		<div class="moviedetail">
			<table>
				<tr>
					<td class="col-md-2" rowspan="10"><img id="poster" src="/uuplexImg/c-box/${dto.poster}"></td>
					<th><img class="rate" src="${img}mpaa_rating/${dto.MPAARating}.png">${dto.title1}
					
					
					
						<div class="form-group pull-right">

						<input type="button" class="btn btn-primary" value="수정하기"
							onclick="movieModify(${dto.movie_num});">
						</div>
						
					
					</th>
				</tr>
				<tr>
					<td>${dto.title2}</td>
				</tr>
				<tr>
					<td><b>타입 </b>:디지털</td>
				</tr>
				<tr>
					<td><b>개봉일</b> : ${dto.releaseDate}</td>
				</tr>
				<tr>
					<td><b>감독</b> : ${dto.director}</td>
				</tr>
				<tr>
					<td><b>출연진</b> : ${dto.starring}</td>
				</tr>
				<tr>
					<td><b>장르</b> : ${dto.genre}</td>
				</tr>
				<tr>
					<td><b>러닝타임</b> : ${dto.runTime}분</td>
				</tr>
				<tr>
					<td><b>평점</b></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td colspan="2" class="tit">줄거리</td>
				</tr>

				<tr>
					<td colspan="2" class="con">${dto.synopsis}</td>
				</tr>
				<tr>
					<td colspan="2" class="tit"><a>스틸컷 0</a> | <a style="font-weight: bold;">동영상 0</a></td>
				</tr>
				<tr>
					<td colspan="2" class="con"></td>
				</tr>
				<tr>
					<td colspan="2" class="tit">한줄평(<c:if test="${total == null}">0</c:if>
													<c:if test="${total != null}">${total}</c:if>)</td>
				</tr>
				<tr>
					<td colspan="2" class="con">
				</tr>
				</table>
					
						<form action="/uuplex/c-box/user/add_review" onsubmit="" method="post" name="reviewform">
							
							
							<input type="hidden" name="movie_num" value="${dto.movie_num}">
							<input type="hidden" name="memId" value="memId">
							
							<table class="table">
								<tr>
									<th>memId</th>
									<td class="star-input">
										<span class="input">
											<!-- <input type="radio" name="rating" value=1 id="p1"> -->
											<input type="radio" name="rating" value=1 id="p1">
												<label for="p1">괜히봤어요</label>
												<input type="radio" name="rating" value=2 id="p2">
												<label for="p2">기대하진 말아요</label>
												<input type="radio" name="rating" value=3 id="p3">
												<label for="p3">무난했어요</label>
												<input type="radio" name="rating" value=4 id="p4">
												<label for="p4">기대해도 좋아요!</label>
												<input type="radio" name="rating" value=5 id="p5">
												<label for="p5">정말 멋진 영화였어요!</label>
										</span><br>
										<output for="rating" id="outText">
<!-- 										<output for="rating"> -->
											평점을 입력해주세요
										</output>
									</td>
									<td><textarea placeholder="로그인 후 이용가능한 서비스입니다." style="width: 250px; height: 80px" name="review_content" required></textarea></td>
									<td><input class="btn" type="submit" value="등록"></td>
								</tr>

							</table>
						</form>
					
			
		</div>
		
		<!--  리뷰 리스트  -->
		<div class="reviewList">
			<jsp:include page="review_list.jsp"></jsp:include>
		</div>
		
		
	</div>
</div>

</body>
</html>
<script src="${js}jquery-1.11.3.min.js"></script>
<script src="${js}star.js"></script>
