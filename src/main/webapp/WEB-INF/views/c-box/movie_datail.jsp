<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.moviedetail {
	width: 850px;
	padding: 40px;
}

.moviedetail td {
	text-align: left;
	font-size: 15px;
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
<link type="text/css" rel="stylesheet" href="/uuplex/resources/c-box/css/rating.css"> 

<div class="modal fade" id="movieDetail" role="dialog">
	<div class="modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">상세정보</h4>
			</div>
			<div class="modal-body">
				<div class="moviedetail">
					<table>
						<tr>
							<td rowspan="10"><img id="poster"
								src="${img}movie_poster/너의 권력은.jpg"></td>
							<th><img class="rate" src="${img}mpaa_rating/12.png">
								너의 권력은.</th>
						</tr>
						<tr>
							<td>your name.</td>
						</tr>
						<tr>
							<td>타입 :디지털</td>
						</tr>
						<tr>
							<td>개봉일 : 2074. 6. 9</td>
						</tr>
						<tr>
							<td>감독 : 아무개</td>
						</tr>
						<tr>
							<td>출연진 : 김땡땡, 박땡땡</td>
						</tr>
						<tr>
							<td>장르 : 판타지</td>
						</tr>
						<tr>
							<td>러닝타임 : 120분</td>
						</tr>
						<tr>
							<td>평점</td>
						</tr>
						<tr>
							<td><input type="button" class="btn btn-primary" value="수정하기" onclick="modifyMovie(${dto.movie_num})">
							<input type="button" class="btn btn-primary" value="삭제하기" onclick="deleteMovie(${dto.movie_num})"></td>
						</tr>

						<tr>
							<td colspan="2" class="tit">줄거리</td>
						</tr>

						<tr>
							<td colspan="2" class="con">비밀리에 제작된 위조 지폐 동판을 탈취하려는 내부 조직에
								의해 작전 중 아내와 동료들을 잃게 된 특수 정예부대 출신의 북한 형사 ‘림철령’(현빈). 동판을 찾아야만 하는
								북한은 남한으로 숨어든 조직의 리더 ‘차기성’(김주혁)을 잡기 위해 역사상 최초의 남북 공조수사를 요청하고, 그
								적임자로 철령을 서울에 파견한다. 한편, 북한의 속내가 의심스런 남한은 먼저 차기성을 잡기 위한 작전을 계획하고,
								정직 처분 중인 생계형 형사 ‘강진태’(유해진)에게 공조수사를 위장한 철령의 밀착 감시를 지시한다. 임무를 완수해야
								하는 철령과 임무를 막아야만 하는 진태. 그들에게 주어진 시간은 단 3일, 한 팀이 될 수 없는 남북 형사의 예측
								불가 공조수사가 시작된다!</td>
						</tr>
						<tr>
							<td colspan="2" class="tit">스틸컷 0 | 동영상 0</td>
						</tr>
						<tr>
							<td colspan="2" class="con"></td>
						</tr>
						<tr>
							<td colspan="2" class="tit"></td>
						</tr>
						<tr>
							<td colspan="2" class="tit"></td>
						</tr>
						
					</table>
					<br><br><br><br>
					
					<form class="form-inline" action="c-box/addReview" method="post" name="reviewform" >
						<%-- <input type="hidden" name="movie_num" value="${dto.movie_num}"> --%>
						<input type="hidden" name="movie_num" value=12>
						
						<table class="table">
							<tr><td colspan="2" style="font-size:20px">한줄평(0)</td>
							
								<td></td>
								<td>0/100</td>
							</tr>
							<tr>
								<th style="font-size:20px">memId</th>
								<%-- <th  class="tit">${sessionScope.memId }</th> --%>
								
								<td class="star-input">
									<span class="input">
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
								  	</span>
								  	<br>
								  	<output id="rating" for="star-input"><b>평점을 입력해주세요</b></output>						
								</td>
								<td><textarea name="review_content" placeholder ="로그인 후 이용가능한 서비스입니다." style="width:300px; height:80px" required></textarea></td>
								<td><input class=" btn btn-lg btn-info" type="submit" value="등록"></td>
							</tr>
							
						</table>
					</form>
					
					
				</div>

			</div>
			
			<script src="${resources}/js/jquery-1.11.3.min.js"></script>
			<script src="${resources}/js/star.js"></script>
		</div>
	</div>
</div>